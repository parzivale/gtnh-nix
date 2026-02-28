{lib, ...}: {
  RWG = lib.mkOption {
    description = "RWG configuration (./config/RWG.cfg)";
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
              "00 Ice River" = lib.mkOption {
                type = lib.types.str;
                default = "200";
                description = "Ice River";
              };
              "01 Cold River" = lib.mkOption {
                type = lib.types.str;
                default = "202";
                description = "Cold River";
              };
              "02 Temperate River" = lib.mkOption {
                type = lib.types.str;
                default = "205";
                description = "Temperate River";
              };
              "03 Hot River" = lib.mkOption {
                type = lib.types.str;
                default = "207";
                description = "Hot River";
              };
              "04 Wet River" = lib.mkOption {
                type = lib.types.str;
                default = "209";
                description = "Wet River";
              };
              "05 River Oasis" = lib.mkOption {
                type = lib.types.str;
                default = "211";
                description = "River Oasis";
              };
              "06 Ice Ocean" = lib.mkOption {
                type = lib.types.str;
                default = "213";
                description = "Ice Ocean";
              };
              "07 Cold Ocean" = lib.mkOption {
                type = lib.types.str;
                default = "214";
                description = "Cold Ocean";
              };
              "08 Temperate Ocean" = lib.mkOption {
                type = lib.types.str;
                default = "216";
                description = "Temperate Ocean";
              };
              "09 Hot Ocean" = lib.mkOption {
                type = lib.types.str;
                default = "218";
                description = "Hot Ocean";
              };
              "10 Wet Ocean" = lib.mkOption {
                type = lib.types.str;
                default = "237";
                description = "Wet Ocean";
              };
              "11 Ocean Oasis" = lib.mkOption {
                type = lib.types.str;
                default = "223";
                description = "Ocean Oasis";
              };
              "12 Snow Desert" = lib.mkOption {
                type = lib.types.str;
                default = "224";
                description = "Snow Desert";
              };
              "13 Snow Forest" = lib.mkOption {
                type = lib.types.str;
                default = "225";
                description = "Snow Forest";
              };
              "14 Cold Plains" = lib.mkOption {
                type = lib.types.str;
                default = "226";
                description = "Cold Plains";
              };
              "15 Cold Forest" = lib.mkOption {
                type = lib.types.str;
                default = "227";
                description = "Cold Forest";
              };
              "16 Hot Plains" = lib.mkOption {
                type = lib.types.str;
                default = "228";
                description = "Hot Plains";
              };
              "17 Hot Forest" = lib.mkOption {
                type = lib.types.str;
                default = "229";
                description = "Hot Forest";
              };
              "18 Hot Desert" = lib.mkOption {
                type = lib.types.str;
                default = "230";
                description = "Hot Desert";
              };
              "19 Plains (RWG)" = lib.mkOption {
                type = lib.types.str;
                default = "231";
                description = "Plains";
              };
              "20 Tropical Island" = lib.mkOption {
                type = lib.types.str;
                default = "232";
                description = "Tropical Island";
              };
              "21 Redwood" = lib.mkOption {
                type = lib.types.str;
                default = "233";
                description = "Redwood";
              };
              "22 Jungle (RWG)" = lib.mkOption {
                type = lib.types.str;
                default = "234";
                description = "Jungle";
              };
              "23 Oasis" = lib.mkOption {
                type = lib.types.str;
                default = "235";
                description = "Oasis";
              };
              "24 Temperate Forest" = lib.mkOption {
                type = lib.types.str;
                default = "236";
                description = "Temperate Forest";
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
              };
              "Enable Cobblestone Boulders" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "Generate Caves" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "Generate Emeralds" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              "Generate Mineshafts" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "Generate Underground Lakes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "Generate Underground Lava Lakes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "Generate Villages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "Generate large Thaumcraft biomes" = lib.mkOption {
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
