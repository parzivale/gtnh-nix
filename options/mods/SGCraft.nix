{lib, ...}: {
  SGCraft = lib.mkOption {
    description = "SGCraft configuration (./config/SGCraft.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/SGCraft.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        debug = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              debugStructures = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        dhd = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              linkRangeX = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              linkRangeY = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              linkRangeZ = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        iris = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              preserveInventory = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        naquadah = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              debugLava = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              debugLevel = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              debugRandom = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              genIsolatedOdds = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              genUnderLavaOdds = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              maxIsolatedNodes = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              maxNodesUnderLava = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        opencomputers = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              wirelessRebroadcastStrength = lib.mkOption {
                type = lib.types.float;
                default = 50.0;
              };
            };
          };
        };
        options = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addOresToExistingWorlds = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              allowCraftingCrystals = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              allowCraftingNaquadah = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              augmentStructures = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              chunkLoadingRange = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              enableNaquadahOre = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              logStargateEvents = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        stargate = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              closeFromEitherEnd = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              distanceFactorMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              energyPerFuelItem = lib.mkOption {
                type = lib.types.float;
                default = 96000.0;
              };
              explosionFlame = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              explosionRadius = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              explosionSmoke = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              gateOpeningsPerFuelItem = lib.mkOption {
                type = lib.types.int;
                default = 24;
              };
              interDimensionMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
              maxEnergyBuffer = lib.mkOption {
                type = lib.types.float;
                default = 1000.0;
              };
              minutesOpenPerFuelItem = lib.mkOption {
                type = lib.types.int;
                default = 80;
              };
              oneWayTravel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              secondsToStayOpen = lib.mkOption {
                type = lib.types.int;
                default = 300;
              };
              soundVolume = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              transparency = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              variableChevronPositions = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        villagers = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              tokra = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
            };
          };
        };
      };
    };
  };
}
