{lib, ...}: {
  Ic2Nei = lib.mkOption {
    description = "Ic2Nei configuration (./config/Ic2Nei.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/Ic2Nei.cfg";
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
              simulationlevel = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Decides how many crops are being used in the simulation. 2-4 (default=4)";
              };
            };
          };
        };
      };
    };
  };
}
