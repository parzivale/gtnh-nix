{lib, ...}: {
  GalacticGreg = lib.mkOption {
    description = "GalacticGreg configuration (./config/GalacticGreg/GalacticGreg.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GalacticGreg/GalacticGreg.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        buildinmods = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              RegisterGalacticCraftCore = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              RegisterGalacticCraftPlanets = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              RegisterGalaxySpace = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              RegisterVanillaDim = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        debug = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              PrintDebugMessagesToFMLLog = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable debug output, not recommended for servers [default: false]";
              };
              PrintTraceMessagesToFMLLog = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable trace output. Warning: This will produce gazillions of log entries [default: false]";
              };
              ProfileOreGen = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable to profile oregen and register the ingame command ggregprofiler [default: false]";
              };
              QuietMode = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "In quiet-mode only errors, warnings and fatals will be printed to the logfile/console [default: false]";
              };
              ReportOreGenFailures = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Report if a ore tileentity could not be placed [default: false]";
              };
            };
          };
        };
        extras = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              CustomLootChest = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Define the chest you wish to use as LootChest. use the <ModID>:<Name>:<meta> format or leave empty for the default Minecraft Chest [default: ]";
              };
              EnableAEExportCommand = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If set to true, you can export any structure stored on a AE2 spatial storage disk. (Can't be spawned yet, WiP). Requires SchematicsEnabled to be true [default: false]";
              };
              LootChestsEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables/disables the dungeon-chest generator system for asteroids. New config values will be generated if set to true [default: true]";
              };
              SchematicsEnabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable the experimental Schematics-handler to spawn exported schematics in dimensions. This is WiP, use at own risk [default: false]";
              };
            };
          };
        };
        main = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              IHaveConfiguredEverything = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
      };
    };
  };
}
