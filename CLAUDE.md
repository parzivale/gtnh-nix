# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

gtnh-nix is a NixOS Flake that provides declarative configuration for GT New Horizons (GTNH) Minecraft modpack servers. It converts GTNH mod configuration files into typed Nix options, enabling reproducible server deployments across 34+ versions.

## Commands

```bash
# Enter dev environment (Rust toolchain only)
nix develop

# Build the Rust tool
cargo build --release

# Generate Nix options from a GTNH pack
./target/release/gtnh-nix gen <pack_root> <output_dir>

# Compare original vs rendered config files (validation)
./target/release/gtnh-nix normalize <original> <rendered>

# Parse a single file and dump its IR (debugging)
./target/release/gtnh-nix parse <parser> <file>

# Build a specific version package
nix build .#gtnh-2.8.4

# Build the gtnh-nix tool as a Nix package
nix build .#gtnh-tool

# Run all checks
nix flake check

# Run checks for a specific version
nix build .#checks.x86_64-linux.2.8.4

# Run NixOS service test
nix build .#checks.x86_64-linux.nixos-service

# Build documentation
nix build .#docs
```

## Architecture

### Code Generation Pipeline

```
GTNH Pack configs → `gtnh-nix gen` → Nix option files → NixOS module evaluation → mkConfigFile renders → `gtnh-nix normalize` validates
```

### Key Files

- `flake.nix` - Entry point; uses flake-parts with perSystem outputs, Haumea for dynamic module loading. Builds the Rust tool via crane.
- `lib.nix` - Config renderers: `mkConfigFile` dispatches to format-specific renderers (forge, json, xml, hocon, ini, properties)
- `checks.nix` - Validates each mod config by comparing rendered output against originals via `gtnh-nix normalize`
- `service.nix` - NixOS systemd service definition
- `version-list.nix` - Manifest of all supported versions with SHA hashes and Java requirements
- `src/` - Rust source: parsers (chumsky-based), `nix_gen` (option generator), `normalize` (semantic comparator)

### Version Structure

Each `versions/<version>/` directory contains:
- `minecraft/` - Core Minecraft options (instance-options.nix, server-properties.nix)
- `mods/` - Generated mod config options (300+ files per version)

Haumea auto-loads these directories, avoiding explicit imports.

### Config Format Support

The system handles multiple config formats, detected by content:
- **Forge**: Type-prefixed `B:/I:/D:/S:` key=value with sections
- **Forge Untyped**: Same without type prefixes
- **HOCON**: JSON-like (OpenComputers)
- **INI**: Sectioned key=value (IC2.ini)
- **JSON/XML/Properties**: Standard formats

Format detection lives in `nix_gen::detect_format_for_file`. The order
of checks matters — Forge type prefixes are tested *before* the
`{`-leading JSON heuristic, otherwise a Forge file whose rendered form
starts with an anonymous `{ }` section gets misrouted to the JSON parser.

### Parser shape

Every parser in `src/parsers/` implements `GTNHParser` (see `src/lib.rs`):

- `lexer()` — `&str` → `Vec<Spanned<LexerToken>>`.
- `parser()` — `&[Spanned<LexerToken>]` → `Spanned<ParserExpr>`.
- `parse(input)` — convenience that runs both and converts the AST into
  the unified `Ir` enum via `From<ParserExpr>`.

The `Ir::Node` variant encodes objects (`attrs=Some, children=None`),
arrays (`attrs=None, children=Some`), and XML elements (both set,
optional `tag`). `Ir::Documented { doc, inner }` wraps a value with a
doc string extracted from a preceding comment block.

### Normalization rules (`src/normalize.rs`)

`gtnh-nix normalize` does *not* compare files byte-for-byte. It applies
these equivalences before diffing:

- Int and Real collapse into a single canonical numeric string
  (`1` ≡ `1.0`).
- `Ir::Null` ≡ the literal string `"None"` (the renderer has no null
  sentinel).
- Bool-shaped strings (case-insensitive `"true"`/`"false"`) compare
  equal to typed bools.
- Empty strings, maps, and lists are dropped from the comparison.
- Lists are compared as sorted multisets (Forge `<>` blocks aren't
  order-stable).
- Maps with all-numeric keys (`"0"`, `"1"`, ...) compare equal to lists
  of those values — needed for the JSON-array-as-submodule trick in
  `lib.nix`.
- Strings have whitespace collapsed (tabs / newlines / NBSP → single
  space, trimmed) and surrounding quotes stripped from keys.

If a normalize check fails, the diff is printed in the form
`- key: type:value` (original) / `+ key: type:value` (rendered).

## Development Workflows

### Adding a new GTNH version
1. Update `version-list.nix` with version, SHA256, Java version, beta flag
2. Run `nix build .#gtnh-<version>` to fetch pack
3. Run `./target/release/gtnh-nix gen $(nix build .#gtnh-<version> --print-out-paths --no-link) versions/<version>/mods`

### Fixing a mod config
1. Edit the mod's `.nix` file in `versions/<version>/mods/`
2. Run `nix flake check` to validate rendering
3. Adjust if `gtnh-nix normalize` reports mismatches

## Code Conventions

### Nix
- Use `lib.mkOption` with `type`, `default`, `description` for options
- Submodules for nested config sections
- Escape special chars in strings: `\${`, `\\`, `\"`
- Quote attribute keys containing reserved words or special chars
- File names sanitized: `DraconicEvolution.Balance` → `DraconicEvolutionBalance.nix`

### Rust (src/)
- chumsky 0.12 parser combinators with a unified `Ir` enum
- Format detection by extension + content heuristics, mirrored in `nix_gen` and `normalize`
- Graceful fallbacks when parsing fails (returns `None`/empty IR rather than panicking)

## Known Limitations

- **GenDustry** recipes use custom DSL format (not managed via Nix)
- **OpenComputers** HOCON files may not round-trip perfectly
- NixOS tests only run on Linux x86_64/aarch64 (QEMU requirement)
