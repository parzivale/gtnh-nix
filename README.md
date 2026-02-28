#zy GTNH nix config options

HEAVILY based on [nixos-modded-minecraft-servers](https://github.com/mkaito/nixos-modded-minecraft-servers/tree/master) (Most of the service config is from their repo)

## Known TODOs

The following mods are not yet managed through Nix options because they use config formats incompatible with the Forge key=value renderer:

- **GenDustry** — recipe/upgrade/bee configs use a custom DSL format (`config/gendustry/`)
- **OpenComputers** — uses HOCON format (`config/OpenComputers.cfg`)
- **CodeChickenCore** - Doesn't use proper type specifiers???
- **EnderStorage** - Same issue as CodeChickenCore
- **multiPart** - Same issue as CodeChickenCore
- **RougeLikeDungeons** - Same issue as CodeChickenCore

These mods fall back to the pack's default config files. Contributions welcome.

# Usage
Add the following to your flake.nix inputs
´´´nix
  gtnh-nix = {
    url = "github:parzivale/gtnh-nix";
    inputs.nixpkgs.follows = "nixpkgs";
  };

´´´

And add the overlay to your overlays

´´´nix
nixpkgs.overlays = [
  inputs.niri-flake.overlays.niri
  inputs.gtnh-nix.overlays.default
];
´´´

And then enable GTNH!

´´´nix
programs.gtnh.enable = true;

´´´
