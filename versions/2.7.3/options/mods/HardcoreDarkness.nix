{lib, ...}: {
  HardcoreDarkness = lib.mkOption {
    description = "HardcoreDarkness configuration (./config/HardcoreDarkness.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/HardcoreDarkness.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        settings = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Dark End" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether the End is also supposed to have its minimum light removed [default: false]";
              };
              "Dark Nether" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether the Nether is also supposed to have its minimum light removed [default: true]";
              };
              "Dark Twilight Forest" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether it should be dark in the Twilight Forest [default: false]";
              };
              "Dimension Blacklist" = lib.mkOption {
                type = lib.types.str;
                default = "7";
                description = "A list of dimension ids in which Hardcore Darkness will be completely disabled Example: S:\"Dimension Blacklist\"=-1,1 [default: ]";
              };
              Mode = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "0: No minimum sky & block light, 1: No minimum block light, 2: Skylight is dependent on moon phase";
              };
              RemoveBlue = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Attempts to remove the blue sky light that occurs when using mode 1 or 2 [default: true]";
              };
            };
          };
        };
      };
    };
  };
}
