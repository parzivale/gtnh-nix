{lib, ...}: {
  Aroma1997Core = lib.mkOption {
    description = "Aroma1997Core configuration (./config/aroma1997/Aroma1997Core.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/aroma1997/Aroma1997Core.cfg";
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
              checkVersion = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If Aroma1997Core should run a VersionCheck.";
              };
            };
          };
        };
      };
    };
  };
}
