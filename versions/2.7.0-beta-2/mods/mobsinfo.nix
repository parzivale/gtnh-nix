{lib, ...}: {
  MobOverrides_json = lib.mkOption {
    description = "MobOverrides_json configuration (./config/mobsinfo/MobOverrides.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/mobsinfo/MobOverrides.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      ExampleMob = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          additions = lib.mkOption {
            type = lib.types.listOf (lib.types.submodule {
              options = {
              additionalInfo = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
              };
              chance = lib.mkOption {
                type = lib.types.int;
                default = 500;
              };
              chanceModifiers = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
              };
              damages = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  "1" = lib.mkOption {
                    type = lib.types.int;
                    default = 1;
                  };
                  "2" = lib.mkOption {
                    type = lib.types.int;
                    default = 5;
                  };
                  "3" = lib.mkOption {
                    type = lib.types.int;
                    default = 10;
                  };
                  };
                };
              };
              enchantable = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              lootable = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              playerOnly = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              reconstructableStack = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  itemIdentifier = lib.mkOption {
                    default = {};
                    type = lib.types.submodule {
                      options = {
                      modId = lib.mkOption {
                        type = lib.types.str;
                        default = "minecraft";
                      };
                      name = lib.mkOption {
                        type = lib.types.str;
                        default = "diamond_sword";
                      };
                      };
                    };
                  };
                  meta = lib.mkOption {
                    type = lib.types.int;
                    default = 0;
                  };
                  size = lib.mkOption {
                    type = lib.types.int;
                    default = 1;
                  };
                  tagCompound = lib.mkOption {
                    type = lib.types.nullOr lib.types.str;
                    default = null;
                  };
                  };
                };
              };
              type = lib.mkOption {
                type = lib.types.str;
                default = "Rare";
              };
              variableChance = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              };
            });
            default = [
              {
                additionalInfo = [ ];
                chance = 500;
                chanceModifiers = [ ];
                damages = {
                  "1" = 1;
                  "2" = 5;
                  "3" = 10;
                };
                enchantable = 20;
                lootable = true;
                playerOnly = false;
                reconstructableStack = {
                  itemIdentifier = {
                    modId = "minecraft";
                    name = "diamond_sword";
                  };
                  meta = 0;
                  size = 1;
                  tagCompound = null;
                };
                type = "Rare";
                variableChance = false;
              }
            ];
          };
          removals = lib.mkOption {
            type = lib.types.listOf (lib.types.submodule {
              options = {
              reconstructableStack = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  itemIdentifier = lib.mkOption {
                    default = {};
                    type = lib.types.submodule {
                      options = {
                      modId = lib.mkOption {
                        type = lib.types.str;
                        default = "minecraft";
                      };
                      name = lib.mkOption {
                        type = lib.types.str;
                        default = "rotten_flesh";
                      };
                      };
                    };
                  };
                  meta = lib.mkOption {
                    type = lib.types.int;
                    default = 0;
                  };
                  size = lib.mkOption {
                    type = lib.types.int;
                    default = 1;
                  };
                  tagCompound = lib.mkOption {
                    type = lib.types.nullOr lib.types.str;
                    default = null;
                  };
                  };
                };
              };
              type = lib.mkOption {
                type = lib.types.str;
                default = "Normal";
              };
              };
            });
            default = [
              {
                reconstructableStack = {
                  itemIdentifier = {
                    modId = "minecraft";
                    name = "rotten_flesh";
                  };
                  meta = 0;
                  size = 1;
                  tagCompound = null;
                };
                type = "Normal";
              }
            ];
          };
          removeAll = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          };
        };
      };
      };
    };
  };
  mobsinfo_cfg = lib.mkOption {
    description = "mobsinfo_cfg configuration (./config/mobsinfo/mobsinfo.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/mobsinfo/mobsinfo.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
      };
      compatibility = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          addAllEnderIOSpawnersToNEI = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Adds all mob variants EnderIO powered spawners to NEI.";
          };
          enableInfernalDrops = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enables \"Infernal Drops\" NEI page if Infernal-Mobs mod is loaded.";
          };
          };
        };
      };
      debug = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          LoggingLevel = lib.mkOption {
            type = lib.types.int;
            default = 0;
            description = "0 - Default, log only basic, summary information. 1 - More detailed logs";
          };
          ShowRenderErrors = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          };
        };
      };
      mobhandler = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          CacheRegenerationTrigger = lib.mkOption {
            type = lib.types.int;
            default = 2;
            description = "When will cache regeneration trigger? 0 - Never, 1 - ModAdditionRemoval, 2 - ModAdditionRemovalChange, 3 - Always,";
          };
          Enabled = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable \"Mob Info\" NEI page";
          };
          HiddenMode = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Hidden mode will make all mobs hidden in NEI until you kill them.";
          };
          IncludeEmptyMobs = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Include mobs that have no drops in NEI";
          };
          MobBlacklist = lib.mkOption {
            type = lib.types.listOf lib.types.str;
            default = [ "Giant" "Thaumcraft.TravelingTrunk" "chisel.snowman" "OpenBlocks.Luggage" "OpenBlocks.MiniMe" "SpecialMobs.SpecialCreeper" "SpecialMobs.SpecialZombie" "SpecialMobs.SpecialPigZombie" "SpecialMobs.SpecialSlime" "SpecialMobs.SpecialSkeleton" "SpecialMobs.SpecialEnderman" "SpecialMobs.SpecialCaveSpider" "SpecialMobs.SpecialGhast" "SpecialMobs.SpecialWitch" "SpecialMobs.SpecialSpider" "TwilightForest.HydraHead" "TwilightForest.RovingCube" "TwilightForest.Harbinger Cube" "TwilightForest.Adherent" "SpecialMobs.SpecialSilverfish" ];
            description = "These mobs will be skipped when generating recipe map";
          };
          MobTimeout = lib.mkOption {
            type = lib.types.float;
            default = 10.0;
            description = "Seconds to wait before skipping a mob's dropmap. If negative, will not timeout any mobs";
          };
          };
        };
      };
      villagertradeshandler = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          Enabled = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Show villager trades in NEI";
          };
          };
        };
      };
      };
    };
  };
}
