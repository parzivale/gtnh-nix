{lib, ...}: {
  harvestthenether = lib.mkOption {
    description = "harvestthenether configuration (./config/harvestthenether.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/harvestthenether.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        crops = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              cropfoodRestore = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              cropsaturationRestore = lib.mkOption {
                type = lib.types.float;
                default = 0.6000000238418579;
              };
              cropsdropSeeds = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              mealsaturation = lib.mkOption {
                type = lib.types.float;
                default = 1.2000000476837158;
              };
              meatymealsaturation = lib.mkOption {
                type = lib.types.float;
                default = 1.600000023841858;
              };
              rightclickharvestCrop = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              rightclickmatureshowcropHearts = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              snacksaturation = lib.mkOption {
                type = lib.types.float;
                default = 0.6000000238418579;
              };
            };
          };
        };
        "fruit trees" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              nethertreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              rightclickharvestFruit = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              rightclickmatureshowfruitHearts = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              treeRarity = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
            };
          };
        };
        gardens = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enablegardenSpread = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableglowflowerSpread = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enablenethergardenGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enablenetherglowflowerGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              gardenRarity = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              gardendropAmount = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              gardensdropSeeds = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              gardenspreadRate = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              glowflowerRarity = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              glowflowersdropSeeds = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              glowflowerspreadRate = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
            };
          };
        };
        "miscellaneous recipes" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enablecroptoseedRecipe = lib.mkOption {
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
