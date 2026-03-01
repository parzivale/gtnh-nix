{lib, ...}: {
  ExtraTrees = lib.mkOption {
    description = "ExtraTrees configuration (./config/ExtraTrees.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ExtraTrees.cfg";
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
              alterLemon = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Uses reflection to convert the Forestry lemon tree to the Citrus family. [default: true]";
              };
            };
          };
        };
      };
    };
  };
}
