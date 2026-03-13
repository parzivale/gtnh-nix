{lib, ...}: {
  GraviSuite_cfg = lib.mkOption {
    description = "GraviSuite_cfg configuration (./config/GraviSuite.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GraviSuite.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "additional tweaks" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              EpicLapPackChargeTickChance = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              MaxToolLevelAvailable = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              ThisIsAHackedMod = lib.mkOption {
                type = lib.types.str;
                default = "i know and its ok";
              };
              AllowedShieldBoots = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "EMT:QuantumBootsTraveller" "thaumicboots:item.ItemQuantumComet" "thaumicboots:item.ItemQuantumVoid" "thaumicboots:item.ItemQuantumMeteor" ];
                description = "These items can be used in place of the Quantum Boots and still allow the usage of the Quantum Shield [default: [EMT:QuantumBootsTraveller]]";
              };
            };
          };
        };
        "hud settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Display hud" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              hudPosition = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        "recipes settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Disable Advanced Chainsaw recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable Advanced Dimond Drill recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable Advanced Jetpack recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable Advanced NanoChestPlate recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable AdvancedLappack recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable Basic recipes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable EpicLappack recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable GraviChestPlate recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable GraviTool recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable Nanobot recipe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Disable Relocator recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable UltimateLappack recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable UltimateSolarHelmet recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable Vajra recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        "relocator settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Disable portal mode" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Disable translocator mode" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              relocatorEnergyPerDimesionTp = lib.mkOption {
                type = lib.types.int;
                default = 5000000;
              };
              relocatorEnergyPerPortal = lib.mkOption {
                type = lib.types.int;
                default = 2500000;
              };
              relocatorEnergyPerStandartTp = lib.mkOption {
                type = lib.types.int;
                default = 2500000;
              };
              relocatorEnergyPerTranslocator = lib.mkOption {
                type = lib.types.int;
                default = 2000000;
              };
            };
          };
        };
        "sounds settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Disable all sounds" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        "vajra settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Disable Vajra accurate mode" = lib.mkOption {
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
