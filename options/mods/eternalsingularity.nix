{lib, ...}: {
  eternalsingularity = lib.mkOption {
    description = "eternalsingularity configuration (./config/eternalsingularity.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/eternalsingularity.cfg";
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
              classNameList = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "fox.spiteful.avaritia.items.ItemSingularity" "wealthyturtle.uiesingularities.UniversalSingularityItem" ];
              };
              easyMode = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If this Config Option is Enabled, for Every 9 Singularities Used in the Eternal Singularity Recipe, You will Receive an Additional Eternal Singularity for the Recipe Output. [default: false]";
              };
              useCompoundSingularities = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[If there are > 81 Basic Singularities, this Config Option will be Set to True Automatically] [default: false]";
              };
            };
          };
        };
      };
    };
  };
}
