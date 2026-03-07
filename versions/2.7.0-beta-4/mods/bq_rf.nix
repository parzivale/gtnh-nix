{lib, ...}: {
  bq_rf = lib.mkOption {
    description = "bq_rf configuration (./config/bq_rf.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/bq_rf.cfg";
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
      };
    };
  };
}
