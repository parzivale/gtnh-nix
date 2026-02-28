{lib, ...}: {
  mobsinfo = lib.mkOption {
    description = "mobsinfo configuration (./config/mobsinfo/mobsinfo.cfg)";
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
                default = ["Giant" "Thaumcraft.TravelingTrunk" "chisel.snowman" "OpenBlocks.Luggage" "OpenBlocks.MiniMe" "SpecialMobs.SpecialCreeper" "SpecialMobs.SpecialZombie" "SpecialMobs.SpecialPigZombie" "SpecialMobs.SpecialSlime" "SpecialMobs.SpecialSkeleton" "SpecialMobs.SpecialEnderman" "SpecialMobs.SpecialCaveSpider" "SpecialMobs.SpecialGhast" "SpecialMobs.SpecialWitch" "SpecialMobs.SpecialSpider" "TwilightForest.HydraHead" "TwilightForest.RovingCube" "TwilightForest.Harbinger Cube" "TwilightForest.Adherent" "SpecialMobs.SpecialSilverfish"];
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
