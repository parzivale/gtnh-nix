#!/usr/bin/env python3
"""
Normalize and compare config files (Forge cfg, HOCON, INI, JSON, XML, Properties).

Compares configs by parsing both into ASTs and comparing them structurally.
"""

import os
import re
import sys
from pathlib import Path

# Support both development (scripts.parsers) and Nix store (parsers) contexts
_scripts_dir = Path(__file__).parent
if str(_scripts_dir) not in sys.path:
    sys.path.insert(0, str(_scripts_dir))

from parsers import detect_format, KNOWN_HOCON_PATHS, get_parser
from parsers.ast import Entry, List, Section, ConfigAST, ValueType


def normalize_number(s: str) -> str:
    """Normalize a number string (handle scientific notation, trailing zeros)."""
    try:
        f = float(s)
        return f"{f:.15g}"
    except ValueError:
        return s


def normalize_bool(value: str) -> str:
    """Normalize a boolean value (handles 0/1/true/false)."""
    value = value.strip().lower()
    if value in ('true', '1'):
        return 'true'
    if value in ('false', '0'):
        return 'false'
    return value


def normalize_string(value: str) -> str:
    """Normalize a string value."""
    # Replace curly/smart quotes with straight quotes
    value = value.replace('"', '"').replace('"', '"')
    value = value.replace(''', "'").replace(''', "'")
    # Normalize whitespace
    value = re.sub(r'[\t\r\n\xa0]+', ' ', value)
    value = re.sub(r' +', ' ', value)
    return value.strip()


def normalize_value(value: str, vtype: ValueType) -> str:
    """Normalize a value based on its type."""
    value = normalize_string(value)
    if vtype == ValueType.BOOL:
        return normalize_bool(value)
    if vtype in (ValueType.INT, ValueType.FLOAT):
        return normalize_number(value)
    return value


def normalize_key(key: str) -> str:
    """Normalize a key/path component."""
    key = normalize_string(key)
    # Strip surrounding quotes (Forge config keys may be quoted)
    while key.startswith('"') and key.endswith('"') and len(key) > 1:
        key = key[1:-1]
    return key


def ast_to_dict(ast: ConfigAST) -> dict:
    """Convert AST to a normalized dictionary for comparison."""
    return nodes_to_dict(ast.nodes)


def nodes_to_dict(nodes: list) -> dict:
    """Convert list of nodes to normalized dictionary."""
    result = {}
    for node in nodes:
        if isinstance(node, Entry):
            key = normalize_key(node.key)
            if not key:  # Skip empty keys
                continue
            value = normalize_value(node.value, node.type)
            result[key] = ('entry', node.type.value, value)
        elif isinstance(node, List):
            key = normalize_key(node.key)
            if not key:  # Skip empty keys
                continue
            if not node.values:  # Skip empty lists (renderer omits them)
                continue
            values = tuple(sorted(normalize_value(v, node.type) for v in node.values))
            result[key] = ('list', node.type.value, values)
        elif isinstance(node, Section):
            key = normalize_key(node.name)
            if not key:  # Skip empty keys
                continue
            children = nodes_to_dict(node.children)
            if children:  # Only include non-empty sections
                result[key] = ('section', children)
    return result


def dict_diff(d1: dict, d2: dict, path: str = '') -> list[str]:
    """Find differences between two normalized dictionaries."""
    diffs = []

    all_keys = set(d1.keys()) | set(d2.keys())

    for key in sorted(all_keys):
        current_path = f"{path}.{key}" if path else key

        if key not in d1:
            diffs.append(f"+ {current_path}: {format_value(d2[key])}")
        elif key not in d2:
            diffs.append(f"- {current_path}: {format_value(d1[key])}")
        elif d1[key] != d2[key]:
            v1, v2 = d1[key], d2[key]
            if v1[0] == 'section' and v2[0] == 'section':
                # Recurse into sections
                diffs.extend(dict_diff(v1[1], v2[1], current_path))
            else:
                diffs.append(f"- {current_path}: {format_value(v1)}")
                diffs.append(f"+ {current_path}: {format_value(v2)}")

    return diffs


def format_value(v: tuple) -> str:
    """Format a value tuple for display."""
    if v[0] == 'entry':
        return f"{v[1]}:{v[2]}"
    elif v[0] == 'list':
        return f"{v[1]}:<{','.join(v[2])}>"
    elif v[0] == 'section':
        return f"{{...}}"
    return str(v)


def detect_file_type(filepath: str) -> str:
    """Detect config file type based on filename and content."""
    name = os.path.basename(filepath)
    path = Path(filepath)

    # Read content for detection
    try:
        text = path.read_text(errors='replace')
    except Exception:
        return 'forge'

    # Handle Nix store hash prefix (e.g., "abc123-OpenComputers.cfg")
    if name in KNOWN_HOCON_PATHS or any(name.endswith('-' + h) for h in KNOWN_HOCON_PATHS):
        return 'hocon'

    return detect_format(path, text)


def parse_config_file(filepath: str) -> dict:
    """Parse a config file and return normalized dict."""
    path = Path(filepath)
    text = path.read_text(errors='replace')
    format_name = detect_file_type(filepath)
    parser = get_parser(format_name)
    ast = parser.parse(text)
    return ast_to_dict(ast)


def main():
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} <original> <rendered>", file=sys.stderr)
        sys.exit(1)

    original_path = sys.argv[1]
    rendered_path = sys.argv[2]

    original_dict = parse_config_file(original_path)
    rendered_dict = parse_config_file(rendered_path)

    if original_dict != rendered_dict:
        diffs = dict_diff(original_dict, rendered_dict)

        print("MISMATCH:")
        print()
        for diff in diffs:
            print(f"  {diff}")

        sys.exit(1)


if __name__ == '__main__':
    main()
