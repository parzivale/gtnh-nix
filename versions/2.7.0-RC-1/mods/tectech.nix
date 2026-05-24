{lib, ...}: {
  tectech_cfg = lib.mkOption {
    description = "tectech_cfg configuration (./config/tectech.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/tectech.cfg";
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
          debug = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              DEBUG_MODE = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables logging and other purely debug features [default: false]";
              };
              };
            };
          };
          teslatweaks = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              TESLA_VISUAL_EFFECT = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set true to enable the cool visual effect when tesla tower running. [default: true]";
              };
              };
            };
          };
          };
        };
      };
      };
    };
  };
}
