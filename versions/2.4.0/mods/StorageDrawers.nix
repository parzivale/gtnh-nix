{lib, ...}: {
  StorageDrawers_cfg = lib.mkOption {
    description = "StorageDrawers_cfg configuration (./config/StorageDrawers.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/StorageDrawers.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
      };
      addons = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          showBlocksInCreative = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          showBlocksInNEI = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          useSeparateCreativeTabs = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          };
        };
      };
      blocks = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          compdrawers = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              baseStorage = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              recipeOutput = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              };
            };
          };
          controller = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              maxDrawers = lib.mkOption {
                type = lib.types.int;
                default = 50;
              };
              range = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              };
            };
          };
          controllerslave = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              };
            };
          };
          fulldrawers1 = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              baseStorage = lib.mkOption {
                type = lib.types.int;
                default = 64;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              recipeOutput = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              };
            };
          };
          fulldrawers2 = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              baseStorage = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              recipeOutput = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              };
            };
          };
          fulldrawers4 = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              baseStorage = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              recipeOutput = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              };
            };
          };
          halfdrawers2 = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              baseStorage = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              recipeOutput = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              };
            };
          };
          halfdrawers4 = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              baseStorage = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              recipeOutput = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              };
            };
          };
          trim = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              recipeOutput = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              };
            };
          };
          };
        };
      };
      general = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          creativeTabVanillaWoods = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableCreativeUpgrades = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableDebugLogging = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Writes additional log messages while using the mod.  Mainly for debug purposes.  Should be kept disabled unless instructed otherwise.";
          };
          enableDrawerUI = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableFallbackRecipes = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableFramedDrawers = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableIndicatorUpgrades = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableItemConversion = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          enableLockUpgrades = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enablePersonalUpgrades = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableRedstoneUpgrades = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableShroudUpgrades = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableSidedInput = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableSidedOutput = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableSortingUpgrades = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableStorageUpgrades = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableTape = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableVoidUpgrades = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          invertShift = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Inverts how shift works with drawers. If this is true, shifting will only give one item, where regular clicks will give a full stack. Leave false for default behavior.";
          };
          itemRenderType = lib.mkOption {
            type = lib.types.str;
            default = "fast";
          };
          renderStorageUpgrades = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          wailaStackRemainder = lib.mkOption {
            type = lib.types.str;
            default = "stack + remainder";
          };
          };
        };
      };
      integration = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          enableAE2 = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableChisel = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableGTNH = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableMineTweaker = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableRefinedRelocation = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          enableThaumcraft = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableThermalExpansion = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          enableThermalFoundation = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          enableWaila = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          };
        };
      };
      upgrades = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          level2Mult = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          level3Mult = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          level4Mult = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          level5Mult = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          level6Mult = lib.mkOption {
            type = lib.types.int;
            default = 32;
          };
          };
        };
      };
      };
    };
  };
}
