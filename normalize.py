#!/usr/bin/env python3
"""
Normalize and compare Forge config files.

Forge config format:
- Comments: lines starting with #
- Sections: "name" { ... } or bare { ... }
- Key-values: T:"key"=value where T is type prefix (B, I, D, S)
- Arrays: T:"key" < value1 value2 ... >
"""

import re
import sys


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
    lines = []
    for entry in sorted(entries, key=lambda e: e[0]):
        path, type_prefix, value = entry
        if isinstance(value, list):
            # Array
            lines.append(f"{path}={type_prefix}<{','.join(value)}>")
        else:
            lines.append(f"{path}={type_prefix}{value}")
    return '\n'.join(lines)


def main():
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} <original> <rendered>", file=sys.stderr)
        sys.exit(1)

    original_path = sys.argv[1]
    rendered_path = sys.argv[2]

    original_entries = parse_config(original_path)
    rendered_entries = parse_config(rendered_path)

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
