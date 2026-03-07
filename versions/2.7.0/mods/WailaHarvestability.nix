{lib, ...}: {
  WailaHarvestability = lib.mkOption {
    description = "WailaHarvestability configuration (./config/WailaHarvestability.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/WailaHarvestability.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        main = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "is.currently.harvestable.string" = lib.mkOption {
                type = lib.types.str;
                default = "✔";
              };
              "minimal.mode.separator" = lib.mkOption {
                type = lib.types.str;
                default = ":";
              };
              "not.currently.harvestable.string" = lib.mkOption {
                type = lib.types.str;
                default = "✘";
              };
              "shearability.string" = lib.mkOption {
                type = lib.types.str;
                default = "✂";
              };
              "silk.touchability.string" = lib.mkOption {
                type = lib.types.str;
                default = "✒";
              };
            };
          };
        };
      };
    };
  };
}
