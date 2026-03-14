#!/usr/bin/env python3
"""Generate Nix option files from config files (Forge, HOCON, INI, JSON, XML, Properties).

Usage: gen_cfg_options.py <pack_root> <output_dir>

Example:
    ./gen_cfg_options.py /nix/store/xyz-gtnh ./versions/2.8.3/mods
"""

import configparser
import json
import re
import sys
import xml.etree.ElementTree as ET
from pathlib import Path

from pyhocon import ConfigFactory, ConfigTree

if len(sys.argv) < 3:
    print(f"Usage: {sys.argv[0]} <pack_root> <output_dir>", file=sys.stderr)
    sys.exit(1)

PACK_ROOT = Path(sys.argv[1])
OPTIONS_OUT = Path(sys.argv[2])

CFG_ROOT = PACK_ROOT / "config"

# Already handled elsewhere
SKIP_DIRS = set()
# Skip the RTG biomes subdir (auto-generated), but keep RTG/rtg.cfg
# Skip ThaumcraftMobAspects (JSON arrays that can't round-trip to Nix)
# Skip GTNewHorizons (XML with duplicate elements like multiple <Drop>)
SKIP_PREFIXES = [CFG_ROOT / "RTG" / "biomes", CFG_ROOT / "ThaumcraftMobAspects", CFG_ROOT / "GTNewHorizons"]
# Skip files with non-standard formats (recipe files, etc.)
# These use custom formats that can't be represented as Nix options
SKIP_FILES = {'AdvancedSolarPanel_MTRecipes.cfg'}


# ---------------------------------------------------------------------------
# Nix helpers
# ---------------------------------------------------------------------------

# Nix reserved keywords that must be quoted as attribute keys
NIX_KEYWORDS = {'if', 'then', 'else', 'let', 'in', 'with', 'inherit', 'rec', 'assert', 'or', 'and', 'null', 'true', 'false'}

def nix_attr_key(s):
    # Quote if it's a keyword or doesn't match identifier pattern
    if s in NIX_KEYWORDS or not re.match(r'^[a-zA-Z_][a-zA-Z0-9_-]*$', s):
        return '"' + s.replace('\\', '\\\\').replace('"', '\\"') + '"'
    return s

def nix_str_lit(s):
    return '"' + s.replace('\\', '\\\\').replace('"', '\\"').replace('${', '\\${') + '"'

def nix_bool(s):
    return 'true' if s.strip().lower() == 'true' else 'false'

NIX_INT_MAX = 9223372036854775807  # 2^63 - 1
NIX_INT_MIN = -9223372036854775808  # -2^63

def nix_int(s):
    s = s.strip()
    # Some cfg files use float notation for integer values (e.g. "4.0")
    try:
        val = int(float(s))
        # Nix integers have a limit; values outside range become strings
        if val < NIX_INT_MIN or val > NIX_INT_MAX:
            return None  # Signal to use string type instead
        return str(val)
    except (ValueError, OverflowError):
        return None

def nix_float(s):
    s = s.strip()
    if '.' not in s and 'e' not in s.lower():
        return s + '.0'
    return s

def nix_type(prefix, is_list=False):
    base = {
        'B': 'lib.types.bool',
        'I': 'lib.types.int',
        'D': 'lib.types.float',
        'F': 'lib.types.float',
        'S': 'lib.types.str',
    }.get(prefix, 'lib.types.str')
    if is_list:
        return f'lib.types.listOf {base}'
    return base

def nix_scalar(prefix, raw):
    if prefix == 'B':
        return nix_bool(raw)
    if prefix == 'I':
        val = nix_int(raw)
        if val is None:  # Too large for Nix int, use string
            return nix_str_lit(raw.strip())
        return val
    if prefix in ('D', 'F'):
        return nix_float(raw)
    return nix_str_lit(raw)

def nix_scalar_type(prefix, raw):
    """Return the Nix type for a scalar value, handling int overflow."""
    if prefix == 'I':
        val = nix_int(raw)
        if val is None:
            return 'lib.types.str'  # Overflow, use string
        return 'lib.types.int'
    return nix_type(prefix)

def nix_list_int(x):
    """Convert to Nix int, wrapping negatives in parens for list context."""
    val = nix_int(x)
    if val is None:  # Too large, return as string (will cause type issues but rare)
        return nix_str_lit(x.strip())
    if val.startswith('-'):
        return f'({val})'
    return val

def nix_list_float(x):
    """Convert to Nix float, wrapping negatives in parens for list context."""
    val = nix_float(x)
    if val.startswith('-'):
        return f'({val})'
    return val

def nix_list(prefix, items):
    if not items:
        return '[ ]'
    if prefix == 'B':
        vals = ' '.join(nix_bool(x) for x in items)
    elif prefix == 'I':
        vals = ' '.join(nix_list_int(x) for x in items)
    elif prefix in ('D', 'F'):
        vals = ' '.join(nix_list_float(x) for x in items)
    else:
        vals = ' '.join(nix_str_lit(x) for x in items)
    return f'[ {vals} ]'

def nix_desc(s):
    return s.replace('\\', '\\\\').replace('"', '\\"').replace('${', '\\${')


# ---------------------------------------------------------------------------
# Forge cfg parser
# ---------------------------------------------------------------------------

def parse_cfg(text):
    """Return a list of ('entry'|'list'|'section') tuples."""
    lines = text.splitlines()
    tree, _ = _parse_block(lines, 0, top=True)
    return tree

def _is_separator_comment(s):
    """True if comment text (after stripping '#' and whitespace) is a pure
    separator line such as '##########', '#---#', '=========', etc."""
    return not s or bool(re.match(r'^[#\-=*~ ]+$', s))


def _parse_block(lines, pos, top=False):
    items = []
    # Accumulate real comment lines; separator lines are silently skipped so
    # that Backpack-style  "# ######\n# Description\n# ######"  produces the
    # description rather than the useless "######" string.
    comment_buf = []

    def take_comment():
        c = ' '.join(comment_buf)
        comment_buf.clear()
        return c

    while pos < len(lines):
        raw = lines[pos]
        line = raw.strip()
        pos += 1

        if not line:
            comment_buf.clear()
            continue

        if line.startswith('#'):
            text = line[1:].strip()
            if not _is_separator_comment(text):
                comment_buf.append(text)
            # separator lines don't reset the accumulator
            continue

        # section end
        if line == '}':
            if top:
                continue   # stray } at top level, ignore
            return items, pos

        # section start: "quoted name" { or word(s) {
        m = re.match(r'^"([^"]+)"\s*\{$', line)
        if not m:
            m = re.match(r'^([\w][\w\s.-]*?)\s*\{$', line)
        if m:
            name = m.group(1).strip()
            c = take_comment()
            children, pos = _parse_block(lines, pos, top=False)
            items.append(('section', name, children, c))
            continue

        # list: TYPE:"key" < or TYPE:key <
        m = re.match(r'^([A-Za-z]):"?([^"<>]+?)"?\s*<\s*$', line)
        if m:
            prefix = m.group(1).upper()
            key = m.group(2).strip()
            c = take_comment()
            vals = []
            while pos < len(lines):
                vraw = lines[pos].strip(); pos += 1
                if vraw == '>':
                    break
                if vraw and not vraw.startswith('#'):
                    vals.append(vraw)
            items.append(('list', prefix, key, vals, c))
            continue

        # simple value: TYPE:"key"=value or TYPE:key=value
        m = re.match(r'^([A-Za-z]):"([^"]+)"=(.*)$', line)
        if not m:
            m = re.match(r'^([A-Za-z]):([^=\s"<>]+?)=(.*)$', line)
        if m:
            prefix = m.group(1).upper()
            key = m.group(2).strip()
            val = m.group(3).strip()
            c = take_comment()
            items.append(('entry', prefix, key, val, c))
            continue

        # multi-line section header: bare name on this line, '{' on next line
        if pos < len(lines) and lines[pos].strip() == '{':
            m = re.match(r'^"?([^"{}=<>]+?)"?$', line)
            if m:
                name = m.group(1).strip()
                pos += 1  # consume the '{'
                c = take_comment()
                children, pos = _parse_block(lines, pos, top=False)
                items.append(('section', name, children, c))
                continue

        # untyped value: key=value (no type prefix, treated as string)
        m = re.match(r'^([^:={}<>\s][^:={}<>]*?)=(.*)$', line)
        if m:
            key = m.group(1).strip()
            val = m.group(2).strip()
            c = take_comment()
            items.append(('entry', 'S', key, val, c))
            continue

        # unrecognised line – reset comment
        comment_buf.clear()

    return items, pos


# ---------------------------------------------------------------------------
# Nix code generator
# ---------------------------------------------------------------------------

def gen_entries(items, ind):
    lines = []
    i2 = ind + '  '
    i3 = ind + '    '
    i4 = ind + '      '

    # Track seen keys to avoid duplicates (Nix doesn't allow duplicate attrs)
    seen_keys = set()

    for item in items:
        kind = item[0]

        if kind == 'entry':
            _, prefix, key, val, desc = item
            # Skip duplicates (Nix doesn't allow duplicate attribute keys)
            if key in seen_keys:
                continue
            seen_keys.add(key)
            nk = nix_attr_key(key)
            try:
                nv = nix_scalar(prefix, val)
            except Exception:
                nv = nix_str_lit(str(val))
            # Use nix_scalar_type for ints to handle overflow
            if prefix == 'I':
                nt = nix_scalar_type(prefix, val)
            else:
                nt = nix_type(prefix)
            lines.append(f'{ind}{nk} = lib.mkOption {{')
            lines.append(f'{i2}type = {nt};')
            lines.append(f'{i2}default = {nv};')
            if desc:
                lines.append(f'{i2}description = {nix_str_lit(desc)};')
            lines.append(f'{ind}}};')

        elif kind == 'list':
            _, prefix, key, vals, desc = item
            # Skip duplicates
            if key in seen_keys:
                continue
            seen_keys.add(key)
            nk = nix_attr_key(key)
            try:
                nv = nix_list(prefix, vals)
            except Exception:
                nv = '[ ]'
            nt = nix_type(prefix, is_list=True)
            lines.append(f'{ind}{nk} = lib.mkOption {{')
            lines.append(f'{i2}type = {nt};')
            lines.append(f'{i2}default = {nv};')
            if desc:
                lines.append(f'{i2}description = {nix_str_lit(desc)};')
            lines.append(f'{ind}}};')

        elif kind == 'section':
            _, name, children, desc = item
            # Skip duplicates
            if name in seen_keys:
                continue
            seen_keys.add(name)
            nk = nix_attr_key(name)
            lines.append(f'{ind}{nk} = lib.mkOption {{')
            lines.append(f'{i2}default = {{}};')
            if desc:
                lines.append(f'{i2}description = {nix_str_lit(desc)};')
            lines.append(f'{i2}type = lib.types.submodule {{')
            lines.append(f'{i2}  options = {{')
            inner = gen_entries(children, i2 + '    ')
            lines.extend(inner)
            lines.append(f'{i2}  }};')
            lines.append(f'{i2}}};')
            lines.append(f'{ind}}};')

    return lines

def is_typed_cfg(text):
    """Return True if the cfg file uses Forge type prefixes (B:/I:/D:/F:/S:).
    Files with no typed entries should be rendered with kind="forge_untyped"."""
    return bool(re.search(r'^\s*[BIDFS]:', text, re.MULTILINE))


# ---------------------------------------------------------------------------
# JSON parser
# ---------------------------------------------------------------------------

def parse_json(text):
    """Parse JSON config file into the same structure as Forge cfg."""
    try:
        data = json.loads(text)
        return json_to_tree(data)
    except json.JSONDecodeError:
        return []

def json_to_tree(data, prefix=''):
    """Convert JSON data to the tree format used by gen_entries."""
    items = []
    if isinstance(data, dict):
        for key, value in data.items():
            if isinstance(value, dict):
                children = json_to_tree(value)
                items.append(('section', key, children, ''))
            elif isinstance(value, list):
                if value and all(isinstance(x, (str, int, float, bool)) for x in value):
                    # Simple list of scalars
                    prefix_type = infer_json_type(value[0]) if value else 'S'
                    items.append(('list', prefix_type, key, [str(x) if not isinstance(x, bool) else ('true' if x else 'false') for x in value], ''))
                else:
                    # Complex list - treat as section with indexed children
                    children = json_to_tree(value)
                    items.append(('section', key, children, ''))
            else:
                prefix_type = infer_json_type(value)
                val_str = str(value) if not isinstance(value, bool) else ('true' if value else 'false')
                items.append(('entry', prefix_type, key, val_str, ''))
    elif isinstance(data, list):
        for i, value in enumerate(data):
            key = str(i)
            if isinstance(value, dict):
                children = json_to_tree(value)
                items.append(('section', key, children, ''))
            elif isinstance(value, list):
                children = json_to_tree(value)
                items.append(('section', key, children, ''))
            else:
                prefix_type = infer_json_type(value)
                val_str = str(value) if not isinstance(value, bool) else ('true' if value else 'false')
                items.append(('entry', prefix_type, key, val_str, ''))
    return items

def infer_json_type(value):
    """Infer Forge type prefix from JSON value."""
    if isinstance(value, bool):
        return 'B'
    elif isinstance(value, int):
        return 'I'
    elif isinstance(value, float):
        return 'D'
    else:
        return 'S'


# ---------------------------------------------------------------------------
# XML parser
# ---------------------------------------------------------------------------

def parse_xml(text):
    """Parse XML config file into the same structure as Forge cfg."""
    try:
        root = ET.fromstring(text)
        # Store the root element name as a special entry
        items = [('entry', 'S', '__root', root.tag, '')]
        items.extend(xml_to_tree(root))
        return items
    except ET.ParseError:
        return []

def xml_to_tree(element):
    """Convert XML element to the tree format used by gen_entries."""
    items = []

    # Add attributes as entries (prefix with @ to distinguish from child elements)
    for attr_name, attr_value in element.attrib.items():
        prefix_type = infer_xml_type(attr_value)
        items.append(('entry', prefix_type, f'@{attr_name}', attr_value, ''))

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

        if len(child) > 0 or child.attrib:
            # Has children or attributes - treat as section
            children = xml_to_tree(child)
            items.append(('section', unique_tag, children, ''))
        elif child.text and child.text.strip():
            # Simple text content
            text = child.text.strip()
            prefix_type = infer_xml_type(text)
            items.append(('entry', prefix_type, unique_tag, text, ''))
        else:
            # Empty element
            items.append(('entry', 'S', unique_tag, '', ''))

    # If the element has text content mixed with children, add it
    if element.text and element.text.strip() and len(element) == 0:
        text = element.text.strip()
        prefix_type = infer_xml_type(text)
        items.append(('entry', prefix_type, '_text', text, ''))

    return items

def infer_xml_type(value):
    """Infer Forge type prefix from XML string value."""
    if value.lower() in ('true', 'false'):
        return 'B'
    try:
        int(value)
        return 'I'
    except ValueError:
        pass
    try:
        float(value)
        return 'D'
    except ValueError:
        pass
    return 'S'


# ---------------------------------------------------------------------------
# HOCON parser (for OpenComputers, etc.)
# ---------------------------------------------------------------------------

# Known HOCON files that should be parsed with pyhocon
# Use relative paths from config/ to avoid matching files in subdirectories
KNOWN_HOCON_PATHS = {'OpenComputers.cfg'}  # Direct children of config/


def parse_hocon(text):
    """Parse HOCON config file into the same structure as Forge cfg."""
    try:
        config = ConfigFactory.parse_string(text)
        return hocon_to_tree(config)
    except Exception:
        return []


def hocon_to_tree(config):
    """Convert HOCON ConfigTree to the tree format used by gen_entries."""
    items = []

    if isinstance(config, ConfigTree):
        for key in config.keys():
            value = config[key]
            if isinstance(value, ConfigTree):
                children = hocon_to_tree(value)
                items.append(('section', key, children, ''))
            elif isinstance(value, list):
                if value and all(isinstance(x, (str, int, float, bool)) for x in value):
                    prefix_type = infer_hocon_type(value[0]) if value else 'S'
                    items.append(('list', prefix_type, key, [hocon_val_str(x) for x in value], ''))
                else:
                    children = hocon_to_tree(value)
                    items.append(('section', key, children, ''))
            else:
                prefix_type = infer_hocon_type(value)
                items.append(('entry', prefix_type, key, hocon_val_str(value), ''))
    elif isinstance(config, list):
        for i, value in enumerate(config):
            key = str(i)
            if isinstance(value, ConfigTree):
                children = hocon_to_tree(value)
                items.append(('section', key, children, ''))
            elif isinstance(value, list):
                children = hocon_to_tree(value)
                items.append(('section', key, children, ''))
            else:
                prefix_type = infer_hocon_type(value)
                items.append(('entry', prefix_type, key, hocon_val_str(value), ''))

    return items


def infer_hocon_type(value):
    """Infer Forge type prefix from HOCON value."""
    if isinstance(value, bool):
        return 'B'
    elif isinstance(value, int):
        return 'I'
    elif isinstance(value, float):
        return 'D'
    else:
        return 'S'


def hocon_val_str(value):
    """Convert HOCON value to string."""
    if isinstance(value, bool):
        return 'true' if value else 'false'
    return str(value)


# ---------------------------------------------------------------------------
# INI parser (for IC2.ini, etc.)
# ---------------------------------------------------------------------------

def parse_ini(text):
    """Parse INI config file into the same structure as Forge cfg."""
    try:
        config = configparser.ConfigParser()
        config.read_string(text)
        return ini_to_tree(config)
    except Exception:
        return []


def ini_to_tree(config):
    """Convert ConfigParser to the tree format used by gen_entries."""
    items = []

    for section in config.sections():
        children = []
        for key, value in config.items(section):
            prefix_type = infer_ini_type(value)
            children.append(('entry', prefix_type, key, value, ''))
        items.append(('section', section, children, ''))

    # Also include DEFAULT section if it has items
    if config.defaults():
        children = []
        for key, value in config.defaults().items():
            prefix_type = infer_ini_type(value)
            children.append(('entry', prefix_type, key, value, ''))
        if children:
            items.insert(0, ('section', 'DEFAULT', children, ''))

    return items


def infer_ini_type(value):
    """Infer Forge type prefix from INI string value."""
    if value.lower() in ('true', 'false', 'yes', 'no', 'on', 'off'):
        return 'B'
    try:
        int(value)
        return 'I'
    except ValueError:
        pass
    try:
        float(value)
        return 'D'
    except ValueError:
        pass
    return 'S'


# ---------------------------------------------------------------------------
# Properties parser (for simple key=value files)
# ---------------------------------------------------------------------------

def parse_properties(text):
    """Parse Java properties-style config file into the same structure as Forge cfg."""
    items = []

    for line in text.splitlines():
        line = line.strip()

        # Skip comments and empty lines
        if not line or line.startswith('#') or line.startswith('!'):
            continue

        # Handle key=value or key:value
        match = re.match(r'^([^=:]+)[=:](.*)$', line)
        if match:
            key = match.group(1).strip()
            value = match.group(2).strip()
            prefix_type = infer_ini_type(value)  # Reuse INI type inference
            items.append(('entry', prefix_type, key, value, ''))

    return items


# ---------------------------------------------------------------------------
# Format detection
# ---------------------------------------------------------------------------

def detect_format(filepath, text):
    """Detect config file format based on filename and content.

    Returns one of: 'forge', 'forge_untyped', 'hocon', 'ini', 'json', 'xml', 'properties'
    """
    suffix = filepath.suffix.lower()
    name = filepath.name

    # Check explicit extensions first
    if suffix == '.json':
        return 'json'
    if suffix == '.xml':
        return 'xml'
    if suffix == '.properties':
        return 'properties'

    # Check known HOCON files (only direct children of config/)
    # filepath is relative to pack root, e.g. config/OpenComputers.cfg
    try:
        rel_to_config = filepath.relative_to(CFG_ROOT)
        # Only match if it's a direct child (no subdirectories)
        if len(rel_to_config.parts) == 1 and name in KNOWN_HOCON_PATHS:
            return 'hocon'
    except ValueError:
        pass

    # Check for JSON content (starts with { or [)
    stripped = text.lstrip()
    if stripped.startswith('{') or stripped.startswith('['):
        try:
            json.loads(text)
            return 'json'
        except json.JSONDecodeError:
            pass

    # Check for INI format: has [section] headers
    if re.search(r'^\s*\[[^\]]+\]', text, re.MULTILINE):
        # But not if it also has Forge-style type prefixes (some Forge configs have [section] comments)
        if not re.search(r'^\s*[BIDFS]:', text, re.MULTILINE):
            return 'ini'

    # Check for Forge typed format: has type prefixes B:, I:, D:, F:, S:
    if re.search(r'^\s*[BIDFS]:', text, re.MULTILINE):
        return 'forge'

    # Check for Forge untyped format: has section braces
    if re.search(r'^\s*"?[\w\s.-]+"?\s*\{', text, re.MULTILINE):
        return 'forge_untyped'

    # Check for HOCON-like format: has nested braces with key = value (no type prefix)
    if re.search(r'^\s*\w+\s*\{', text, re.MULTILINE) and re.search(r'^\s*\w+\s*=', text, re.MULTILINE):
        return 'hocon'

    # Default to properties for simple key=value files
    if re.search(r'^\s*[\w.-]+\s*=', text, re.MULTILINE):
        return 'properties'

    # Last resort: treat as Forge untyped
    return 'forge_untyped'


def gen_cfg_option(opt_name, cfg_path, rel_path, base_indent):
    """Generate a single top-level mkOption block for one config file."""
    ind = '  ' * base_indent
    i2  = ind + '  '
    i3  = ind + '    '
    i4  = ind + '      '

    try:
        text = cfg_path.read_text(errors='replace')
        fmt = detect_format(cfg_path, text)

        if fmt == 'json':
            tree = parse_json(text)
            kind = "json"
        elif fmt == 'xml':
            tree = parse_xml(text)
            kind = "xml"
        elif fmt == 'hocon':
            tree = parse_hocon(text)
            kind = "hocon"
        elif fmt == 'ini':
            tree = parse_ini(text)
            kind = "ini"
        elif fmt == 'properties':
            tree = parse_properties(text)
            kind = "properties"
        elif fmt == 'forge':
            tree = parse_cfg(text)
            kind = "forge"
        else:  # forge_untyped
            tree = parse_cfg(text)
            kind = "forge_untyped"
    except Exception as e:
        text = ''
        tree = []
        kind = "forge"

    rel_nix = rel_path.replace('\\', '/')
    nk = nix_attr_key(opt_name)

    lines = []
    lines.append(f'{ind}{nk} = lib.mkOption {{')
    lines.append(f'{i2}description = {nix_str_lit(f"{opt_name} configuration (./{rel_nix})")};')
    lines.append(f'{i2}default = {{}};')
    lines.append(f'{i2}type = lib.types.submodule {{')
    lines.append(f'{i2}  options = {{')
    lines.append(f'{i3}  path = lib.mkOption {{')
    lines.append(f'{i4}type = lib.types.str;')
    lines.append(f'{i4}default = {nix_str_lit("./" + rel_nix)};')
    lines.append(f'{i4}readOnly = true;')
    lines.append(f'{i3}  }};')
    lines.append(f'{i3}  kind = lib.mkOption {{')
    lines.append(f'{i4}type = lib.types.str;')
    lines.append(f'{i4}default = "{kind}";')
    lines.append(f'{i4}readOnly = true;')
    lines.append(f'{i3}  }};')
    inner = gen_entries(tree, i3 + '  ')
    lines.extend(inner)
    lines.append(f'{i2}  }};')
    lines.append(f'{i2}}};')
    lines.append(f'{ind}}};')
    return lines


def gen_nix_file(entries):
    """entries: list of (opt_name, cfg_path, rel_path)"""
    lines = ['{lib, ...}: {']
    for opt_name, cfg_path, rel_path, _check_attr in entries:
        lines.extend(gen_cfg_option(opt_name, cfg_path, rel_path, base_indent=1))
    lines.append('}')
    return '\n'.join(lines) + '\n'


# ---------------------------------------------------------------------------
# File discovery & grouping
# ---------------------------------------------------------------------------

# Supported config file extensions
SUPPORTED_EXTENSIONS = {'.cfg', '.conf', '.config', '.json', '.xml', '.ini', '.properties'}

def should_skip(p):
    if p.suffix.lower() not in SUPPORTED_EXTENSIONS:
        return True
    # Skip specific files with non-standard formats
    if p.name in SKIP_FILES:
        return True
    # Skip GregTech (already done) and ThaumcraftMobAspects
    parts = p.relative_to(CFG_ROOT).parts
    if parts[0] in SKIP_DIRS:
        return True
    # Skip RTG/biomes
    for sp in SKIP_PREFIXES:
        try:
            p.relative_to(sp)
            return True
        except ValueError:
            pass
    return False

def sanitize_stem(s):
    """Convert a cfg stem to a safe .nix filename stem.

    Removes dots (haumea treats them as nesting separators) and spaces
    (invalid in unquoted Nix identifiers / filesystem-unfriendly).
    e.g. 'DraconicEvolution.Balance' → 'DraconicEvolutionBalance'
         'Thaumic Bases'             → 'ThaumicBases'
    """
    return s.replace('.', '').replace(' ', '')


def collect():
    """
    Returns dict: nix_file_stem -> list of (opt_name, cfg_path, rel_path, check_attr_path)

    nix_file_stem: stem of the .nix file (e.g. 'AppliedEnergistics2', 'forge')
    opt_name:      Nix attribute name within the file
    rel_path:      path relative to pack root (for mkCfgCheck)
    check_attr_path: Nix attr path like 'AppliedEnergistics2.AppliedEnergistics2'
    """
    groups = {}

    # Collect all supported config file types
    all_configs = []
    for ext in SUPPORTED_EXTENSIONS:
        all_configs.extend(CFG_ROOT.rglob(f'*{ext}'))

    for cfg in sorted(all_configs):
        if should_skip(cfg):
            continue

        rel = cfg.relative_to(PACK_ROOT)   # e.g. config/AE2/AE2.cfg
        parts = rel.parts                   # ('config', 'AE2', 'AE2.cfg')

        # Use full filename (with extension stripped of dot) as opt_name to handle
        # cases like apiculture.cfg and apiculture.conf in same directory
        ext_suffix = cfg.suffix.lstrip('.')  # e.g. 'cfg', 'conf'

        if len(parts) == 2:
            # top-level: config/forge.cfg
            nix_stem = sanitize_stem(cfg.stem)
            opt_name = f"{cfg.stem}_{ext_suffix}"
        elif len(parts) == 3:
            # one subdir: config/AppliedEnergistics2/AE2.cfg
            nix_stem = sanitize_stem(parts[1])
            opt_name = f"{cfg.stem}_{ext_suffix}"
        else:
            # deep: config/cofh/core/common.cfg → nix=cofh, opt=core_common_cfg
            nix_stem = sanitize_stem(parts[1])
            opt_name = '_'.join(parts[2:-1]) + '_' + cfg.stem + '_' + ext_suffix

        if nix_stem not in groups:
            groups[nix_stem] = []

        check_attr = f'{nix_stem}.{opt_name}'
        groups[nix_stem].append((opt_name, cfg, str(rel).replace('\\', '/'), check_attr))

    return groups


# ---------------------------------------------------------------------------
# Check entry generation
# ---------------------------------------------------------------------------

def check_name(check_attr):
    # e.g. 'AppliedEnergistics2.AppliedEnergistics2' → 'ae2-ae2-cfg'
    # Just kebab-case the whole thing
    s = check_attr.replace('.', '-')
    # convert CamelCase runs to lower, keep hyphens
    s = re.sub(r'([A-Z]+)', lambda m: '-' + m.group(0).lower(), s)
    s = re.sub(r'-+', '-', s).strip('-')
    return s + '-cfg'

def gen_check_entry(check_attr, rel_path):
    name = check_name(check_attr)
    attr_path = 'moduleEval.config.programs.gtnh.mods.' + check_attr
    # rel_path already starts with 'config/...'
    return (
        f'          {name} =\n'
        f'            mkCfgCheck\n'
        f'            "{name}"\n'
        f'            {attr_path}\n'
        f'            "{rel_path}";'
    )


# ---------------------------------------------------------------------------
# main
# ---------------------------------------------------------------------------

# Hand-written files that must never be overwritten by the generator
# Note: GregTech was removed as each version needs its own defaults
PROTECTED_STEMS = {'ServerUtilities'}


def main():
    OPTIONS_OUT.mkdir(parents=True, exist_ok=True)

    groups = collect()

    # Merge groups that collide case-insensitively (macOS case-insensitive FS).
    # For each collision set, keep the stem that sorts first (uppercase wins)
    # and fold the others into it.
    by_lower = {}
    for stem in list(groups.keys()):
        lower = stem.lower()
        if lower in by_lower:
            canonical = by_lower[lower]
            groups[canonical].extend(groups.pop(stem))
            print(f'MERGE (case conflict): {stem} → {canonical}')
        else:
            by_lower[lower] = stem

    generated = []

    for nix_stem, entries in sorted(groups.items()):
        out_path = OPTIONS_OUT / f'{nix_stem}.nix'

        # Never overwrite hand-written files
        if nix_stem in PROTECTED_STEMS:
            print(f'SKIP (protected): {out_path}')
            continue

        nix_content = gen_nix_file(entries)
        out_path.write_text(nix_content)
        generated.append(str(out_path))
        print(f'WROTE: {out_path}  ({len(entries)} cfg files)')

    print(f'\nGenerated {len(generated)} .nix files')

if __name__ == '__main__':
    main()
