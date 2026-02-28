{lib, ...}: {
  main = lib.mkOption {
    description = "main configuration (./config/buildcraft/main.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/buildcraft/main.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        blueprints = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              clientDatabaseDirectory = lib.mkOption {
                type = lib.types.str;
                default = "\"$MINECRAFT\\blueprints\"";
                description = "Location for the client blueprint database (used by the Electronic Library).";
              };
              excludedBlocks = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [];
                description = "blocks that should be excluded from the builder.";
              };
              excludedMods = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [];
                description = "mods that should be excluded from the builder.";
              };
              serverDatabaseDirectory = lib.mkOption {
                type = lib.types.str;
                default = "\"$MINECRAFT\\config\\buildcraft\\blueprints\\server\"";
                description = "DEPRECATED - USED ONLY FOR COMPATIBILITY";
              };
            };
          };
        };
        builders = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              dropBrokenBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should the builder and filler drop the cleared blocks?";
              };
            };
          };
        };
        debug = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              printBlueprintSchematicList = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              printFacadeList = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Print a list of all registered facades.";
              };
            };
          };
        };
        display = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              colorBlindMode = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should I enable colorblind mode?";
              };
              hideFluidValues = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should all fluid values (mB, mB/t) be hidden?";
              };
              hidePowerValues = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should all power values (RF, RF/t) be hidden?";
              };
            };
          };
        };
        experimental = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              kinesisPowerLossOnTravel = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should kinesis pipes lose power over distance (think IC2 or BC pre-3.7)?";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "boards.blacklist" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = ["buildcraft:boardRobotBomber"];
                description = "Blacklisted robots boards";
              };
              builderMaxIterationsPerItemFactor = lib.mkOption {
                type = lib.types.int;
                default = 1024;
                description = "Lower this number if BuildCraft builders/fillers are causing TPS lag. Raise it if you think they are being too slow.";
              };
              canEnginesExplode = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should engines explode upon overheat?";
              };
              "fuel.fuel.combustion" = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "adjust energy value of Fuel in Combustion Engines";
              };
              "fuel.fuel.combustion.energyOutput" = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "adjust output energy by Fuel in Combustion Engines";
              };
              "fuel.oil.combustion" = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "adjust energy value of Oil in Combustion Engines";
              };
              "fuel.oil.combustion.energyOutput" = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "adjust output energy by Oil in Combustion Engines";
              };
              itemLifespan = lib.mkOption {
                type = lib.types.int;
                default = 600;
                description = "How long, in seconds, should items stay on the ground? (Vanilla = 300, default = 60)";
              };
              markerRange = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "Set the maximum marker range.";
              };
              maxPaintedBlocks = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "How many blocks can paintbrush paint at max(-1) for unlimited";
              };
              miningBreaksPlayerProtectedBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should BuildCraft miners be allowed to break blocks using player-specific protection?";
              };
              miningDepth = lib.mkOption {
                type = lib.types.int;
                default = 256;
                description = "Should the mining well only be usable once after placing?";
              };
              oilCanBurn = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should oil burn when lit on fire?";
              };
              oilIsDense = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should oil be dense and drag entities down?";
              };
              pumpDimensionControl = lib.mkOption {
                type = lib.types.str;
                default = "+/*/*,+/-1/lava";
                description = "Entries are comma seperated, banned fluids have precedence over allowed ones.Default is \"+/*/*,+/-1/Lava\" - the second redundant entry (\"+/-1/lava\") is there to show the format.";
              };
              pumpsConsumeWater = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should pumps consume water? Enabling this might cause performance issues!";
              };
              pumpsNeedRealPower = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Do pumps need real (non-redstone) power?";
              };
              updateCheck = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should I check the BuildCraft version on startup?";
              };
              useServerDataOnClient = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows BuildCraft to use the integrated server's data on the client on singleplayer worlds. Disable if you're getting the odd crash caused by it.";
              };
              version = lib.mkOption {
                type = lib.types.str;
                default = "7.1.42";
              };
              quarry = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    doChunkLoading = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Should the quarry keep the chunks it is working on loaded?";
                    };
                    oneTimeUse = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Should the quarry only be usable once after placing?";
                    };
                  };
                };
              };
              pipes = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    baseFluidRate = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                      description = "What should the base flow rate of a fluid pipe be?";
                    };
                    facadeBlacklist = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = ["minecraft:end_portal_frame" "minecraft:grass" "minecraft:leaves" "minecraft:leaves2" "minecraft:lit_pumpkin" "minecraft:lit_redstone_lamp" "minecraft:mob_spawner" "minecraft:monster_egg" "minecraft:redstone_lamp" "minecraft:double_stone_slab" "minecraft:double_wooden_slab" "minecraft:sponge"];
                      description = "What block types should be blacklisted from being a facade?";
                    };
                    facadeBlacklistAsWhitelist = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Should the blacklist be treated as a whitelist instead?";
                    };
                    facadeNoLaserRecipe = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Should non-laser (crafting table) facade recipes be forced?";
                    };
                    facadeShowAllInCreative = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Should all BC facades be shown in Creative/NEI, or just a few carefully chosen ones?";
                    };
                    hardness = lib.mkOption {
                      type = lib.types.float;
                      default = 5.00;
                      description = "How hard to break should a pipe be?";
                    };
                    slimeballWaterproofRecipe = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Should I enable an alternate Waterproof recipe, based on slimeballs?";
                    };
                  };
                };
              };
            };
          };
        };
        network = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              longUpdateFactor = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "How often, in ticks, should full network sync packets be sent? Increasing this might help network performance.";
              };
              updateFactor = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "How often, in ticks, should network update packets be sent? Increasing this might help network performance.";
              };
            };
          };
        };
        power = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              chipsetCostMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "The cost multiplier for Chipsets";
              };
              gateCostMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "What should be the multiplier of all gate power costs?";
              };
              miningUsageMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "What should the multiplier of all mining-related power usage be?";
              };
            };
          };
        };
        vars = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "version.seen" = lib.mkOption {
                type = lib.types.str;
                default = "7.1.18";
              };
            };
          };
        };
        worldgen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should BuildCraft generate anything in the world?";
              };
              generateWaterSprings = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should BuildCraft generate water springs?";
              };
              oilWellGenerationRate = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
                description = "How high should be the probability of an oil well generating?";
              };
              spawnOilSprings = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should I spawn oil springs?";
              };
              biomes = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    biomeOilDesert = lib.mkOption {
                      type = lib.types.int;
                      default = 127;
                      description = "The id for the Oil Desert biome";
                    };
                    biomeOilOcean = lib.mkOption {
                      type = lib.types.int;
                      default = 126;
                      description = "The id for the Oil Ocean biome";
                    };
                    excessiveOilIDs = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = ["SANDY"];
                      description = "IDs or Biome Types (e.g. SANDY,OCEAN) of biomes that should have GREATLY increased oil generation rates.";
                    };
                    excludeOilIDs = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = ["Sky" "Hell"];
                      description = "IDs or Biome Types (e.g. SANDY,OCEAN) of biomes that are excluded from generating oil.";
                    };
                    increasedOilIDs = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = ["SANDY" "Taiga"];
                      description = "IDs or Biome Types (e.g. SANDY,OCEAN) of biomes that should have increased oil generation rates.";
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
}
