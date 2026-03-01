{lib, ...}: {
  IGWMod = lib.mkOption {
    description = "IGWMod configuration (./config/IGWMod.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/IGWMod.cfg";
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
              enable_missing_notification = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When enabled, this will notify players when IGW-Mod is not installed even though mods add support.";
              };
            };
          };
        };
      };
    };
  };
}
