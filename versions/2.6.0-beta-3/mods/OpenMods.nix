{lib, ...}: {
  OpenMods = lib.mkOption {
    description = "OpenMods configuration (./config/OpenMods.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/OpenMods.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        debug = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              dropsDebug = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Control printing of stacktraces in case of unharvested drops";
              };
              fakePlayerCountThreshold = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Maximum fake player pool that doesn't produce warning";
              };
              tessellatorPoolLimit = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Maximum allowed size of tessellator pool";
              };
            };
          };
        };
        feature = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              calculatorCommands = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables command line calculator";
              };
            };
          };
        };
      };
    };
  };
}
