{lib, ...}: {
  openglasses = lib.mkOption {
    description = "openglasses configuration (./config/openglasses.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/openglasses.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        energy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              energyBuffer = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              energyMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "PowerDrain= (NumberOfWidgets / 10) * energyMultiplier";
              };
            };
          };
        };
      };
    };
  };
}
