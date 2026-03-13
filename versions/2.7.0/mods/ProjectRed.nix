{lib, ...}: {
  ProjectRed_cfg = lib.mkOption {
    description = "ProjectRed_cfg configuration (./config/ProjectRed.cfg)";
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
                description = "This makes things emit colored light. CLC is in beta state and may cause minor rendering glitches.";
              };
              "ComputerCraft: Bundled Cables" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This allows computers to connect to bundled cables with the RS API";
              };
              "MFR: Deep Storage" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This allows pipes to recoginze MFR Deep storage units correctly.";
              };
              "Thermal Expansion: Machine Recipes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This adds recipes to machines";
              };
              "Tinkers Construct: Smeltery" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This adds recipes to the smeltery.";
              };
              "Treecapitator: Gem Axe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This allows gem axes to work with treecapitator.";
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
                description = "ID for the Jetpack Fuel Efficiency enchantment.";
              };
              "Logic Sounds" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false, logic gates will not make sounds.";
              };
              "Minimum Timer Ticks" = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Minimum amount of ticks the timer gates can be set to. Cannot be lower than 4.";
              };
              "Routed Pipes: Detection Frequency" = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "Ticks between router searches.";
              };
              "Routed Pipes: Max Detection Count" = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Max number of pipes to explore when connecting to other routers.";
              };
              "Routed Pipes: Max Wander Distance" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Maximum distance an item may aimlessly wander in a pipe before being erased. 0 for unlimited.";
              };
              "Routed Pipes: Update Threads" = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Number of active route table update threads.";
              };
              "Simple Framed Wire Recipe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If set to true, sticks will be used instead of wood strips in framed wire recipes.";
              };
              "Version Checking" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If set to true, you will be alerted when a newer version of PR is available.";
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
                description = "If set to false, flat wire textures will be used for logic gates. Significant performance improvement.";
              };
              "Light Halo Render Count" = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Number of lights to render, -1 for unlimited";
              };
              "Routed Pipe FX" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false, routed pipes will not render routing fx such as bubbles and lasers.";
              };
              "Static Gates" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false, gates will be rendered in the TESR rather than the WorldRenderer.";
              };
              "Static Wires" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false, wires will be rendered in the TESR rather than the WorldRenderer.";
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
