{lib, ...}: {
  endercore = lib.mkOption {
    description = "endercore configuration (./config/endercore/endercore.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/endercore/endercore.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        enchants = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              allowAutoSmelt = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              allowAutoSmeltWithFortune = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              allowXPBoost = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enchantIDAutoSmelt = lib.mkOption {
                type = lib.types.int;
                default = 46;
                description = "[range: 0 ~ 255, default: 46]";
              };
              enchantIDXPBoost = lib.mkOption {
                type = lib.types.int;
                default = 45;
                description = "[range: 0 ~ 255, default: 45]";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              allowCropRC = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              allowExternalTickSpeedup = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              anvilMaxLevel = lib.mkOption {
                type = lib.types.int;
                default = 2147483647;
                description = "[default: 40]";
              };
              betterAchievements = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              defaultModSort = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 0 ~ 2, default: 1]";
              };
              disableVoidFog = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 0 ~ 2, default: 1]";
              };
              showDurabilityTooltips = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 0 ~ 3, default: 1]";
              };
              showOredictTooltips = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "[range: 0 ~ 3, default: 2]";
              };
              showRegistryNameTooltips = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "[range: 0 ~ 3, default: 3]";
              };
              textureErrorRemover = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 0 ~ 2, default: 1]";
              };
            };
          };
        };
        tweaks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              bookToPaperRecipe = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              changeBoatStackSize = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              fixBedSound = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              fixPackedIceTool = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              infinibow = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              shapelessPaperRecipe = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              slabToBlockRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
      };
    };
  };
}
