{lib, ...}: {
  darkerer = lib.mkOption {
    description = "darkerer configuration (./config/darkerer.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/darkerer.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              darkEnd = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether or not the End should be dark [default: false]";
              };
              darkNether = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether or not the Nether should be dark [default: true]";
              };
              darkTwilightForest = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether or not the Twilight Forest should be dark [default: false]";
              };
              dimBlocklist = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 7 ];
                description = "A list of dimension ids in which Darkerer will be completely disabled [default: []]";
              };
              mode = lib.mkOption {
                type = lib.types.str;
                default = "EVERYWHERE";
                description = "[default: EVERYWHERE]";
              };
              removeBlueSkyLight = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Attempts to remove the blue sky light that occurs when using mode NO_MIN_BLOCK_LIGHT or MOON_PHASE [default: true]";
              };
            };
          };
        };
      };
    };
  };
}
