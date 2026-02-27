{lib, ...}: {
  bq_standard = lib.mkOption {
    description = "bq_standard configuration (./config/bq_standard.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/bq_standard.cfg";
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
              "Register NEI Quest Rewards" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
      };
    };
  };
}
