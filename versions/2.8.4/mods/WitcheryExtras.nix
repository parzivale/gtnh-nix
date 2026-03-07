{lib, ...}: {
  asm = lib.mkOption {
    description = "asm configuration (./config/WitcheryExtras/asm.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/WitcheryExtras/asm.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        blocks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              disableSilverVat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable Silver Vat";
              };
            };
          };
        };
        debug = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enablePatchNEI = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Patch NEI for good recipe support.";
              };
              allowPoppetShelfChunkLoading = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables Chunk Loading by Poppet Shelves.";
              };
            };
          };
        };
        predictions = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              chancePredictionSpawnBabaYagaGood = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Adjusts weight for 'Good' Baba Yaga spawns";
              };
              chancePredictionSpawnBabaYagaBad = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Adjusts weight for 'Bad' Baba Yaga spawns";
              };
              chancePredictionExtraCoal = lib.mkOption {
                type = lib.types.int;
                default = 13;
                description = "Adjusts weight for Extra Coal Drops";
              };
              chancePredictionSpawnEnt = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Adjusts weight for Ent Spawn";
              };
              chancePredictionStumbleAndFall = lib.mkOption {
                type = lib.types.int;
                default = 13;
                description = "Adjusts weight for 'Stumble & Fall'";
              };
              chancePredictionGetWet = lib.mkOption {
                type = lib.types.int;
                default = 13;
                description = "Adjusts weight for 'Get Wet'";
              };
              chancePredictionExtraIron = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "Adjusts weight for Extra Iron Drops";
              };
              chancePredictionSpawnZombie = lib.mkOption {
                type = lib.types.int;
                default = 13;
                description = "Adjusts weight for Zombie Spawn";
              };
              chancePredictionSpawnProtectiveAnimal = lib.mkOption {
                type = lib.types.int;
                default = 13;
                description = "Adjusts weight for Friendly Animal Spawn";
              };
              chancePredictionSpawnSkeleton = lib.mkOption {
                type = lib.types.int;
                default = 13;
                description = "Adjusts weight for Skeleton Spawn";
              };
              chancePredictionSpawnBuriedTreasure = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Adjusts weight for Buried Treasure spawn";
              };
              chancePredictionTeleportNether = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Adjusts weight for Nether Teleport";
              };
              chancePredictionSpawnFriendlyWolf = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Adjusts weight for";
              };
            };
          };
        };
      };
    };
  };
}
