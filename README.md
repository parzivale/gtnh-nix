# GTNH nix config options

HEAVILY based on [nixos-modded-minecraft-servers](https://github.com/mkaito/nixos-modded-minecraft-servers/tree/master) (Most of the service config is from their repo)

# Most of this is Ai Generated not suited for production

# [Documentation](https://parzivale.github.io/gtnh-nix/)

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
