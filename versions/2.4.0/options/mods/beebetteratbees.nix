{lib, ...}: {
  beebetteratbees = lib.mkOption {
    description = "beebetteratbees configuration (./config/beebetteratbees.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/beebetteratbees.cfg";
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
              shouldShowDuplicateTrees = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If this is set to false, it will not show the mutation tree for a specific bee if the same tree is already displayed. [default: true]";
              };
              shouldShowSecretMutations = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to true, if you wish for the mod to show secret bee mutations. [default: false]";
              };
            };
          };
        };
      };
    };
  };
}
