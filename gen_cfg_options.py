#!/usr/bin/env python3
"""Generate Nix option files from Forge .cfg files."""

import re
import sys
from pathlib import Path

PACK_ROOT = Path("/nix/store/iyigqiz3h7wf7sixmm7cdmnffpdr9fpv-gtnh")
CFG_ROOT = PACK_ROOT / "config"
OPTIONS_OUT = Path("./options/mods")
FLAKE = Path("./flake.nix")

# Already handled elsewhere
SKIP_DIRS = {}
# Skip the RTG biomes subdir (auto-generated), but keep RTG/rtg.cfg
SKIP_PREFIXES = [CFG_ROOT]


# ---------------------------------------------------------------------------
# Nix helpers
# ---------------------------------------------------------------------------

def nix_attr_key(s):
    if re.match(r'^[a-zA-Z_][a-zA-Z0-9_-]*$', s):
        return s
    return '"' + s.replace('\\', '\\\\').replace('"', '\\"') + '"'

def nix_str_lit(s):
    return '"' + s.replace('\\', '\\\\').replace('"', '\\"').replace('${', '\\${') + '"'

def nix_bool(s):
    return 'true' if s.strip().lower() == 'true' else 'false'

def nix_int(s):
    s = s.strip()
    # Some cfg files use float notation for integer values (e.g. "4.0")
    try:
        return str(int(float(s)))
    except (ValueError, OverflowError):
        return s

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
        return nix_int(raw)
    if prefix in ('D', 'F'):
        return nix_float(raw)
    return nix_str_lit(raw)

def nix_list(prefix, items):
    if not items:
        return '[ ]'
    if prefix == 'B':
        vals = ' '.join(nix_bool(x) for x in items)
    elif prefix == 'I':
        vals = ' '.join(nix_int(x) for x in items)
    elif prefix in ('D', 'F'):
        vals = ' '.join(nix_float(x) for x in items)
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

    for item in items:
        kind = item[0]

        if kind == 'entry':
            _, prefix, key, val, desc = item
            nk = nix_attr_key(key)
            try:
                nv = nix_scalar(prefix, val)
            except Exception:
                nv = nix_str_lit(str(val))
            nt = nix_type(prefix)
            lines.append(f'{ind}{nk} = lib.mkOption {{')
            lines.append(f'{i2}type = {nt};')
            lines.append(f'{i2}default = {nv};')
            if desc:
                lines.append(f'{i2}description = {nix_str_lit(desc)};')
            lines.append(f'{ind}}};')

        elif kind == 'list':
            _, prefix, key, vals, desc = item
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


def gen_cfg_option(opt_name, cfg_path, rel_path, base_indent):
    """Generate a single top-level mkOption block for one cfg file."""
    ind = '  ' * base_indent
    i2  = ind + '  '
    i3  = ind + '    '
    i4  = ind + '      '

    try:
        text = cfg_path.read_text(errors='replace')
        tree = parse_cfg(text)
    except Exception as e:
        text = ''
        tree = []

    kind = "forge" if is_typed_cfg(text) else "forge_untyped"
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

def should_skip(p):
    if p.suffix != '.cfg':
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

    for cfg in sorted(CFG_ROOT.rglob('*.cfg')):
        if should_skip(cfg):
            continue

        rel = cfg.relative_to(PACK_ROOT)   # e.g. config/AE2/AE2.cfg
        parts = rel.parts                   # ('config', 'AE2', 'AE2.cfg')

        if len(parts) == 2:
            # top-level: config/forge.cfg
            nix_stem = sanitize_stem(cfg.stem)
            opt_name = cfg.stem
        elif len(parts) == 3:
            # one subdir: config/AppliedEnergistics2/AE2.cfg
            nix_stem = sanitize_stem(parts[1])
            opt_name = cfg.stem
        else:
            # deep: config/cofh/core/common.cfg → nix=cofh, opt=core_common
            nix_stem = sanitize_stem(parts[1])
            opt_name = '_'.join(parts[2:-1]) + '_' + cfg.stem

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
PROTECTED_STEMS = {'GregTech', 'ServerUtilities'}


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
