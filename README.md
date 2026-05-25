# GTNH nix config options

HEAVILY based on [nixos-modded-minecraft-servers](https://github.com/mkaito/nixos-modded-minecraft-servers/tree/master) (Most of the service config is from their repo)

# Most of this is Ai Generated not suited for production

## What this is

`gtnh-nix` is a NixOS flake that lets you describe a GT New Horizons
Minecraft server's configuration declaratively in Nix instead of editing
the pack's hundreds of `.cfg` files by hand. Every config option from
the upstream pack (across 33 supported pack versions) is exposed as a
typed `lib.mkOption`, so you can override exactly the keys you want and
let Nix render a complete config tree at activation time.

## Architecture

```
┌────────────────────┐
│  GTNH pack tarball │      (fetched into the Nix store via version-list.nix)
└─────────┬──────────┘
          │ `gtnh-nix gen <pack> <out>`
          ▼
┌────────────────────┐
│ versions/<v>/mods/ │      (one .nix file per mod, lib.mkOption blocks)
│  *.nix             │
└─────────┬──────────┘
          │ imported by flake.nix via haumea
          ▼
┌────────────────────┐
│   NixOS module     │      (options become `programs.gtnh.mods.<mod>.<file>.<key>`)
└─────────┬──────────┘
          │ `mkConfigFile` (lib.nix) renders option values back to source format
          ▼
┌────────────────────┐
│ /var/lib/gtnh/...  │      (server gets a writable copy of the rendered config)
└────────────────────┘
          │ `nix flake check` validates the round-trip:
          │   `gtnh-nix normalize <original> <rendered>`
          ▼
       PASS / FAIL
```

Three Rust subcommands are involved:

- **`gen`** — walks the pack's `config/` directory, dispatches each
  file to the parser for its detected format (see [grammars](#config-format-grammars)),
  and emits one `.nix` file per mod group.
- **`normalize`** — used by `nix flake check`. Parses *both* sides
  (original and Nix-rendered), normalizes whitespace, numeric formatting,
  null/None, sorted lists, etc., and exits non-zero on mismatch.
- **`parse`** — debug helper. Prints the parsed [`Ir`] tree for a single
  file.

The full pipeline (parser ⇄ generator ⇄ renderer ⇄ comparator) is
verified across all 33 versions in CI (see
`.github/workflows/checks.yml`).

## Config Format Grammars

The Rust parsers in `src/parsers/` handle seven config formats. The EBNF below describes the grammar each parser actually accepts — not the upstream spec, but the subset implemented in this project.

### Forge (Typed)

Detected when lines match `^\s*[BIDFS]:`. Parsed by `ForgeParser`.

```ebnf
config       = { line } ;
line         = blank | comment | section | entry | list ;
blank        = { whitespace } , newline ;
comment      = "#" , { any_char } , newline ;

section      = section_head , "{" , newline , config , "}" , newline ;
section_head = quoted_name | bare_name ;
quoted_name  = '"' , { char - '"' } , '"' , whitespace ;
bare_name    = word_start , { word_char | " " | "." | "-" } ;

entry        = type_prefix , key , "=" , value , newline ;
type_prefix  = ( "B" | "I" | "D" | "S" ) , ":" ;
key          = '"' , { char - '"' } , '"'
             | { char - ( "=" | whitespace | '"' | "<" | ">" ) } ;
value        = { any_char } ;

list         = type_prefix , key , "<" , newline ,
               { list_item } ,
               ">" , newline ;
list_item    = { any_char - "#" } , newline ;

(* Multi-line section header: name on one line, "{" on the next *)
section_alt  = key , newline , "{" , newline , config , "}" , newline ;

word_start   = letter | "_" ;
word_char    = letter | digit | "_" ;
whitespace   = " " | "\t" ;
any_char     = ? any character except newline ? ;
newline      = "\n" ;
letter       = "a".."z" | "A".."Z" ;
digit        = "0".."9" ;
```

### Forge (Untyped)

Same parser as typed, but the file has no `[BIDFS]:` prefixed lines. All values are inferred as `STRING`. Detected when content has `"name" {` patterns but no type prefixes.

```ebnf
(* Identical to Forge Typed except entries omit the type prefix *)
entry_untyped  = key , "=" , value , newline ;
key            = '"' , { char - '"' } , '"'
               | { char - ( ":" | "=" | "{" | "}" | "<" | ">" | whitespace ) } ;

(* Untyped lists also omit the type prefix *)
list_untyped   = key , "<" , newline ,
                 { list_item } ,
                 ">" , newline ;

(* Sections, comments, blanks are the same as Forge Typed *)
```

### INI

Detected when content has `^\s*\[section\]` headers and no Forge type prefixes. Tolerates CRLF and `\r\r\n` line endings (some older GTNH `IC2.ini` files).

```ebnf
ini_file   = { blank | comment | section } ;
blank      = { whitespace } , newline ;
comment    = ( "#" | ";" ) , { any_char } , newline ;

section    = header , { blank | comment | entry } ;
header     = "[" , section_name , "]" , newline ;
section_name = { char - ( "]" | newline ) } ;

entry      = key , "=" , value , newline ;
key        = { char - ( "=" | newline ) } ;
value      = { any_char } ;

(* Values are type-inferred: true/false/yes/no/on/off → bool,
   integer literals → int, float literals → float, else string *)
```

### JSON

Detected by `.json` extension or content starting with `{`/`[`. Follows RFC 8259.

```ebnf
(* Standard JSON — RFC 8259 *)
json       = object | array ;
object     = "{" , [ member , { "," , member } ] , "}" ;
member     = string , ":" , json_value ;
array      = "[" , [ json_value , { "," , json_value } ] , "]" ;
json_value = string | number | object | array | "true" | "false" | "null" ;
string     = '"' , { json_char } , '"' ;
number     = [ "-" ] , int_part , [ frac_part ] , [ exp_part ] ;
int_part   = "0" | ( digit_nz , { digit } ) ;
frac_part  = "." , { digit } ;
exp_part   = ( "e" | "E" ) , [ "+" | "-" ] , { digit } ;
json_char  = ? any unicode char except '"' and '\', or an escape sequence ? ;
digit      = "0".."9" ;
digit_nz   = "1".."9" ;

(* Arrays of objects are mapped to ObjectList nodes with a merged schema.
   Mixed-type arrays produce lib.types.anything in the generated Nix. *)
```

### XML

Detected by `.xml` extension. Subset of XML 1.0 — entity references (`&amp;`, `&lt;`, `&quot;`, `&#NNN;`) are decoded in text and attribute values.

```ebnf
(* Standard XML 1.0, subset accepted by ElementTree *)
document   = element ;
element    = empty_elem | open_close_elem ;
empty_elem = "<" , name , { attribute } , "/>" ;
open_close_elem = "<" , name , { attribute } , ">" ,
                  ( text | { element } ) ,
                  "</" , name , ">" ;
attribute  = name , "=" , '"' , attr_value , '"' ;
name       = name_start , { name_char } ;
name_start = letter | "_" ;
name_char  = letter | digit | "." | "-" | "_" ;
text       = { char - "<" } ;
attr_value = { char - '"' } ;

(* Attributes become @-prefixed keys in the AST.
   Duplicate sibling tags are suffixed: tag_0, tag_1, ... *)
```

### HOCON

Detected for known paths (e.g., `OpenComputers.cfg`) or content with `key {` + `key =` patterns. HOCON preserves the int/float distinction (unlike JSON).

```ebnf
(* HOCON — Human-Optimized Config Object Notation *)
(* Accepted subset of JSON-like HOCON *)
root       = { member } ;
member     = key , ( "=" | ":" | whitespace ) , hocon_value , [ newline ]
           | key , object ;
key        = unquoted_key | quoted_key ;
unquoted_key = { char - ( "=" | ":" | "{" | "}" | "[" | "]" | whitespace ) } ;
quoted_key = '"' , { char - '"' } , '"' ;

hocon_value = string | number | bool | "null" | array | object ;
object     = "{" , { member } , "}" ;
array      = "[" , [ hocon_value , { ( "," | newline ) , hocon_value } ] , "]" ;
string     = '"' , { char - '"' } , '"'
           | unquoted_string ;
unquoted_string = { char - ( "," | "}" | "]" | newline ) } ;
number     = [ "-" ] , digits , [ "." , digits ] , [ ( "e" | "E" ) , [ "+" | "-" ] , digits ] ;
bool       = "true" | "false" ;
digits     = digit , { digit } ;

(* Supports // and # line comments.
   Braceless top-level objects (the root file behaves as an implicit object). *)
```

### Properties

Detected by `.properties` extension or simple `key=value` content with no sections/braces. Parsed line-by-line.

```ebnf
properties = { blank | comment | entry } ;
blank      = { whitespace } , newline ;
comment    = ( "#" | "!" ) , { any_char } , newline ;

entry      = key , ( "=" | ":" ) , value , newline ;
key        = { char - ( "=" | ":" | newline ) } ;
value      = { any_char } ;

(* Values are type-inferred: true/false → bool,
   integer literals → int, float literals → float, else string.
   The Nix renderer flattens nested attrsets with dot-separated keys:
   a.b.c = value → "a.b.c=value" *)
```

## Known TODOs

The following mods are not yet fully managed through Nix options:

- **GenDustry** — recipe/upgrade/bee configs use a custom DSL format
  (`config/gendustry/`) that no parser in this project handles. These
  files fall back to the pack's defaults.
- **OpenComputers** — uses HOCON (`config/OpenComputers.cfg`). The
  HOCON parser does parse it, but some files don't round-trip
  perfectly; treat OC option overrides as best-effort.

Contributions welcome.

# Usage

Add the following to your flake.nix inputs

```nix
  gtnh-nix = {
    url = "github:parzivale/gtnh-nix";
    inputs.nixpkgs.follows = "nixpkgs";
  };
```

And add the overlay to your overlays

```nix
nixpkgs.overlays = [
  inputs.gtnh-nix.overlays.default
];
```

import the version module you want (each one already includes the
service definition; there's no separate base module):

```nix
imports = [inputs.gtnh-nix.nixosModules."2.8.4"];
```

Available version modules with configuration options:

- `2.8.4`, `2.8.3`, `2.8.2`, `2.8.1`, `2.8.0`
- `2.8.0-rc-2`, `2.8.0-rc-1`, `2.8.0-beta-4`, `2.8.0-beta-3`, `2.8.0-beta-2`, `2.8.0-beta-1`
- `2.7.4`, `2.7.3`, `2.7.2`, `2.7.1`, `2.7.0`
- `2.7.0-RC-3`, `2.7.0-RC-2`, `2.7.0-RC-1`, `2.7.0-beta-4`, `2.7.0-beta-3`, `2.7.0-beta-2`, `2.7.0-beta-1`
- `2.6.1`, `2.6.0`, `2.6.0-beta-3`, `2.6.0-beta-2`, `2.6.0-beta-1`
- `2.5.1`, `2.5.0`, `2.5.0-beta-1`
- `2.4.1`, `2.4.0`

And then enable GTNH!

```nix
programs.gtnh.enable = true;
```

## Overriding mod config options

Every key the upstream pack writes to `config/<mod>/<file>.cfg` is
exposed under `programs.gtnh.mods.<mod>.<file>.<key>`. For example, to
flip an AE2 channel-mode flag:

```nix
programs.gtnh.enable = true;
programs.gtnh.mods.AE2.AE2_cfg.general.disableColoredCableRecipesInNEI = true;
```

The exact path depends on how the config groups in the version's
`mods/` directory. Browse `versions/<your-version>/mods/` (or the
generated docs) to find the option name. Option keys mirror the
config-file structure: the section name becomes a sub-attrset, the key
name becomes the leaf attribute.

## Development

### Adding a new pack version

1. Add an entry to `version-list.nix` with the version string, the
   pack tarball's SHA256 (use `nix-prefetch-url` or `nix store
   prefetch-file` to compute it), the required Java version, and a
   `beta = true;` flag if it's a beta/RC.
2. Fetch the pack into the Nix store:
   ```bash
   nix build .#gtnh-<version>
   ```
3. Generate the mod options into a new directory:
   ```bash
   PACK=$(nix build .#gtnh-<version> --print-out-paths --no-link)
   mkdir -p versions/<version>/mods
   ./target/release/gtnh-nix gen "$PACK" versions/<version>/mods
   ```
4. Validate the round-trip:
   ```bash
   nix build .#checks.x86_64-linux.<version>
   ```
   If `gtnh-nix normalize` reports a mismatch, either the generator
   missed a quirk in the source format or `lib.nix`'s renderer needs
   adjusting. The fix usually lives in `lib.nix`.

### Fixing a mod config mismatch

1. Run `nix build .#checks.x86_64-linux.<version>` and read the `MISMATCH:`
   diff at the bottom of the failing log. The output is in the form
   `- key: type:value` (original) / `+ key: type:value` (rendered).
2. Inspect the offending file under `versions/<version>/mods/<group>.nix`
   and compare against the upstream source.
3. Fix-up options usually mean: a special character that needs escaping
   in the Nix string, a Forge value type that was misdetected (e.g.
   `S:foo=176.0` parsed as Real instead of Str), or a section/key the
   generator skipped.

### Dev shell

Enter the dev shell (Rust toolchain only):

```bash
nix develop
```

The shell provides `rustToolchain`, `rust-analyzer`, and
`cargo-llvm-cov`. There are no Python or other runtime dependencies.

Build the tool:

```bash
cargo build --release
```

### Tool commands

Generate Nix options from a GTNH pack:

```bash
./target/release/gtnh-nix gen <pack_root> <output_dir>
```

Compare an original vs a rendered config file (used by `nix flake check`):

```bash
./target/release/gtnh-nix normalize <original> <rendered>
```

Parse a single file with a specific parser and dump the IR (debugging):

```bash
./target/release/gtnh-nix parse <forge|hocon|json|xml|ini|properties> <file>
```

The same binary is also available as a Nix package:

```bash
nix build .#gtnh-tool
./result/bin/gtnh-nix --help
```

### Configuration option docs

Every mod's config options are rendered into a per-version mdbook.
There's no hosted site — the rendered docs are too large for GitHub
Pages (GregTech alone produces a ~109 MB single page, over the 100 MB
per-file cap). Build them locally:

```bash
nix build .#docs
xdg-open result/index.html
```

The result is a landing page with one mdbook per version, each with
search across that version's ~180 mod-option pages.

### Rust API docs

Every module under `src/` is rustdoc'd. To browse the API locally:

```bash
cargo doc --no-deps --open
```

The high-level entry points are:

- [`gtnh_nix::Ir`] — the unified IR every parser produces.
- [`gtnh_nix::GTNHParser`] — the trait each parser implements
  (lexer + parser two-stage).
- [`gtnh_nix::parsers`] — one submodule per format
  (`forge`, `hocon`, `ini`, `json`, `properties`, `xml`).
- [`gtnh_nix::nix_gen`] — file discovery, format detection, and
  `lib.mkOption` emission.
- [`gtnh_nix::normalize`] — semantic-equivalence comparator.

### Repository layout

```
flake.nix              # Flake outputs; uses haumea to auto-load versions
lib.nix                # mkConfigFile: renderers for forge/json/xml/hocon/...
                       # also mkVersionDocs / allDocs for the mdbook
checks.nix             # Per-version validation via `gtnh-nix normalize`
service.nix            # NixOS systemd service definition
nixos-test.nix         # NixOS VM test (qemu, Linux only)
version-list.nix       # Manifest: version -> SHA256, Java, beta flag
src/                   # Rust source
  lib.rs               # Crate root, Ir enum, GTNHParser trait
  main.rs              # CLI entry point (gen / normalize / parse)
  nix_gen.rs           # File discovery, format detection, mkOption emission
  normalize.rs         # Semantic-equivalence comparator
  parsers/             # One submodule per format
    forge.rs           # Forge typed/untyped .cfg
    hocon.rs           # HOCON (.conf, OpenComputers.cfg)
    ini.rs             # [section]-headed INI
    json.rs            # RFC 8259 JSON
    properties.rs      # Java .properties
    xml.rs             # XML 1.0 subset
versions/<version>/    # Generated per-pack option definitions
  minecraft/           #   Core MC options (server.properties etc.)
  mods/                #   300+ generated mod option files
tests/                 # Rust integration tests
.github/workflows/     # CI: flake checks per version, tool build
```
