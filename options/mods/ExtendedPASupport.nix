{lib, ...}: {
  ExtendedPASupport = lib.mkOption {
    description = "ExtendedPASupport configuration (./config/ExtendedPASupport.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ExtendedPASupport.cfg";
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
                type = lib.types.bool;
                default = false;
                description = "available values: [true, false]";
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "available values: [true, false]";
              };
            };
          };
        };
      };
    };
  };
}
