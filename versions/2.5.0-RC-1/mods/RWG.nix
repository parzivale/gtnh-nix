{lib, ...}: {
  RWG_cfg = lib.mkOption {
    description = "RWG_cfg configuration (./config/RWG.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/RWG.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
      };
      "biome ids" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "00 rwg_riverIce" = lib.mkOption {
            type = lib.types.int;
            default = 200;
          };
          "01 rwg_riverCold" = lib.mkOption {
            type = lib.types.int;
            default = 202;
          };
          "02 rwg_riverTemperate" = lib.mkOption {
            type = lib.types.int;
            default = 205;
          };
          "03 rwg_riverHot" = lib.mkOption {
            type = lib.types.int;
            default = 207;
          };
          "04 rwg_riverWet" = lib.mkOption {
            type = lib.types.int;
            default = 209;
          };
          "05 rwg_riverOasis" = lib.mkOption {
            type = lib.types.int;
            default = 211;
          };
          "06 rwg_oceanIce" = lib.mkOption {
            type = lib.types.int;
            default = 213;
          };
          "07 rwg_oceanCold" = lib.mkOption {
            type = lib.types.int;
            default = 214;
          };
          "08 rwg_oceanTemperate" = lib.mkOption {
            type = lib.types.int;
            default = 216;
          };
          "09 rwg_oceanHot" = lib.mkOption {
            type = lib.types.int;
            default = 218;
          };
          "10 rwg_oceanWet" = lib.mkOption {
            type = lib.types.int;
            default = 237;
          };
          "11 rwg_oceanOasis" = lib.mkOption {
            type = lib.types.int;
            default = 223;
          };
          "12 rwg_snowDesert" = lib.mkOption {
            type = lib.types.int;
            default = 224;
          };
          "13 rwg_snowForest" = lib.mkOption {
            type = lib.types.int;
            default = 225;
          };
          "14 rwg_coldPlains" = lib.mkOption {
            type = lib.types.int;
            default = 226;
          };
          "15 rwg_coldForest" = lib.mkOption {
            type = lib.types.int;
            default = 227;
          };
          "16 rwg_hotPlains" = lib.mkOption {
            type = lib.types.int;
            default = 228;
          };
          "17 rwg_hotForest" = lib.mkOption {
            type = lib.types.int;
            default = 229;
          };
          "18 rwg_hotDesert" = lib.mkOption {
            type = lib.types.int;
            default = 230;
          };
          "19 rwg_plains" = lib.mkOption {
            type = lib.types.int;
            default = 231;
          };
          "20 rwg_tropical" = lib.mkOption {
            type = lib.types.int;
            default = 232;
          };
          "21 rwg_redwood" = lib.mkOption {
            type = lib.types.int;
            default = 233;
          };
          "22 rwg_jungle" = lib.mkOption {
            type = lib.types.int;
            default = 234;
          };
          "23 rwg_oasis" = lib.mkOption {
            type = lib.types.int;
            default = 235;
          };
          "24 rwg_temperateForest" = lib.mkOption {
            type = lib.types.int;
            default = 236;
          };
          };
        };
      };
      settings = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "Climate Distance" = lib.mkOption {
            type = lib.types.float;
            default = 1600.0;
            description = "[default: 1600.0]";
          };
          "Enable Cobblestone Boulders" = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "[default: true]";
          };
          "Generate Emeralds" = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "[default: true]";
          };
          };
        };
      };
      };
    };
  };
}
