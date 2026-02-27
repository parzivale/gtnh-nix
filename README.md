# GTNH nix config options

HEAVILY based on [nixos-modded-minecraft-servers](https://github.com/mkaito/nixos-modded-minecraft-servers/tree/master) (Most of the service config is from their repo)

## Known TODOs

The following mods are not yet managed through Nix options because they use config formats incompatible with the Forge key=value renderer:

- **GenDustry** — recipe/upgrade/bee configs use a custom DSL format (`config/gendustry/`)
- **OpenComputers** — uses HOCON format (`config/OpenComputers.cfg`)

These mods fall back to the pack's default config files. Contributions welcome.
