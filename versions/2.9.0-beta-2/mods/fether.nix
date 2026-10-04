{ lib, ... }:
{
  fether_cfg = lib.mkOption {
    description = "fether_cfg configuration (./config/fether.cfg)";
    default = { };
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/fether.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        crops = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              cropsDropSeeds = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If crops should drop seeds instead of some of the food [default: false]";
              };
              rClickHarvestCrops = lib.mkOption {
                type = lib.types.str;
                default = "true";
                description = "If crops can be harvested and replaced by richt-clicking them [default: true]";
              };
              rClickMatureCropsShowHearts = lib.mkOption {
                type = lib.types.str;
                default = "false";
                description = "If crops show heart particles if fully grown when right-clicked [default: false]";
              };
            };
          };
        };
        "fruit trees" = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              rClickHarvestFruits = lib.mkOption {
                type = lib.types.str;
                default = "true";
                description = "If fruits can be harvested and replaced by richt-clicking them [default: true]";
              };
              rClickMatureFruitsShowHearts = lib.mkOption {
                type = lib.types.str;
                default = "false";
                description = "If fruits show heart particles if fully grown when right-clicked [default: false]";
              };
              treeRarity = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "Number of Nether Tree generation attempts per chunk [range: 0 ~ 1000, default: 15]";
              };
            };
          };
        };
        gardens = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              gardenDropAmount = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "How many items should drop when breaking a Nether Garden [range: 1 ~ 1024, default: 3]";
              };
              gardenRarity = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Number of Nether Garden group generation attempts per chunk (one group consists of up to eight Nether Gardens) [range: 0 ~ 1000, default: 4]";
              };
              gardenSpreadRate = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "How many random ticks it takes (on average) for a Nether Garden to spread to another block (set to 0 to disable spreading) [range: 0 ~ 2147483647, default: 100]";
              };
              gardensDropSeeds = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If Nether Gardens should drop seeds instead of normal food [default: false]";
              };
              glowFlowerRarity = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Number of Glow Flower group generation attempts per chunk (one group consists of up to eight Glow Flowers) [range: 0 ~ 1000, default: 4]";
              };
              glowFlowerSpreadRate = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "How many random ticks it takes (on average) for a Glow Flower to spread to another block (set to 0 to disable spreading) [range: 0 ~ 2147483647, default: 100]";
              };
              glowFlowersDropSeeds = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If Glow Flower blocks should drop Glow Flower Seeds instead of itself [default: false]";
              };
            };
          };
        };
        general = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              aiRandomness = lib.mkOption {
                type = lib.types.str;
                default = "0.1";
                description = "(CLIENT ONLY) What percentage of responses to the same prompt in \"/fetherai text <prompt>\" should return a random response [range: 0.0 ~ 1.0, default: 0.1]";
              };
              enableFetherAI = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "(CLIENT ONLY) If the \"/fetherai\" command should be enabled [default: true]";
              };
              enableQuartzItems = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If Quartz Tools, Quartz Armor and the Quartz Ingot should be registered. WARNING: Changing this to false can cause problems with existing worlds! [default: true]";
              };
              foodHungerRestore = lib.mkOption {
                type = lib.types.str;
                default = "1";
                description = "How many hunger points crop drops should restore [range: 0 ~ 20, default: 1]";
              };
              foodSaturationModifier = lib.mkOption {
                type = lib.types.str;
                default = "0.6";
                description = "Saturation modifer of all crop drops [range: 0.0 ~ 10.0, default: 0.6]";
              };
            };
          };
        };
        recipes = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              areToolsRepairable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If Quartz Tools / Weapons can be repaired using Quartzite Ingots [default: true]";
              };
              enableCrop2SeedRecipes = lib.mkOption {
                type = lib.types.str;
                default = "true";
                description = "If crop drops can be converted to seeds via shapeless crafting [default: true]";
              };
              isArmorRepairable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If Quartz Armor can be repaired using Quartzite Ingots [default: true]";
              };
            };
          };
        };
      };
    };
  };
}
