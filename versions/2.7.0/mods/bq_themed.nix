{lib, ...}: {
  bq_themed = lib.mkOption {
    description = "bq_themed configuration (./config/bq_themed.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/bq_themed.cfg";
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
              "Hide Updates" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Hide update notifications [default: false]";
              };
            };
          };
        };
        themes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ae2 = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable AE2 Theme [default: false]";
              };
              bettervanilla = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable Better Vanilla Theme [default: false]";
              };
              chisel = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable Chisel Theme [default: false]";
              };
              enderio = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable EnderIO Theme [default: false]";
              };
              forestry = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable Forestry Theme [default: false]";
              };
              legacy = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable Legacy Theme [default: false]";
              };
            };
          };
        };
      };
    };
  };
}
