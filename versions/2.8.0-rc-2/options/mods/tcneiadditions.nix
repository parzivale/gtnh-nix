{lib, ...}: {
  tcneiadditions = lib.mkOption {
    description = "tcneiadditions configuration (./config/tcneiadditions.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/tcneiadditions.cfg";
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
              showInstabilityNumber = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show the number of instability of infusion";
              };
              showLockedRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show recipes even if the research is not completed";
              };
              showResearchKey = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show research key";
              };
            };
          };
        };
      };
    };
  };
}
