{lib, ...}: {
  roguelike_cfg = lib.mkOption {
    description = "roguelike_cfg configuration (./config/roguelike_dungeons/roguelike.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/roguelike.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "properties";
        readOnly = true;
        };
        dimensionBL = lib.mkOption {
          type = lib.types.str;
          default = "";
        };
        dimensionWL = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        doNaturalSpawn = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        doNoveltySpawn = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        generous = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
        levelMaxRooms = lib.mkOption {
          type = lib.types.int;
          default = 30;
        };
        levelRange = lib.mkOption {
          type = lib.types.int;
          default = 80;
        };
        levelScatter = lib.mkOption {
          type = lib.types.int;
          default = 10;
        };
        looting = lib.mkOption {
          type = lib.types.float;
          default = 0.085;
        };
        lowerLimit = lib.mkOption {
          type = lib.types.int;
          default = 60;
        };
        preciousBlocks = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
        rogueSpawners = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        spawnFrequency = lib.mkOption {
          type = lib.types.int;
          default = 16;
        };
        upperLimit = lib.mkOption {
          type = lib.types.int;
          default = 100;
        };
      };
    };
  };
}
