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
        balancing = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              heatProvided = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "Max HU provided by Lava heater per tick [range: 0 ~ 2147483647, default: 1000]";
              };
            };
          };
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
