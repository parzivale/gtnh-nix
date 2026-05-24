# GTNH nix config options

HEAVILY based on [nixos-modded-minecraft-servers](https://github.com/mkaito/nixos-modded-minecraft-servers/tree/master) (Most of the service config is from their repo)

# Most of this is Ai Generated not suited for production

# [Documentation](https://parzivale.github.io/gtnh-nix/)

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

The following mods are not yet managed through Nix options because they use config formats incompatible with the Forge key=value renderer:

- **GenDustry** — recipe/upgrade/bee configs use a custom DSL format (`config/gendustry/`)
- **OpenComputers** — uses HOCON format (`config/OpenComputers.cfg`)
  These mods fall back to the pack's default config files. Contributions welcome.

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

import the base module and whichever version module you like

```nix
imports = with inputs.gtnh-nix; [nixosModules.gtnh nixosModules."2.8.4"];
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

## Development

Enter the dev shell (Rust toolchain only):

```bash
nix develop
```

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
