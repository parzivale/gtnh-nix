# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

gtnh-nix is a NixOS Flake that provides declarative configuration for GT New Horizons (GTNH) Minecraft modpack servers. It converts GTNH mod configuration files into typed Nix options, enabling reproducible server deployments across 34+ versions.

## Commands

```bash
# Enter dev environment
nix develop

# Generate Nix options from a GTNH pack
uv run python3 scripts/gen_cfg_options.py <pack_root> <output_dir>

# Regenerate options for all versions
uv run python3 scripts/gen_all_versions.py

# Compare original vs rendered config files (validation)
uv run python3 scripts/normalize.py <original> <rendered>

# Build a specific version package
nix build .#gtnh-2.8.4

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
GTNH Pack configs → gen_cfg_options.py → Nix option files → NixOS module evaluation → mkConfigFile renders → normalize.py validates
```

### Key Files

- `flake.nix` - Entry point; uses flake-parts with perSystem outputs, Haumea for dynamic module loading
- `lib.nix` - Config renderers: `mkConfigFile` dispatches to format-specific renderers (forge, json, xml, hocon, ini, properties)
- `checks.nix` - Validates each mod config by comparing rendered output against originals via `normalize.py`
- `service.nix` - NixOS systemd service definition
- `version-list.nix` - Manifest of all supported versions with SHA hashes and Java requirements

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

## Development Workflows

### Adding a new GTNH version
1. Update `version-list.nix` with version, SHA256, Java version, beta flag
2. Run `nix build .#gtnh-<version>` to fetch pack
3. Run `uv run python3 scripts/gen_all_versions.py`

### Fixing a mod config
1. Edit the mod's `.nix` file in `versions/<version>/mods/`
2. Run `nix flake check` to validate rendering
3. Adjust if `normalize.py` reports mismatches

## Code Conventions

### Nix
- Use `lib.mkOption` with `type`, `default`, `description` for options
- Submodules for nested config sections
- Escape special chars in strings: `\${`, `\\`, `\"`
- Quote attribute keys containing reserved words or special chars
- File names sanitized: `DraconicEvolution.Balance` → `DraconicEvolutionBalance.nix`

### Python (scripts/)
- Underscore prefix for private helper functions
- Format detection via regex patterns
- Graceful fallbacks when parsing fails

## Known Limitations

- **GenDustry** recipes use custom DSL format (not managed via Nix)
- **OpenComputers** HOCON files may not round-trip perfectly
- NixOS tests only run on Linux x86_64/aarch64 (QEMU requirement)
