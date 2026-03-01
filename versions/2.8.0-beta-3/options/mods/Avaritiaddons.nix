{lib, ...}: {
  Avaritiaddons = lib.mkOption {
    description = "Avaritiaddons configuration (./config/Avaritiaddons.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/Avaritiaddons.cfg";
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
              hardCompressedChestRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              hardInfinityChestRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        infinitycatalystrecipetweaks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              thingsToRemove = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
              };
            };
          };
        };
      };
    };
  };
}
