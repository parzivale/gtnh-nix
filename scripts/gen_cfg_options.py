#!/usr/bin/env python3
"""Generate Nix option files from config files (Forge, HOCON, INI, JSON, XML, Properties).

Usage: gen_cfg_options.py <pack_root> <output_dir>

Example:
    ./gen_cfg_options.py /nix/store/xyz-gtnh ./versions/2.8.3/mods
"""

import re
import sys
from pathlib import Path

# Support both development and Nix store contexts
_scripts_dir = Path(__file__).parent
if str(_scripts_dir) not in sys.path:
    sys.path.insert(0, str(_scripts_dir))

from parsers import detect_format, get_parser, KNOWN_HOCON_PATHS
from parsers.ast import Entry, List, Section, Node, ValueType

# These are set in main() when run as a script
PACK_ROOT = None
OPTIONS_OUT = None
CFG_ROOT = None

# Already handled elsewhere
SKIP_DIRS = set()
# Skip files with non-standard formats (recipe files, etc.)
# These use custom formats that can't be represented as Nix options
SKIP_FILES = {'AdvancedSolarPanel_MTRecipes.cfg', 'bees.cfg'}


def get_skip_prefixes():
    """Get skip prefixes (computed at runtime since CFG_ROOT is set in main)."""
    # Skip the RTG biomes subdir (auto-generated), but keep RTG/rtg.cfg
    # Skip ThaumcraftMobAspects (JSON arrays that can't round-trip to Nix)
    # Skip GTNewHorizons (XML with duplicate elements like multiple <Drop>)
    # Skip gendustry/overrides (BDLib custom DSL that can't be represented as Nix options)
    return [CFG_ROOT / "RTG" / "biomes", CFG_ROOT / "ThaumcraftMobAspects", CFG_ROOT / "GTNewHorizons", CFG_ROOT / "gendustry" / "overrides"]


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

def nix_type(vtype: ValueType, is_list=False):
    base = {
        ValueType.BOOL: 'lib.types.bool',
        ValueType.INT: 'lib.types.int',
        ValueType.FLOAT: 'lib.types.float',
        ValueType.STRING: 'lib.types.str',
    }.get(vtype, 'lib.types.str')
    if is_list:
        return f'lib.types.listOf {base}'
    return base

def nix_scalar(vtype: ValueType, raw: str):
    if vtype == ValueType.BOOL:
        return nix_bool(raw)
    if vtype == ValueType.INT:
        val = nix_int(raw)
        if val is None:  # Too large for Nix int, use string
            return nix_str_lit(raw.strip())
        return val
    if vtype == ValueType.FLOAT:
        return nix_float(raw)
    return nix_str_lit(raw)

def nix_scalar_type(vtype: ValueType, raw: str):
    """Return the Nix type for a scalar value, handling int overflow."""
    if vtype == ValueType.INT:
        val = nix_int(raw)
        if val is None:
            return 'lib.types.str'  # Overflow, use string
        return 'lib.types.int'
    return nix_type(vtype)

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

def nix_list(vtype: ValueType, items: list[str]):
    if not items:
        return '[ ]'
    if vtype == ValueType.BOOL:
        vals = ' '.join(nix_bool(x) for x in items)
    elif vtype == ValueType.INT:
        vals = ' '.join(nix_list_int(x) for x in items)
    elif vtype == ValueType.FLOAT:
        vals = ' '.join(nix_list_float(x) for x in items)
    else:
        vals = ' '.join(nix_str_lit(x) for x in items)
    return f'[ {vals} ]'


# ---------------------------------------------------------------------------
# Nix code generator
# ---------------------------------------------------------------------------

def gen_entries(nodes: list[Node], ind: str) -> list[str]:
    """Generate Nix option entries from AST nodes."""
    lines = []
    i2 = ind + '  '
    i3 = ind + '    '
    i4 = ind + '      '

    # Track seen keys to avoid duplicates (Nix doesn't allow duplicate attrs)
    seen_keys = set()

    for node in nodes:
        if isinstance(node, Entry):
            key = node.key
            # Skip duplicates (Nix doesn't allow duplicate attribute keys)
            if key in seen_keys:
                continue
            seen_keys.add(key)

            nk = nix_attr_key(key)
            try:
                nv = nix_scalar(node.type, node.value)
            except Exception:
                nv = nix_str_lit(str(node.value))
            # Use nix_scalar_type for ints to handle overflow
            if node.type == ValueType.INT:
                nt = nix_scalar_type(node.type, node.value)
            else:
                nt = nix_type(node.type)
            lines.append(f'{ind}{nk} = lib.mkOption {{')
            lines.append(f'{i2}type = {nt};')
            lines.append(f'{i2}default = {nv};')
            if node.description:
                lines.append(f'{i2}description = {nix_str_lit(node.description)};')
            lines.append(f'{ind}}};')

        elif isinstance(node, List):
            key = node.key
            # Skip duplicates
            if key in seen_keys:
                continue
            seen_keys.add(key)

            nk = nix_attr_key(key)
            try:
                nv = nix_list(node.type, node.values)
            except Exception:
                nv = '[ ]'
            nt = nix_type(node.type, is_list=True)
            lines.append(f'{ind}{nk} = lib.mkOption {{')
            lines.append(f'{i2}type = {nt};')
            lines.append(f'{i2}default = {nv};')
            if node.description:
                lines.append(f'{i2}description = {nix_str_lit(node.description)};')
            lines.append(f'{ind}}};')

        elif isinstance(node, Section):
            name = node.name
            # Skip duplicates
            if name in seen_keys:
                continue
            seen_keys.add(name)

            nk = nix_attr_key(name)
            lines.append(f'{ind}{nk} = lib.mkOption {{')
            lines.append(f'{i2}default = {{}};')
            if node.description:
                lines.append(f'{i2}description = {nix_str_lit(node.description)};')
            lines.append(f'{i2}type = lib.types.submodule {{')
            lines.append(f'{i2}  options = {{')
            inner = gen_entries(node.children, i2 + '    ')
            lines.extend(inner)
            lines.append(f'{i2}  }};')
            lines.append(f'{i2}}};')
            lines.append(f'{ind}}};')

    return lines


def is_typed_cfg(text):
    """Return True if the cfg file uses Forge type prefixes (B:/I:/D:/F:/S:).
    Files with no typed entries should be rendered with kind="forge_untyped"."""
    return bool(re.search(r'^\s*[BIDFS]:', text, re.MULTILINE))


def gen_cfg_option(opt_name, cfg_path, rel_path, base_indent):
    """Generate a single top-level mkOption block for one config file."""
    ind = '  ' * base_indent
    i2  = ind + '  '
    i3  = ind + '    '
    i4  = ind + '      '

    try:
        text = cfg_path.read_text(errors='replace')
        fmt = detect_format(cfg_path, text, CFG_ROOT)

        parser = get_parser(fmt)
        ast = parser.parse(text)
        nodes = ast.nodes
        root_name = getattr(ast, 'root_name', None)

        # Map format names to kind values
        kind_map = {
            'forge': 'forge',
            'forge_untyped': 'forge_untyped',
            'json': 'json',
            'xml': 'xml',
            'hocon': 'hocon',
            'ini': 'ini',
            'properties': 'properties',
        }
        kind = kind_map.get(fmt, 'forge')
    except Exception as e:
        nodes = []
        kind = "forge"
        root_name = None

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
    # For XML files, include the root element name
    if kind == 'xml' and root_name:
        lines.append(f'{i3}  __root = lib.mkOption {{')
        lines.append(f'{i4}type = lib.types.str;')
        lines.append(f'{i4}default = {nix_str_lit(root_name)};')
        lines.append(f'{i4}readOnly = true;')
        lines.append(f'{i3}  }};')
    inner = gen_entries(nodes, i3 + '  ')
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
    # Skip RTG/biomes, ThaumcraftMobAspects, GTNewHorizons
    for sp in get_skip_prefixes():
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
PROTECTED_STEMS = set()


def main():
    global PACK_ROOT, OPTIONS_OUT, CFG_ROOT

    if len(sys.argv) < 3:
        print(f"Usage: {sys.argv[0]} <pack_root> <output_dir>", file=sys.stderr)
        sys.exit(1)

    PACK_ROOT = Path(sys.argv[1])
    OPTIONS_OUT = Path(sys.argv[2])
    CFG_ROOT = PACK_ROOT / "config"

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
