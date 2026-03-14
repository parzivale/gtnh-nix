#!/usr/bin/env python3
"""
Normalize and compare config files (Forge cfg, HOCON, INI, JSON, XML, Properties).

Forge config format:
- Comments: lines starting with #
- Sections: "name" { ... } or bare { ... }
- Key-values: T:"key"=value where T is type prefix (B, I, D, S)
- Arrays: T:"key" < value1 value2 ... >
"""

import configparser
import json
import re
import sys
import xml.etree.ElementTree as ET

from pyhocon import ConfigFactory, ConfigTree


def normalize_number(s):
    """Normalize a number string (handle scientific notation, trailing zeros)."""
    try:
        f = float(s)
        # Format with enough precision, then strip trailing zeros
        result = f"{f:.15g}"
        return result
    except ValueError:
        return s


def normalize_value(value):
    """Normalize a config value."""
    value = value.strip()
    # Try to normalize as number
    if re.match(r'^-?[\d.]+(?:[eE][+-]?\d+)?$', value):
        return normalize_number(value)
    return value


def parse_config(filepath):
    """
    Parse a Forge config file into a normalized structure.
    Returns a list of (path, value) tuples where path is the full key path.
    """
    with open(filepath, 'r') as f:
        content = f.read()

    entries = []
    path_stack = []
    pending_section_name = None
    lines = content.split('\n')
    i = 0

    while i < len(lines):
        line = lines[i].strip()

        # Skip comments and blank lines
        if not line or line.startswith('#') or line.startswith('~'):
            i += 1
            continue

        # Section start: "name" { or name { or bare { or name on previous line
        section_match = re.match(r'^(?:"([^"]*)"|(\S+))?\s*\{$', line)
        if section_match:
            # Group 1 is quoted name, group 2 is unquoted name
            section_name = (section_match.group(1) or section_match.group(2) or '').strip()
            # If this is a bare { and we have a pending section name, use it
            if not section_name and pending_section_name:
                section_name = pending_section_name
                pending_section_name = None
            path_stack.append(section_name)
            i += 1
            continue

        # Potential section name on its own line (will be followed by { on next line)
        if re.match(r'^"?[^"=<>{}]+$', line) and not '=' in line:
            # Peek ahead to see if next non-empty line is {
            j = i + 1
            while j < len(lines) and not lines[j].strip():
                j += 1
            if j < len(lines) and lines[j].strip() == '{':
                pending_section_name = line.strip().strip('"')
                i += 1
                continue

        # Section end
        if line == '}':
            if path_stack:
                path_stack.pop()
            i += 1
            continue

        # Array: T:"key" < or "key" < or key <
        array_match = re.match(r'^([BIDS]:)?(?:"([^"]+)"|([^<\s]+))\s*<$', line)
        if array_match:
            type_prefix = array_match.group(1) or ''
            # Group 2 is quoted key, group 3 is unquoted key
            key = (array_match.group(2) or array_match.group(3) or '').strip()
            full_path = '.'.join(path_stack + [key]) if path_stack else key

            # Collect array values until >
            array_values = []
            i += 1
            while i < len(lines):
                array_line = lines[i].strip()
                if array_line == '>':
                    i += 1
                    break
                if array_line and not array_line.startswith('#'):
                    array_values.append(normalize_value(array_line))
                i += 1

            # Store array with sorted, deduplicated values for comparison
            # Skip empty arrays (they're omitted in rendered output)
            if array_values:
                entries.append((full_path, type_prefix, sorted(set(array_values))))
            continue

        # Key-value: T:"key"=value or "key"=value or key=value
        kv_match = re.match(r'^([BIDS]:)?(?:"([^"]+)"|([^=\s]+))\s*=\s*(.*)$', line)
        if kv_match:
            type_prefix = kv_match.group(1) or ''
            # Group 2 is quoted key, group 3 is unquoted key
            key = (kv_match.group(2) or kv_match.group(3) or '').strip()
            value = normalize_value(kv_match.group(4))
            full_path = '.'.join(path_stack + [key]) if path_stack else key
            entries.append((full_path, type_prefix, value))
            i += 1
            continue

        # Unknown line, skip
        i += 1

    return entries


def format_entries(entries):
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
            # Array
            lines.append(f"{path}={type_prefix}<{','.join(value)}>")
        else:
            lines.append(f"{path}={type_prefix}{value}")
    return '\n'.join(lines)


# ---------------------------------------------------------------------------
# JSON parser
# ---------------------------------------------------------------------------

def parse_json_config(filepath):
    """Parse a JSON config file into normalized structure."""
    with open(filepath, 'r') as f:
        content = f.read()

    try:
        data = json.loads(content)
    except json.JSONDecodeError:
        return []

    return json_to_entries(data, [])


def json_to_entries(data, path_stack):
    """Convert JSON data to entries list."""
    entries = []

    if isinstance(data, dict):
        for key, value in data.items():
            current_path = path_stack + [key]
            if isinstance(value, dict):
                entries.extend(json_to_entries(value, current_path))
            elif isinstance(value, list):
                if value and all(isinstance(x, (str, int, float, bool)) for x in value):
                    # Simple list of scalars
                    type_prefix = infer_json_type_prefix(value[0]) if value else ''
                    normalized = [normalize_json_value(x) for x in value]
                    full_path = '.'.join(current_path)
                    entries.append((full_path, type_prefix, sorted(set(normalized))))
                else:
                    # Complex list - recurse
                    entries.extend(json_to_entries(value, current_path))
            else:
                type_prefix = infer_json_type_prefix(value)
                normalized = normalize_json_value(value)
                full_path = '.'.join(current_path)
                entries.append((full_path, type_prefix, normalized))
    elif isinstance(data, list):
        for i, value in enumerate(data):
            current_path = path_stack + [str(i)]
            if isinstance(value, (dict, list)):
                entries.extend(json_to_entries(value, current_path))
            else:
                type_prefix = infer_json_type_prefix(value)
                normalized = normalize_json_value(value)
                full_path = '.'.join(current_path)
                entries.append((full_path, type_prefix, normalized))

    return entries


def infer_json_type_prefix(value):
    """Infer type prefix from JSON value."""
    if isinstance(value, bool):
        return 'B:'
    elif isinstance(value, int):
        return 'I:'
    elif isinstance(value, float):
        return 'D:'
    else:
        return 'S:'


def normalize_json_value(value):
    """Normalize a JSON value to string."""
    if isinstance(value, bool):
        return 'true' if value else 'false'
    elif isinstance(value, (int, float)):
        return normalize_number(str(value))
    else:
        return str(value)


# ---------------------------------------------------------------------------
# XML parser
# ---------------------------------------------------------------------------

def parse_xml_config(filepath):
    """Parse an XML config file into normalized structure."""
    with open(filepath, 'r') as f:
        content = f.read()

    try:
        root = ET.fromstring(content)
    except ET.ParseError:
        return []

    return xml_to_entries(root, [])


def xml_to_entries(element, path_stack):
    """Convert XML element to entries list."""
    entries = []

    # Add attributes (prefix with @ to distinguish from child elements)
    for attr_name, attr_value in element.attrib.items():
        current_path = path_stack + [f'@{attr_name}']
        type_prefix = infer_xml_type_prefix(attr_value)
        normalized = normalize_value(attr_value)
        full_path = '.'.join(current_path)
        entries.append((full_path, type_prefix, normalized))

    # Count child element occurrences to handle duplicates
    tag_counts = {}
    for child in element:
        tag_counts[child.tag] = tag_counts.get(child.tag, 0) + 1

    # Track current index for each tag
    tag_indices = {}

    # Add child elements
    for child in element:
        tag = child.tag
        # Number duplicates: Drop -> Drop_0, Drop_1, etc.
        if tag_counts[tag] > 1:
            idx = tag_indices.get(tag, 0)
            tag_indices[tag] = idx + 1
            unique_tag = f"{tag}_{idx}"
        else:
            unique_tag = tag

        current_path = path_stack + [unique_tag]
        if len(child) > 0 or child.attrib:
            # Has children or attributes - recurse
            entries.extend(xml_to_entries(child, current_path))
        elif child.text and child.text.strip():
            # Simple text content
            text = child.text.strip()
            type_prefix = infer_xml_type_prefix(text)
            normalized = normalize_value(text)
            full_path = '.'.join(current_path)
            entries.append((full_path, type_prefix, normalized))

    return entries


def infer_xml_type_prefix(value):
    """Infer type prefix from XML string value."""
    if value.lower() in ('true', 'false'):
        return 'B:'
    try:
        int(value)
        return 'I:'
    except ValueError:
        pass
    try:
        float(value)
        return 'D:'
    except ValueError:
        pass
    return 'S:'


# ---------------------------------------------------------------------------
# HOCON parser
# ---------------------------------------------------------------------------

# Known HOCON files - only direct children of config/
# Note: normalize.py uses content-based detection since it doesn't have path context
KNOWN_HOCON = {'OpenComputers.cfg'}


def parse_hocon_config(filepath):
    """Parse a HOCON config file into normalized structure."""
    with open(filepath, 'r') as f:
        content = f.read()

    try:
        config = ConfigFactory.parse_string(content)
        return hocon_to_entries(config, [])
    except Exception:
        return []


def hocon_to_entries(config, path_stack):
    """Convert HOCON ConfigTree to entries list."""
    entries = []

    if isinstance(config, ConfigTree):
        for key in config.keys():
            current_path = path_stack + [key]
            value = config[key]
            if isinstance(value, ConfigTree):
                entries.extend(hocon_to_entries(value, current_path))
            elif isinstance(value, list):
                if value and all(isinstance(x, (str, int, float, bool)) for x in value):
                    type_prefix = infer_hocon_type_prefix(value[0]) if value else ''
                    normalized = [normalize_hocon_value(x) for x in value]
                    full_path = '.'.join(current_path)
                    entries.append((full_path, type_prefix, sorted(set(normalized))))
                else:
                    entries.extend(hocon_to_entries(value, current_path))
            else:
                type_prefix = infer_hocon_type_prefix(value)
                normalized = normalize_hocon_value(value)
                full_path = '.'.join(current_path)
                entries.append((full_path, type_prefix, normalized))
    elif isinstance(config, list):
        for i, value in enumerate(config):
            current_path = path_stack + [str(i)]
            if isinstance(value, (ConfigTree, list)):
                entries.extend(hocon_to_entries(value, current_path))
            else:
                type_prefix = infer_hocon_type_prefix(value)
                normalized = normalize_hocon_value(value)
                full_path = '.'.join(current_path)
                entries.append((full_path, type_prefix, normalized))

    return entries


def infer_hocon_type_prefix(value):
    """Infer type prefix from HOCON value."""
    if isinstance(value, bool):
        return 'B:'
    elif isinstance(value, int):
        return 'I:'
    elif isinstance(value, float):
        return 'D:'
    else:
        return 'S:'


def normalize_hocon_value(value):
    """Normalize a HOCON value to string."""
    if isinstance(value, bool):
        return 'true' if value else 'false'
    elif isinstance(value, (int, float)):
        return normalize_number(str(value))
    else:
        return str(value)


# ---------------------------------------------------------------------------
# INI parser
# ---------------------------------------------------------------------------

def parse_ini_config(filepath):
    """Parse an INI config file into normalized structure."""
    with open(filepath, 'r') as f:
        content = f.read()

    try:
        config = configparser.ConfigParser()
        config.read_string(content)
        return ini_to_entries(config)
    except Exception:
        return []


def ini_to_entries(config):
    """Convert ConfigParser to entries list."""
    entries = []

    for section in config.sections():
        for key, value in config.items(section):
            full_path = f"{section}.{key}"
            type_prefix = infer_ini_type_prefix(value)
            normalized = normalize_value(value)
            entries.append((full_path, type_prefix, normalized))

    return entries


def infer_ini_type_prefix(value):
    """Infer type prefix from INI string value."""
    if value.lower() in ('true', 'false', 'yes', 'no', 'on', 'off'):
        return 'B:'
    try:
        int(value)
        return 'I:'
    except ValueError:
        pass
    try:
        float(value)
        return 'D:'
    except ValueError:
        pass
    return 'S:'


# ---------------------------------------------------------------------------
# Properties parser
# ---------------------------------------------------------------------------

def parse_properties_config(filepath):
    """Parse a properties config file into normalized structure.

    Note: Unlike other formats, properties files don't infer type prefixes
    because the rendered output from mkPropertiesFile is plain key=value.
    """
    with open(filepath, 'r') as f:
        content = f.read()

    entries = []

    for line in content.splitlines():
        line = line.strip()

        # Skip comments and empty lines
        if not line or line.startswith('#') or line.startswith('!'):
            continue

        # Handle key=value or key:value
        match = re.match(r'^([^=:]+)[=:](.*)$', line)
        if match:
            key = match.group(1).strip()
            value = match.group(2).strip()
            normalized = normalize_value(value)
            # No type prefix for properties - rendered output is plain key=value
            entries.append((key, '', normalized))

    return entries


# ---------------------------------------------------------------------------
# File type detection and unified parsing
# ---------------------------------------------------------------------------

def detect_file_type(filepath):
    """Detect config file type based on filename and content."""
    import os
    name = os.path.basename(filepath)
    suffix = os.path.splitext(filepath)[1].lower()

    # Check explicit extensions first
    if suffix == '.json':
        return 'json'
    if suffix == '.xml':
        return 'xml'
    if suffix == '.properties':
        return 'properties'

    # Check known HOCON files
    if name in KNOWN_HOCON:
        return 'hocon'

    # Read content for content-based detection
    try:
        with open(filepath, 'r') as f:
            content = f.read()
    except Exception:
        return 'cfg'

    # Check for JSON content (starts with { or [)
    stripped = content.lstrip()
    if stripped.startswith('{') or stripped.startswith('['):
        # Verify it's valid JSON
        try:
            json.loads(content)
            return 'json'
        except json.JSONDecodeError:
            pass

    # Check for INI format: has [section] headers
    if re.search(r'^\s*\[[^\]]+\]', content, re.MULTILINE):
        # But not if it also has Forge-style type prefixes
        if not re.search(r'^\s*[BIDFS]:', content, re.MULTILINE):
            return 'ini'

    # Check for Forge typed format: has type prefixes B:, I:, D:, F:, S:
    if re.search(r'^\s*[BIDFS]:', content, re.MULTILINE):
        return 'cfg'

    # Check for Forge untyped format: has section braces
    if re.search(r'^\s*"?[\w\s.-]+"?\s*\{', content, re.MULTILINE):
        return 'cfg'

    # Check for HOCON-like format: has nested braces with key = value
    if re.search(r'^\s*\w+\s*\{', content, re.MULTILINE) and re.search(r'^\s*\w+\s*=', content, re.MULTILINE):
        return 'hocon'

    # Default to properties for simple key=value files
    if re.search(r'^\s*[\w.-]+\s*=', content, re.MULTILINE):
        return 'properties'

    # Last resort
    return 'cfg'


def parse_config_file(filepath):
    """Parse a config file based on its type."""
    file_type = detect_file_type(filepath)
    if file_type == 'json':
        return parse_json_config(filepath)
    elif file_type == 'xml':
        return parse_xml_config(filepath)
    elif file_type == 'hocon':
        return parse_hocon_config(filepath)
    elif file_type == 'ini':
        return parse_ini_config(filepath)
    elif file_type == 'properties':
        return parse_properties_config(filepath)
    else:
        return parse_config(filepath)


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
