{lib, ...}: {
  asm_cfg = lib.mkOption {
    description = "asm_cfg configuration (./config/WitcheryExtras/asm.cfg)";
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
          allowPoppetShelfChunkLoading = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enables Chunk Loading by Poppet Shelves.";
          };
          enablePatchNEI = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Patch NEI for good recipe support.";
          };
          };
        };
      };
      predictions = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          chancePredictionExtraCoal = lib.mkOption {
            type = lib.types.int;
            default = 13;
            description = "Adjusts weight for Extra Coal Drops";
          };
          chancePredictionExtraIron = lib.mkOption {
            type = lib.types.int;
            default = 8;
            description = "Adjusts weight for Extra Iron Drops";
          };
          chancePredictionGetWet = lib.mkOption {
            type = lib.types.int;
            default = 13;
            description = "Adjusts weight for 'Get Wet'";
          };
          chancePredictionSpawnBabaYagaBad = lib.mkOption {
            type = lib.types.int;
            default = 2;
            description = "Adjusts weight for 'Bad' Baba Yaga spawns";
          };
          chancePredictionSpawnBabaYagaGood = lib.mkOption {
            type = lib.types.int;
            default = 2;
            description = "Adjusts weight for 'Good' Baba Yaga spawns";
          };
          chancePredictionSpawnBuriedTreasure = lib.mkOption {
            type = lib.types.int;
            default = 2;
            description = "Adjusts weight for Buried Treasure spawn";
          };
          chancePredictionSpawnEnt = lib.mkOption {
            type = lib.types.int;
            default = 3;
            description = "Adjusts weight for Ent Spawn";
          };
          chancePredictionSpawnFriendlyWolf = lib.mkOption {
            type = lib.types.int;
            default = 3;
            description = "Adjusts weight for";
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
          chancePredictionSpawnZombie = lib.mkOption {
            type = lib.types.int;
            default = 13;
            description = "Adjusts weight for Zombie Spawn";
          };
          chancePredictionStumbleAndFall = lib.mkOption {
            type = lib.types.int;
            default = 13;
            description = "Adjusts weight for 'Stumble & Fall'";
          };
          chancePredictionTeleportNether = lib.mkOption {
            type = lib.types.int;
            default = 3;
            description = "Adjusts weight for Nether Teleport";
          };
          };
        };
      };
      };
    };
  };
}
