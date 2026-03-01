{lib, ...}: {
  findit = lib.mkOption {
    description = "findit configuration (./config/findit.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/findit.cfg";
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
              SearchRadius = lib.mkOption {
                type = lib.types.str;
                default = "16";
                description = "Radius to search within";
              };
            };
          };
        };
      };
    };
  };
}
