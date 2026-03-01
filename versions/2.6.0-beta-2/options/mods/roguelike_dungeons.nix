{lib, ...}: {
  roguelike = lib.mkOption {
    description = "roguelike configuration (./config/roguelike_dungeons/roguelike.cfg)";
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
        default = "forge_untyped";
        readOnly = true;
        };
        dimensionBL = lib.mkOption {
          type = lib.types.str;
          default = "";
        };
        dimensionWL = lib.mkOption {
          type = lib.types.str;
          default = "0";
        };
        doNaturalSpawn = lib.mkOption {
          type = lib.types.str;
          default = "true";
        };
        doNoveltySpawn = lib.mkOption {
          type = lib.types.str;
          default = "true";
        };
        generous = lib.mkOption {
          type = lib.types.str;
          default = "false";
        };
        levelMaxRooms = lib.mkOption {
          type = lib.types.str;
          default = "30";
        };
        levelRange = lib.mkOption {
          type = lib.types.str;
          default = "80";
        };
        levelScatter = lib.mkOption {
          type = lib.types.str;
          default = "10";
        };
        looting = lib.mkOption {
          type = lib.types.str;
          default = "0.085";
        };
        lowerLimit = lib.mkOption {
          type = lib.types.str;
          default = "60";
        };
        preciousBlocks = lib.mkOption {
          type = lib.types.str;
          default = "false";
        };
        rogueSpawners = lib.mkOption {
          type = lib.types.str;
          default = "true";
        };
        spawnFrequency = lib.mkOption {
          type = lib.types.str;
          default = "16";
        };
        upperLimit = lib.mkOption {
          type = lib.types.str;
          default = "100";
        };
      };
    };
  };
}
