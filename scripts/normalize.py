#!/usr/bin/env python3
"""
Normalize and compare config files (Forge cfg, HOCON, INI, JSON, XML, Properties).

Uses the parsers package to parse configs into a common AST, then normalizes
values for comparison between original and rendered configs.
"""

import os
import re
import sys
from pathlib import Path

# Support both development (scripts.parsers) and Nix store (parsers) contexts
_scripts_dir = Path(__file__).parent
if str(_scripts_dir) not in sys.path:
    sys.path.insert(0, str(_scripts_dir))

from parsers import parse_config, detect_format, ConfigParser, KNOWN_HOCON_PATHS
from parsers.ast import Entry, List, Section, ConfigAST


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


def normalize_value(value: str) -> str:
    """Normalize a config value."""
    value = value.strip()
    if re.match(r'^-?[\d.]+(?:[eE][+-]?\d+)?$', value):
        return normalize_number(value)
    return value


def flatten_ast(ast: ConfigAST) -> list[tuple[str, str, str | list[str]]]:
    """Flatten AST to list of (path, type_prefix, value) tuples."""
    entries = []
    _flatten_nodes(ast.nodes, [], entries)
    return entries


def _flatten_nodes(nodes, path: list[str], entries: list):
    """Recursively flatten nodes."""
    for node in nodes:
        if isinstance(node, Entry):
            full_path = '.'.join(path + [node.key])
            type_prefix = f'{node.type.value}:'
            entries.append((full_path, type_prefix, node.value))
        elif isinstance(node, List):
            full_path = '.'.join(path + [node.key])
            type_prefix = f'{node.type.value}:'
            entries.append((full_path, type_prefix, node.values))
        elif isinstance(node, Section):
            _flatten_nodes(node.children, path + [node.name], entries)


def format_entries(entries: list[tuple[str, str, str | list[str]]]) -> str:
    """Format entries for comparison output."""
    # Deduplicate by path, keeping the last occurrence (Forge behavior)
    seen = {}
    for entry in entries:
        path = entry[0]
        seen[path] = entry

    lines = []
    for entry in sorted(seen.values(), key=lambda e: e[0]):
        path, type_prefix, value = entry
        if isinstance(value, list):
            # Array - normalize values
            normalized = [normalize_value(v) for v in value]
            if type_prefix == 'B:':
                normalized = [normalize_bool(v) for v in normalized]
            lines.append(f"{path}={type_prefix}<{','.join(sorted(set(normalized)))}>")
        else:
            # Scalar - normalize value
            normalized = normalize_value(value)
            if type_prefix == 'B:':
                normalized = normalize_bool(normalized)
            lines.append(f"{path}={type_prefix}{normalized}")
    return '\n'.join(lines)


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

    # Use standard detection (without config_root since we don't have it)
    return detect_format(path, text)


def parse_config_file(filepath: str) -> list[tuple[str, str, str | list[str]]]:
    """Parse a config file and return flattened entries."""
    path = Path(filepath)
    text = path.read_text(errors='replace')

    # Detect format with special handling for Nix store paths
    format_name = detect_file_type(filepath)

    # Get appropriate parser
    from parsers import get_parser
    parser = get_parser(format_name)
    ast = parser.parse(text)

    return flatten_ast(ast)


def main():
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} <original> <rendered>", file=sys.stderr)
        sys.exit(1)

    original_path = sys.argv[1]
    rendered_path = sys.argv[2]

    original_entries = parse_config_file(original_path)
    rendered_entries = parse_config_file(rendered_path)

    original_formatted = format_entries(original_entries)
    rendered_formatted = format_entries(rendered_entries)

    if original_formatted != rendered_formatted:
        print("MISMATCH:")
        print()
        print("=== Original ===")
        print(original_formatted)
        print()
        print("=== Rendered ===")
        print(rendered_formatted)
        print()

        # Show diff
        orig_set = set(original_formatted.split('\n'))
        rend_set = set(rendered_formatted.split('\n'))

        only_orig = orig_set - rend_set
        only_rend = rend_set - orig_set

        if only_orig:
            print("Only in original:")
            for line in sorted(only_orig):
                print(f"  - {line}")

        if only_rend:
            print("Only in rendered:")
            for line in sorted(only_rend):
                print(f"  + {line}")

        sys.exit(1)


if __name__ == '__main__':
    main()
