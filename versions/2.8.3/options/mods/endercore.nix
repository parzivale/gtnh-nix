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
                description = "Allow the Auto Smelt enchant to be registered. [default: true]";
              };
              allowAutoSmeltWithFortune = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Allow the Auto Smelt enchant to work with Fortune. [default: true]";
              };
              allowXPBoost = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow the XP Boost enchant to be registered. [default: true]";
              };
              enchantIDAutoSmelt = lib.mkOption {
                type = lib.types.int;
                default = 46;
                description = "Enchant ID for the Auto Smelt enchant. [range: 0 ~ 255, default: 46]";
              };
              enchantIDXPBoost = lib.mkOption {
                type = lib.types.int;
                default = 45;
                description = "Enchant ID for the XP boost enchant. [range: 0 ~ 255, default: 45]";
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
                description = "Disabling this option will prevent any crops added to the config json from being right clickable. [default: true]";
              };
              allowExternalTickSpeedup = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Prevent tick speedup (i.e. torcherino) on any TE that uses the base TE class from EnderCore [default: false]";
              };
              anvilMaxLevel = lib.mkOption {
                type = lib.types.int;
                default = 2147483647;
                description = "The max amount of XP levels an anvil recipe can use. [default: 40]";
              };
              betterAchievements = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "The way the game should have been made (Yes this is the fireworks thing). [default: true]";
              };
              defaultModSort = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Controls the default sorting on the mod list GUI. 0 - Default sort (load order) 1 - A to Z sort 2 - Z to A sort [range: 0 ~ 2, default: 1]";
              };
              disableVoidFog = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Removes all void fog. 0 = off 1 = DEFAULT worldtype only 2 = all world types [range: 0 ~ 2, default: 1]";
              };
              showDurabilityTooltips = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Show durability on item tooltips. 0 - Off 1 - Always on 2 - Only with shift 3 - Only in debug mode [range: 0 ~ 3, default: 1]";
              };
              showOredictTooltips = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Show oredictionary names of every item in its tooltip. 0 - Off 1 - Always on 2 - Only with shift 3 - Only in debug mode [range: 0 ~ 3, default: 2]";
              };
              showRegistryNameTooltips = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Show item registry names in tooltips. 0 - Off 1 - Always on 2 - Only with shift 3 - Only in debug mode [range: 0 ~ 3, default: 3]";
              };
              textureErrorRemover = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "0 - Do nothing 1 - Remove stacktraces, leave 1-line missing texture errors 2 - Remove all missing texture errors completely. [range: 0 ~ 2, default: 1]";
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
                description = "Makes boats stack to 16 [default: true]";
              };
              fixBedSound = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes the bed stepSound wool instead of stone [default: true]";
              };
              fixPackedIceTool = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows packed ice to be mined with a pickaxe [default: true]";
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
