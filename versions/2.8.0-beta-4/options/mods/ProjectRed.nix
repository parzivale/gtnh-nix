{lib, ...}: {
  ProjectRed = lib.mkOption {
    description = "ProjectRed configuration (./config/ProjectRed.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ProjectRed.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        Compatibility = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "ColoredLights Compat" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ComputerCraft: Bundled Cables" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MFR: Deep Storage" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Storage Drawers" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This allows pipes to recognize storage drawers correctly.";
              };
              "Thermal Expansion: Machine Recipes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Tinkers Construct: Smeltery" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Treecapitator: Gem Axe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        "General Settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enchantment: Fuel Efficiency" = lib.mkOption {
                type = lib.types.int;
                default = 80;
              };
              "Logic Sounds" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Minimum Timer Ticks" = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              "Routed Pipes: Detection Frequency" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Routed Pipes: Max Detection Count" = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              "Routed Pipes: Max Wander Distance" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Routed Pipes: Update Threads" = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              "Simple Framed Wire Recipe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Version Checking" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        "Machine Settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable the Diamond Block Breaker" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Allow the Diamond Block Breaker to be crafted.";
              };
            };
          };
        };
        Modules = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Exploration Module" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Exploration Module.";
              };
            };
          };
        };
        "Render Settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "3D Logic Wires" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Light Halo Render Count" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Routed Pipe FX" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Static Gates" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Static Wires" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        "World Gen" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Copper Ore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Copper Ore resistance" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Copper Ore retrogen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Deviating Lily" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Deviating Lily resistance" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Deviating Lily retrogen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Electrotine Ore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Electrotine Ore resistance" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Electrotine Ore retrogen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Marble Caves" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Marble Caves resistance" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Marble Caves retrogen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Peridot Ore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Peridot Ore resistance" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Peridot Ore retrogen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ruby Ore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ruby Ore resistance" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Ruby Ore retrogen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Sapphire Ore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Sapphire Ore resistance" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Sapphire Ore retrogen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Silver Ore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Silver Ore resistance" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Silver Ore retrogen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Spreading Moss" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Tin Ore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Tin Ore resistance" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Tin Ore retrogen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Volcano resistance" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Volcano retrogen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Volcanos = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
      };
    };
  };
}
