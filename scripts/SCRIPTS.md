# GTNH-Nix Scripts Documentation

This document describes the Python scripts used to generate and validate Nix options from GTNH config files.

## Overview

```
GTNH Server Pack
      │
      ▼
gen_cfg_options.py ──► .nix option files
      │
      ▼
lib.nix renders ──► config files
      │
      ▼
normalize.py ──► validates match
```

## Scripts

| Script | Purpose |
|--------|---------|
| `gen_cfg_options.py` | Parse config files → generate Nix options |
| `gen_all_versions.py` | Run gen_cfg_options.py for all GTNH versions |
| `normalize.py` | Compare original vs rendered configs for validation |

---

## gen_cfg_options.py

Parses Minecraft mod config files and generates NixOS module options.

### Usage

```bash
python3 gen_cfg_options.py <pack_root> <output_dir>

# Example
python3 gen_cfg_options.py /nix/store/xyz-gtnh-2.8.4 ./versions/2.8.4/mods
```

### Supported Formats

| Format | Extension | Detection | Example |
|--------|-----------|-----------|---------|
| Forge | `.cfg` | Has `B:`/`I:`/`D:`/`S:` prefixes | `B:enabled=true` |
| Forge Untyped | `.cfg` | Has `{ }` sections, no prefixes | `key=value` |
| HOCON | `.cfg` | Known files (OpenComputers.cfg) | `key { nested = value }` |
| INI | `.ini` | Has `[section]` headers | `[section]\nkey=value` |
| JSON | `.json` | Starts with `{` or `[` | `{"key": "value"}` |
| XML | `.xml` | XML extension | `<root attr="val"/>` |
| Properties | `.properties` | Simple `key=value` | `key=value` |

### Skip Configuration

Files/directories that are skipped:

| Skip Type | Values | Reason |
|-----------|--------|--------|
| `SKIP_PREFIXES` | `RTG/biomes` | Auto-generated, too numerous |
| | `ThaumcraftMobAspects` | JSON arrays can't round-trip |
| | `GTNewHorizons` | XML has duplicate element names |
| `SKIP_FILES` | `AdvancedSolarPanel_MTRecipes.cfg` | Custom recipe DSL format |
| `KNOWN_HOCON_PATHS` | `OpenComputers.cfg` | Force HOCON parsing |

### Output Structure

Each mod gets a `.nix` file:

```nix
{lib, ...}: {
  configName_cfg = lib.mkOption {
    description = "...";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption { default = "./config/..."; readOnly = true; };
        kind = lib.mkOption { default = "forge"; readOnly = true; };

        # Parsed config options
        sectionName = lib.mkOption {
          type = lib.types.submodule {
            options = {
              boolOption = lib.mkOption { type = lib.types.bool; default = true; };
              intOption = lib.mkOption { type = lib.types.int; default = 42; };
            };
          };
        };
      };
    };
  };
}
```

### Internal Data Structure

Config files are parsed into a tree of tuples:

```python
# Entry (single value)
('entry', 'B', 'enabled', 'true', 'Enable this feature')
#        type  key       value   description

# List (array)
('list', 'S', 'items', ['a', 'b', 'c'], 'List of items')
#       type  key      values          description

# Section (nested block)
('section', 'general', [<children>], 'General settings')
#           name       child items   description
```

### Type Prefixes

Forge config type prefixes map to Nix types:

| Prefix | Forge Type | Nix Type |
|--------|------------|----------|
| `B` | Boolean | `lib.types.bool` |
| `I` | Integer | `lib.types.int` |
| `D` | Double | `lib.types.float` |
| `F` | Float | `lib.types.float` |
| `S` | String | `lib.types.str` |

### File Grouping

Config files are grouped into .nix files by mod:

| Config Path | Nix File | Option Name |
|-------------|----------|-------------|
| `config/forge.cfg` | `forge.nix` | `forge_cfg` |
| `config/AE2/AE2.cfg` | `AE2.nix` | `AE2_cfg` |
| `config/cofh/core/common.cfg` | `cofh.nix` | `core_common_cfg` |

### Key Functions

| Function | Purpose |
|----------|---------|
| `parse_cfg(text)` | Parse Forge config into tree |
| `parse_json(text)` | Parse JSON into tree |
| `parse_xml(text)` | Parse XML into tree |
| `parse_hocon(text)` | Parse HOCON into tree |
| `parse_ini(text)` | Parse INI into tree |
| `parse_properties(text)` | Parse properties into tree |
| `detect_format(path, text)` | Determine which parser to use |
| `gen_entries(items, indent)` | Convert tree to Nix code |
| `gen_nix_file(entries)` | Generate complete .nix file |
| `collect()` | Find and group all config files |

---

## gen_all_versions.py

Orchestrates generation for all GTNH versions defined in `version-list.nix`.

### Usage

```bash
python3 gen_all_versions.py [--force]

# Options
#   -f, --force    Regenerate even if mods directory exists
```

### Process

1. Load versions from `version-list.nix`
2. For each version:
   - Skip if mods directory exists (unless `--force`)
   - Download server pack from GTNH website
   - Extract to temp directory
   - Run `gen_cfg_options.py`
   - Copy `minecraft/` options from reference version
   - Copy `default.nix` from reference version

### Configuration

| Constant | Value | Purpose |
|----------|-------|---------|
| `BASE_URL` | `downloads.gtnewhorizons.com/ServerPacks` | Download location |
| `REFERENCE_VERSION` | `2.8.4` | Source for minecraft/ and default.nix |

---

## normalize.py

Compares original config files against rendered output to validate correctness.

### Usage

```bash
python3 normalize.py <original> <rendered>

# Exit codes
#   0 = Match
#   1 = Mismatch (prints diff)
```

### Normalization

Both files are parsed and normalized before comparison:

| Normalization | Example |
|---------------|---------|
| Deduplicate keys | Keep last occurrence (Forge behavior) |
| Normalize booleans | `0`/`1` → `false`/`true` |
| Normalize numbers | Scientific notation, trailing zeros |
| Sort entries | Alphabetical by path |

### Output Format

Entries are formatted as:
```
path.to.key=TYPE:value
section.nested.option=B:true
array.values=S:<item1,item2,item3>
```

### Format Detection

Uses same detection as `gen_cfg_options.py`, plus handles Nix store hash prefixes:

```
Original: /nix/store/xxx/config/OpenComputers.cfg
Rendered: /nix/store/abc123-OpenComputers.cfg
          ^^^^^^ hash prefix handled
```

### Key Functions

| Function | Purpose |
|----------|---------|
| `parse_config(path)` | Parse Forge config |
| `parse_json_config(path)` | Parse JSON |
| `parse_xml_config(path)` | Parse XML |
| `parse_hocon_config(path)` | Parse HOCON |
| `parse_ini_config(path)` | Parse INI |
| `parse_properties_config(path)` | Parse properties |
| `format_entries(entries)` | Normalize and format for comparison |
| `normalize_bool(value)` | Convert 0/1 to false/true |
| `normalize_number(value)` | Normalize numeric strings |

---

## Data Flow

### Generation Flow

```
1. collect()
   └── Find all config files in pack
   └── Group by mod name
   └── Filter out skipped files

2. For each mod group:
   └── gen_nix_file(entries)
       └── For each config file:
           └── detect_format() → parser selection
           └── parse_*() → tree structure
           └── gen_cfg_option() → Nix code
               └── gen_entries() → recursive option generation

3. Write .nix files to output directory
```

### Validation Flow

```
1. Nix module evaluation
   └── Load generated options
   └── Apply defaults

2. lib.nix rendering
   └── mkConfigFile() dispatches by kind
   └── mkForgeFile() / mkXmlFile() / etc.

3. normalize.py comparison
   └── Parse original file
   └── Parse rendered file
   └── Deduplicate and normalize both
   └── Compare formatted output
```

---

## Adding Support for New Formats

1. Create parser function:
```python
def parse_newformat(text):
    """Parse newformat into tree structure."""
    items = []
    # ... parsing logic ...
    # Return list of ('entry'|'list'|'section', ...) tuples
    return items
```

2. Add format detection in `detect_format()`:
```python
if suffix == '.newext':
    return 'newformat'
```

3. Add to parser dispatch in `gen_cfg_option()`:
```python
elif fmt == 'newformat':
    tree = parse_newformat(text)
    kind = "newformat"
```

4. Add renderer in `lib.nix`:
```nix
mkNewformatFile = attrs: ...;
```

5. Add to `mkConfigFile` dispatch in `lib.nix`

6. Add parser in `normalize.py` for validation
