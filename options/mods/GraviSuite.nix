{lib, ...}: {
  GraviSuite = lib.mkOption {
    description = "GraviSuite configuration (./config/GraviSuite.cfg)";
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
              AdvChainsawAdditionalMineableBlocks = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "minecraft:leaves" "minecraft:wool" "minecraft:melon_block" "minecraft:cactus" "minecraft:snow" "IC2:blockRubLeaves" ];
                description = "List of blocks the Advanced Chainsaw should be able to break. (Note: The Advanced Chainsaw can also break the same blocks as Diamond Axe and Diamond Sword) [default: [minecraft:leaves], [minecraft:wool], [minecraft:melon_block], [minecraft:cactus], [minecraft:snow], [IC2:blockRubLeaves]]";
              };
              AllowedShieldBoots = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "EMT:QuantumBootsTraveller" "thaumicboots:item.ItemQuantumComet" "thaumicboots:item.ItemQuantumVoid" "thaumicboots:item.ItemQuantumMeteor" ];
                description = "These items can be used in place of the Quantum Boots and still allow the usage of the Quantum Shield [default: [EMT:QuantumBootsTraveller]]";
              };
              AllowedShieldHelmets = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "AdvancedSolarPanel:hybrid_solar_helmet" "AdvancedSolarPanel:ultimate_solar_helmet" "EMT:QuantumGogglesRevealing" "EMT:SolarHelmetRevealing" ];
                description = "These items can be used in place of the Quantum Helmet and still allow the usage of the Quantum Shield [default: [AdvancedSolarPanel:hybrid_solar_helmet], [AdvancedSolarPanel:ultimate_solar_helmet], [EMT:QuantumGogglesRevealing], [EMT:SolarHelmetRevealing]]";
              };
              AllowedShieldLeggins = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "These items can be used in place of the Quantum Leggins and still allow the usage of the Quantum Shield [default: ]";
              };
              EpicLapPackChargeTickChance = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "The chance each tick that the epic lappack will scan a players inventory for chargeable items. 1 means it will scan every tick and thus charge a lot quicker. 20 is about each second [range: 1 ~ 999, default: 10]";
              };
              MaxToolLevelAvailable = lib.mkOption {
                type = lib.types.int;
                default = 9;
                description = "Set the maximum tool-level here. Only required if you have Tinkers/Iguana and want pretty tooltips [range: 0 ~ 999, default: 3]";
              };
              PlasmaLauncherFluids = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "List of fluids usable in the Plasma Launcher. Formatting: fluidName:damageMultiplier [default: ]";
              };
              ThisIsAHackedMod = lib.mkOption {
                type = lib.types.str;
                default = "i know and its ok";
              };
              hoverModeFallSpeed = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Max speed at which the player falls when wearing an Advanced Jetpack using hover-mode (GS default is 0.03) [range: 0.0 ~ 1.0, default: 0.0]";
              };
              xpGainFactor = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "Base XP factor for levelable tools. Needed XP for the next level is xpGainFactor*(currentLevel + 1)^2 [range: 1 ~ 150000000, default: 10000]";
              };
            };
          };
        };
        "armor presets" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              advjetpack = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    absorptionRatio = lib.mkOption {
                      type = lib.types.float;
                      default = 0.0;
                      description = "How much damage this armor pieve can absorb [range: 0.0 ~ 1.0, default: 0.0]";
                    };
                  };
                };
              };
              advlappack = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    absorptionRatio = lib.mkOption {
                      type = lib.types.float;
                      default = 0.0;
                      description = "How much damage this armor pieve can absorb [range: 0.0 ~ 1.0, default: 0.0]";
                    };
                  };
                };
              };
              advnanochestplate = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    absorptionRatio = lib.mkOption {
                      type = lib.types.float;
                      default = 0.36;
                      description = "How much damage this armor pieve can absorb [range: 0.0 ~ 1.0, default: 0.36]";
                    };
                  };
                };
              };
              gravichestplate = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    absorptionRatio = lib.mkOption {
                      type = lib.types.float;
                      default = 0.44;
                      description = "How much damage this armor pieve can absorb [range: 0.0 ~ 1.0, default: 0.44]";
                    };
                  };
                };
              };
            };
          };
        };
        "electric presets" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              advjetpack = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    EnergyPerOperation = lib.mkOption {
                      type = lib.types.int;
                      default = 12;
                      description = "How many Energy Units this item will consume per operation (items with multiple modes may consume a different amount) [range: 0 ~ 2147483647, default: 12]";
                    };
                    MaxCharge = lib.mkOption {
                      type = lib.types.int;
                      default = 3000000;
                      description = "How many Energy Units this item is able to store [range: 0 ~ 2147483647, default: 3000000]";
                    };
                    Tier = lib.mkOption {
                      type = lib.types.int;
                      default = 3;
                      description = "This item's electric tier [range: 0 ~ 14, default: 3]";
                    };
                    TransferLimit = lib.mkOption {
                      type = lib.types.int;
                      default = 3000;
                      description = "How many Energy Units can be stored in/retrieved from this item per transfer [range: 0 ~ 2147483647, default: 3000]";
                    };
                  };
                };
              };
              advchainsaw = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    EnergyPerOperation = lib.mkOption {
                      type = lib.types.int;
                      default = 100;
                      description = "How many Energy Units this item will consume per operation (items with multiple modes may consume a different amount) [range: 0 ~ 2147483647, default: 100]";
                    };
                    MaxCharge = lib.mkOption {
                      type = lib.types.int;
                      default = 1000000;
                      description = "How many Energy Units this item is able to store [range: 0 ~ 2147483647, default: 1000000]";
                    };
                    Tier = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                      description = "This item's electric tier [range: 0 ~ 14, default: 2]";
                    };
                    TransferLimit = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                      description = "How many Energy Units can be stored in/retrieved from this item per transfer [range: 0 ~ 2147483647, default: 500]";
                    };
                  };
                };
              };
              advdrill = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    EnergyPerOperation = lib.mkOption {
                      type = lib.types.int;
                      default = 3333;
                      description = "How many Energy Units this item will consume per operation (items with multiple modes may consume a different amount) [range: 0 ~ 2147483647, default: 3333]";
                    };
                    MaxCharge = lib.mkOption {
                      type = lib.types.int;
                      default = 10000000;
                      description = "How many Energy Units this item is able to store [range: 0 ~ 2147483647, default: 10000000]";
                    };
                    Tier = lib.mkOption {
                      type = lib.types.int;
                      default = 4;
                      description = "This item's electric tier [range: 0 ~ 14, default: 4]";
                    };
                    TransferLimit = lib.mkOption {
                      type = lib.types.int;
                      default = 100000;
                      description = "How many Energy Units can be stored in/retrieved from this item per transfer [range: 0 ~ 2147483647, default: 100000]";
                    };
                  };
                };
              };
              gravichestplate = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    EnergyPerOperation = lib.mkOption {
                      type = lib.types.int;
                      default = 278;
                      description = "How many Energy Units this item will consume per operation (items with multiple modes may consume a different amount) [range: 0 ~ 2147483647, default: 278]";
                    };
                    MaxCharge = lib.mkOption {
                      type = lib.types.int;
                      default = 30000000;
                      description = "How many Energy Units this item is able to store [range: 0 ~ 2147483647, default: 30000000]";
                    };
                    Tier = lib.mkOption {
                      type = lib.types.int;
                      default = 4;
                      description = "This item's electric tier [range: 0 ~ 14, default: 4]";
                    };
                    TransferLimit = lib.mkOption {
                      type = lib.types.int;
                      default = 300000;
                      description = "How many Energy Units can be stored in/retrieved from this item per transfer [range: 0 ~ 2147483647, default: 300000]";
                    };
                  };
                };
              };
              gravitool = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    EnergyPerOperation = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                      description = "How many Energy Units this item will consume per operation (items with multiple modes may consume a different amount) [range: 0 ~ 2147483647, default: 500]";
                    };
                    MaxCharge = lib.mkOption {
                      type = lib.types.int;
                      default = 300000;
                      description = "How many Energy Units this item is able to store [range: 0 ~ 2147483647, default: 300000]";
                    };
                    Tier = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                      description = "This item's electric tier [range: 0 ~ 14, default: 2]";
                    };
                    TransferLimit = lib.mkOption {
                      type = lib.types.int;
                      default = 3000;
                      description = "How many Energy Units can be stored in/retrieved from this item per transfer [range: 0 ~ 2147483647, default: 3000]";
                    };
                  };
                };
              };
              relocator = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    EnergyPerOperation = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                      description = "How many Energy Units this item will consume per operation (items with multiple modes may consume a different amount) [range: 0 ~ 2147483647, default: 0]";
                    };
                    MaxCharge = lib.mkOption {
                      type = lib.types.int;
                      default = 10000000;
                      description = "How many Energy Units this item is able to store [range: 0 ~ 2147483647, default: 10000000]";
                    };
                    Tier = lib.mkOption {
                      type = lib.types.int;
                      default = 4;
                      description = "This item's electric tier [range: 0 ~ 14, default: 4]";
                    };
                    TransferLimit = lib.mkOption {
                      type = lib.types.int;
                      default = 100000;
                      description = "How many Energy Units can be stored in/retrieved from this item per transfer [range: 0 ~ 2147483647, default: 100000]";
                    };
                  };
                };
              };
              advlappack = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    EnergyPerOperation = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                      description = "How many Energy Units this item will consume per operation (items with multiple modes may consume a different amount) [range: 0 ~ 2147483647, default: 0]";
                    };
                    MaxCharge = lib.mkOption {
                      type = lib.types.int;
                      default = 3000000;
                      description = "How many Energy Units this item is able to store [range: 0 ~ 2147483647, default: 3000000]";
                    };
                    Tier = lib.mkOption {
                      type = lib.types.int;
                      default = 3;
                      description = "This item's electric tier [range: 0 ~ 14, default: 3]";
                    };
                    TransferLimit = lib.mkOption {
                      type = lib.types.int;
                      default = 30000;
                      description = "How many Energy Units can be stored in/retrieved from this item per transfer [range: 0 ~ 2147483647, default: 30000]";
                    };
                  };
                };
              };
              ultimatelappack = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    EnergyPerOperation = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                      description = "How many Energy Units this item will consume per operation (items with multiple modes may consume a different amount) [range: 0 ~ 2147483647, default: 0]";
                    };
                    MaxCharge = lib.mkOption {
                      type = lib.types.int;
                      default = 30000000;
                      description = "How many Energy Units this item is able to store [range: 0 ~ 2147483647, default: 30000000]";
                    };
                    Tier = lib.mkOption {
                      type = lib.types.int;
                      default = 4;
                      description = "This item's electric tier [range: 0 ~ 14, default: 4]";
                    };
                    TransferLimit = lib.mkOption {
                      type = lib.types.int;
                      default = 300000;
                      description = "How many Energy Units can be stored in/retrieved from this item per transfer [range: 0 ~ 2147483647, default: 300000]";
                    };
                  };
                };
              };
              epiclappack = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    EnergyPerOperation = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                      description = "How many Energy Units this item will consume per operation (items with multiple modes may consume a different amount) [range: 0 ~ 2147483647, default: 0]";
                    };
                    MaxCharge = lib.mkOption {
                      type = lib.types.int;
                      default = 300000000;
                      description = "How many Energy Units this item is able to store [range: 0 ~ 2147483647, default: 300000000]";
                    };
                    Tier = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                      description = "This item's electric tier [range: 0 ~ 14, default: 5]";
                    };
                    TransferLimit = lib.mkOption {
                      type = lib.types.int;
                      default = 3000000;
                      description = "How many Energy Units can be stored in/retrieved from this item per transfer [range: 0 ~ 2147483647, default: 3000000]";
                    };
                  };
                };
              };
              vajra = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    EnergyPerOperation = lib.mkOption {
                      type = lib.types.int;
                      default = 3333;
                      description = "How many Energy Units this item will consume per operation (items with multiple modes may consume a different amount) [range: 0 ~ 2147483647, default: 3333]";
                    };
                    MaxCharge = lib.mkOption {
                      type = lib.types.int;
                      default = 10000000;
                      description = "How many Energy Units this item is able to store [range: 0 ~ 2147483647, default: 10000000]";
                    };
                    Tier = lib.mkOption {
                      type = lib.types.int;
                      default = 4;
                      description = "This item's electric tier [range: 0 ~ 14, default: 4]";
                    };
                    TransferLimit = lib.mkOption {
                      type = lib.types.int;
                      default = 100000;
                      description = "How many Energy Units can be stored in/retrieved from this item per transfer [range: 0 ~ 2147483647, default: 100000]";
                    };
                  };
                };
              };
              plasmalauncher = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    EnergyPerOperation = lib.mkOption {
                      type = lib.types.int;
                      default = 1000000;
                      description = "How many Energy Units this item will consume per operation (items with multiple modes may consume a different amount) [range: 0 ~ 2147483647, default: 1000000]";
                    };
                    MaxCharge = lib.mkOption {
                      type = lib.types.int;
                      default = 10000000;
                      description = "How many Energy Units this item is able to store [range: 0 ~ 2147483647, default: 10000000]";
                    };
                    Tier = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                      description = "This item's electric tier [range: 0 ~ 14, default: 5]";
                    };
                    TransferLimit = lib.mkOption {
                      type = lib.types.int;
                      default = 375000;
                      description = "How many Energy Units can be stored in/retrieved from this item per transfer [range: 0 ~ 2147483647, default: 375000]";
                    };
                  };
                };
              };
              plasmacell = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    EnergyPerOperation = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                      description = "How many Energy Units this item will consume per operation (items with multiple modes may consume a different amount) [range: 0 ~ 2147483647, default: 0]";
                    };
                    MaxCharge = lib.mkOption {
                      type = lib.types.int;
                      default = 100000000;
                      description = "How many Energy Units this item is able to store [range: 0 ~ 2147483647, default: 100000000]";
                    };
                    Tier = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                      description = "This item's electric tier [range: 0 ~ 14, default: 5]";
                    };
                    TransferLimit = lib.mkOption {
                      type = lib.types.int;
                      default = 375000;
                      description = "How many Energy Units can be stored in/retrieved from this item per transfer [range: 0 ~ 2147483647, default: 375000]";
                    };
                  };
                };
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
                description = "[default: true]";
              };
              hudPosition = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "[range: 1 ~ 4, default: 1]";
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
                description = "[default: false]";
              };
              "Disable Advanced Dimond Drill recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: false]";
              };
              "Disable Advanced Jetpack recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: false]";
              };
              "Disable Advanced NanoChestPlate recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: false]";
              };
              "Disable AdvancedLappack recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: false]";
              };
              "Disable Basic recipes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: false]";
              };
              "Disable EpicLappack recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: false]";
              };
              "Disable GraviChestPlate recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: false]";
              };
              "Disable GraviTool recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: false]";
              };
              "Disable Nanobot recipe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              "Disable Relocator recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: false]";
              };
              "Disable UltimateLappack recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: false]";
              };
              "Disable UltimateSolarHelmet recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: false]";
              };
              "Disable Vajra recipe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: false]";
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
                description = "[default: false]";
              };
              "Disable translocator mode" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              relocatorEnergyPerDimesionTp = lib.mkOption {
                type = lib.types.int;
                default = 5000000;
                description = "[range: 0 ~ 2147483647, default: 1500000]";
              };
              relocatorEnergyPerPortal = lib.mkOption {
                type = lib.types.int;
                default = 2500000;
                description = "[range: 0 ~ 2147483647, default: 2500000]";
              };
              relocatorEnergyPerStandartTp = lib.mkOption {
                type = lib.types.int;
                default = 2500000;
                description = "[range: 0 ~ 2147483647, default: 1000000]";
              };
              relocatorEnergyPerTranslocator = lib.mkOption {
                type = lib.types.int;
                default = 2000000;
                description = "[range: 0 ~ 2147483647, default: 2000000]";
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
                description = "[default: false]";
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
                description = "[default: false]";
              };
            };
          };
        };
      };
    };
  };
}
