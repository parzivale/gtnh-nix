{lib, ...}: {
  RIO = lib.mkOption {
    description = "RIO configuration (./config/RIO.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/RIO.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        optout = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              localization_update = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Opt-out of localization updates, and only use lang files packaged with the JAR";
              };
            };
          };
        };
      };
    };
  };
}
