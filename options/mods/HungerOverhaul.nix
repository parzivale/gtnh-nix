{lib, ...}: {
  HungerOverhaul = lib.mkOption {
    description = "HungerOverhaul configuration (./config/HungerOverhaul/HungerOverhaul.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/HungerOverhaul/HungerOverhaul.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "custom field" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addCustomVillageField = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds a custom field to villages [vanilla: false] [default: true]";
              };
              fieldNormalWeight = lib.mkOption {
                type = lib.types.int;
                default = 70;
                description = "Weighted chance for custom field to contain 'normal' crops [vanilla: 0] [range: 0 ~ 2147483647, default: 70]";
              };
              fieldReedWeight = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Weighted chance for custom field to contain reeds [vanilla: 0] [range: 0 ~ 2147483647, default: 10]";
              };
              fieldStemWeight = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Weighted chance for custom field to contain pumpkins/melons [vanilla: 0] [range: 0 ~ 2147483647, default: 10]";
              };
            };
          };
        };
        delays = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              breedingTimeoutMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Multiplier applied to the delay between breeding entities [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              cactusRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Multiplier on the time it takes cactus to grow [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              childDurationMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Multiplier applied to the delay before children become adults [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              cocoaRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Multiplier on the time it takes cocoa to grow [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              cropRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Multiplier on the time it takes a non-tree crop to grow [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              dryingRackTimeMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Multiplier on the time it takes food to dry on Tinkers' Construct drying racks [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              eggTimeoutMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Multiplier applied to the delay between chicken egg laying [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              flowerRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Multiplier on the time it takes a WeeeFlower crop to grow [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 1.0]";
              };
              milkedTimeout = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Delay (in minutes) after milking a cow before it can be milked again [vanilla: 0] [range: 0 ~ 2147483647, default: 20]";
              };
              netherWartRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Multiplier on the time it takes nether wart to grow [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              noSunlightRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Multipier on crop growth time without sunlight (1 to disable feature, 0 to make crops only grow in sunlight) [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 2.0]";
              };
              saplingRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Multiplier on the time it takes a sapling to grow into a tree [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              sugarcaneRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Multiplier on the time it takes sugarcane to grow [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              treeCropRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Multiplier on the time it takes a tree crop to grow [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              wrongBiomeRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Multipier on crop growth time (except sugarcane) in the wrong biome (1 to disable feature, 0 to make crops only grow in correct biome) [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 2.0]";
              };
              wrongBiomeRegrowthMultiplierSugarcane = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Multipier on sugarcane growth time in the wrong biome (1 to disable feature, 0 to make sugarcane only grow in correct biome) [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 2.0]";
              };
            };
          };
        };
        "difficulty scaling" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              difficultyScaling = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable all difficulty scaling effect in one setting [vanilla: false] [default: true]";
              };
              difficultyScalingBoneMeal = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Effects of bone meal dependant of difficulty ('difficultyScaling' and 'modifyBonemealGrowth' must be true) [vanilla: false] [default: true]";
              };
              difficultyScalingEffects = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Negative effects on low health/hunger scale by difficulty ('difficultyScaling' must be true) [vanilla: false] [default: true]";
              };
              difficultyScalingHealing = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Healing rate scales by difficulty ('difficultyScaling' must be true) [vanilla: false] [default: true]";
              };
              difficultyScalingHunger = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Hunger loss rate scales by difficulty ('difficultyScaling' must be true) [vanilla: false] [default: true]";
              };
              difficultyScalingRespawnHunger = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Hunger value after respawn is affected by difficulty ('difficultyScaling' must be true) [vanilla: false] [default: true]";
              };
            };
          };
        };
        food = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addFoodTooltips = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add tooltips to food items showing hints at food value [vanilla: false] [default: true]";
              };
              addWellFedEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds a 'well fed' effect that gives slight health regen [vanilla: false] [default: true]";
              };
              foodHungerDivider = lib.mkOption {
                type = lib.types.str;
                default = "2.0";
                description = "Food values not manually set (see 'useHOFoodValues') will have their hunger value divided by this ('modifyFoodValues' must be true) [vanilla: 1.0] [range: -3.4028235E38 ~ 3.4028235E38, default: 4.0]";
              };
              foodHungerToSaturationDivider = lib.mkOption {
                type = lib.types.str;
                default = "20.0";
                description = "Set to 0 to disable [vanilla: 0.0] [range: -3.4028235E38 ~ 3.4028235E38, default: 20.0]";
              };
              foodSaturationDivider = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "Note: Gets applied after 'foodHungerToSaturationDivider' [vanilla: 1.0] [range: -3.4028235E38 ~ 3.4028235E38, default: 1.0]";
              };
              foodStackSizeMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Multiplier on the stack size of food ('modifyFoodStackSize' must be true) [vanilla: 1] [range: 1 ~ 2147483647, default: 1]";
              };
              modifyFoodEatingSpeed = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Changes the eating animation speed to be dependant on the food's replenishment value [vanilla: false] [default: true]";
              };
              modifyFoodStackSize = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Changes the stack size of food to be dependant on the food's replenishment value [vanilla: false] [default: true]";
              };
              modifyFoodValues = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables/disables all food value modification [vanilla: false] [default: true]";
              };
              useHOFoodValues = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables/disables Hunger Overhaul manually setting the food values for supported mods ('modifyFoodValues' must be true) [vanilla: false] [default: true]";
              };
            };
          };
        };
        "getting seeds" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addSeedsCraftingRecipe = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds a crafting recipe to turn 1 wheat into 1 seed [vanilla: false] [default: true]";
              };
              allSeedsEqual = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Each seed has an equal chance to drop (grass drops and via hoes) [vanilla: false] [default: true]";
              };
              hoeToolDamageMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Multiplier on tool damage taken when a hoe is used ('modifyHoeUse' must be true) [vanilla: 1] [range: 1 ~ 2147483647, default: 5]";
              };
              modifyHoeUse = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Changes the use of hoes depending on the availability of water [vanilla: false] [default: true]";
              };
              removeHoeRecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether wood and stone hoe recipes are removed [vanilla: false] [default: true]";
              };
              removeTallGrassSeeds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Removes seed drops when breaking tall grass [vanilla: false] [default: true]";
              };
              seedChance = lib.mkOption {
                type = lib.types.int;
                default = 25;
                description = "Percent chance for seed to drop from hoe use on normal difficulty ('modifyHoeUse' must be true) [vanilla: 20] [range: 0 ~ 100, default: 20]";
              };
            };
          };
        };
        harvestcraft = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addCropTradesFarmer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add HarvestCraft crop produce to the items farmer villagers will buy (HarvestCraft) [vanilla: false] [default: true]";
              };
              addHarvestCraftChestLoot = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "HarvestCraft items added to dungeon/temple chests (Harvestcraft) [vanilla: false] [default: true]";
              };
              addSaplingTradesFarmer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add HarvestCraft saplings to the items farmer villagers will sell (HarvestCraft) [vanilla: false] [default: true]";
              };
              addTradesButcher = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Add high tier HarvestCraft foods to the items butcher villagers will sell (HarvestCraft) [vanilla: false] [default: true]";
              };
              chestLootChance = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Weighted chance for food to be found in chests (addHarvestCraftChestLoot must be true) [vanilla: 5] [range: 1 ~ 2147483647, default: 5]";
              };
              chestLootMaxStackSize = lib.mkOption {
                type = lib.types.int;
                default = 32;
                description = "Max stack size for food to be found in chests (addHarvestCraftChestLoot must be true) [vanilla: 64] [range: 1 ~ 2147483647, default: 16]";
              };
              foodsUnplantable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes HarvestCraft foods unplantable, meaning seeds are required to plant crops [vanilla: false] [default: true]";
              };
            };
          };
        };
        harvesting = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              bonemealEffectiveness = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "Multiplier on the effectiveness of bonemeal; the smaller this is, the more often bonemeal will fail to create growth. Set to 0 to disable bonemeal completely. [vanilla: 1.0] [range: 0.0 ~ 1.0, default: 0.5]";
              };
              enableRightClickHarvesting = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables/disables harvest crops by right clicking them [vanilla: false] [default: true]";
              };
              modifyBonemealGrowth = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Reduces the amount of growth from a successful bonemeal on certain plants (uses IguanaMan's opinionated values) [vanilla: false] [default: true]";
              };
              modifyCropDropsBreak = lib.mkOption {
                type = lib.types.str;
                default = "true";
                description = "Enables/disables modification of the item drops of crops when breaking them (produce and seeds) [vanilla: false] [default: true]";
              };
              modifyCropDropsRightClick = lib.mkOption {
                type = lib.types.str;
                default = "true";
                description = "Enables/disables modification of the item drops of crops when right clicking them (produce and seeds) [vanilla: false] [default: true]";
              };
              producePerHarvestBreakMax = lib.mkOption {
                type = lib.types.str;
                default = "4";
                description = "Maximum number of produce you get when harvesting a non-tree crop by breaking it (modifyCropDrops must be true) [vanilla: 4] [range: 0 ~ 2147483647, default: 4]";
              };
              producePerHarvestBreakMin = lib.mkOption {
                type = lib.types.str;
                default = "2";
                description = "Minimum number of produce you get when harvesting a non-tree crop by breaking it (modifyCropDrops must be true) [vanilla: 2] [range: 0 ~ 2147483647, default: 2]";
              };
              producePerHarvestRightClickMax = lib.mkOption {
                type = lib.types.str;
                default = "4";
                description = "Maximum number of produce you get when harvesting a non-tree crop with right click (modifyCropDrops must be true) [vanilla: 4] [range: 0 ~ 2147483647, default: 4]";
              };
              producePerHarvestRightClickMin = lib.mkOption {
                type = lib.types.str;
                default = "2";
                description = "Minimum number of produce you get when harvesting a non-tree crop with right click (modifyCropDrops must be true) [vanilla: 2] [range: 0 ~ 2147483647, default: 2]";
              };
              seedsPerHarvestBreakMax = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Maximum number of seeds you get when harvesting a non-tree crop by breaking it (modifyCropDrops must be tree) [vanilla: 0] [range: 0 ~ 2147483647, default: 0]";
              };
              seedsPerHarvestBreakMin = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Minimum number of seeds you get when harvesting a non-tree crop by breaking it (modifyCropDrops must be true) [vanilla: 0] [range: 0 ~ 2147483647, default: 0]";
              };
              seedsPerHarvestRightClickMax = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Maximum number of seeds you get when harvesting a non-tree crop with right click (modifyCropDrops must be true) [vanilla: 0] [range: 0 ~ 2147483647, default: 0]";
              };
              seedsPerHarvestRightClickMin = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Minimum number of seeds you get when harvesting a non-tree crop with right click (modifyCropDrops must be true) [vanilla: 0] [range: 0 ~ 2147483647, default: 0]";
              };
            };
          };
        };
        health = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              foodHealDivider = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Amount of health food restores is the food value divided by this number (foodRegensHealth must be true) [vanilla: 4] [range: 0 ~ 2147483647, default: 4]";
              };
              foodRegensHealth = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Eating food regenerates health [vanilla: false] [default: false]";
              };
              healthRegenRatePercentage = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Speed up or slow down the rate that health regenerates (0 to disable regen) [vanilla: 100] [range: 0 ~ 2147483647, default: 100]";
              };
              lowHealthRegenRateModifier = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "The lower your health the longer it takes to regen, modify the effect here (lower = less effect) (modifyRegenRateOnLowHealth must be true) [vanilla: 5] [range: 0 ~ 2147483647, default: 5]";
              };
              minHungerToHeal = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "Minimum hunger level before healing starts [vanilla: 18] [range: 0 ~ 2147483647, default: 7]";
              };
              modifyRegenRateOnLowHealth = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "The lower your health the longer it takes to regen [vanilla: false] [default: true]";
              };
            };
          };
        };
        hunger = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              constantHungerLoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "You lose hunger (very slowly) at all times [vanilla: false] [default: true]";
              };
              damageOnStarve = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Amount of damage you take when hunger hits zero [vanilla: 2] [range: -2147483648 ~ 2147483647, default: 200]";
              };
              disableHealingHungerDrain = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable the hunger drain when healing that was introduced in vanilla 1.6.2 [vanilla: false] [default: true]";
              };
              hungerLossRatePercentage = lib.mkOption {
                type = lib.types.str;
                default = "100";
                description = "Speed up or slow down the rate that hunger drops (set to 0 to disable hunger loss) [vanilla: 100.0] [range: 0.0 ~ 3.4028235E38, default: 133.33334]";
              };
              respawnHungerDifficultyModifier = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "The amount difficulty modifies the hunger value set after respawning  ('difficultyScaling' and 'difficultyScalingRespawnHunger' must be true) [vanilla: 4] [range: 0 ~ 2147483647, default: 4]";
              };
              respawnHungerValue = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "hunger value set after respawning for peaceful/easy difficulty [vanilla: 20] [range: 0 ~ 2147483647, default: 20]";
              };
            };
          };
        };
        "low stats" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addGuiText = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Shows onscreen text when hunger/health is low [vanilla: false] [default: true]";
              };
              addLowHealthMiningSlowdown = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Mining slowdown effect when health is low ('addLowStatEffects' must be true) [vanilla: false] [default: true]";
              };
              addLowHealthNausea = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Nausea effect when health is really low ('addLowStatEffects' must be true) [vanilla: false] [default: true]";
              };
              addLowHealthSlowness = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Slowness effect when health is low ('addLowStatEffects' must be true) [vanilla: false] [default: true]";
              };
              addLowHealthWeakness = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Weakness effect when health is low ('addLowStatEffects' must be true) [vanilla: false] [default: true]";
              };
              addLowHungerMiningSlowdown = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Mining slowdown effect when hunger is low ('addLowStatEffects' must be true) [vanilla: false] [default: true]";
              };
              addLowHungerNausea = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Nausea effect when hunger is really low ('addLowStatEffects' must be true) [vanilla: false] [default: true]";
              };
              addLowHungerSlowness = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Slowness effect when hunger is low ('addLowStatEffects' must be true) [vanilla: false] [default: true]";
              };
              addLowHungerWeakness = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Weakness effect when hunger is low ('addLowStatEffects' must be true) [vanilla: false] [default: true]";
              };
              addLowStatEffects = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables/disables all low hunger/health effects [vanilla: false] [default: true]";
              };
            };
          };
        };
        natura = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addAlternateNaturaFlourCraftingRecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Adds alternate recipes to turn barley/wheat into flour: 2x wheat/barley -> flour. [vanilla: false] [default: false]";
              };
              removeNaturaFlourCraftingRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Note: These recipes are always removed if 'addSeedsCraftingRecipe' in 'getting seeds' is true because otherwise they'd conflict. [vanilla: false] [default: true]";
              };
              removeNaturaFlourSmeltingRecipe = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Removes the default barley/wheat flour -> bread smelting recipes. [vanilla: false] [default: true]";
              };
            };
          };
        };
      };
    };
  };
  default = lib.mkOption {
    description = "default configuration (./config/HungerOverhaul/default.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/HungerOverhaul/default.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
        "custom field" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addCustomVillageField = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds a custom field to villages [vanilla: false] [default: true]";
              };
              fieldNormalWeight = lib.mkOption {
                type = lib.types.int;
                default = 70;
                description = "Weighted chance for custom field to contain 'normal' crops [vanilla: 0] [range: 0 ~ 2147483647, default: 70]";
              };
              fieldReedWeight = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Weighted chance for custom field to contain reeds [vanilla: 0] [range: 0 ~ 2147483647, default: 10]";
              };
              fieldStemWeight = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Weighted chance for custom field to contain pumpkins/melons [vanilla: 0] [range: 0 ~ 2147483647, default: 10]";
              };
            };
          };
        };
        delays = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              breedingTimeoutMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Multiplier applied to the delay between breeding entities [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              cactusRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Multiplier on the time it takes cactus to grow [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              childDurationMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Multiplier applied to the delay before children become adults [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              cocoaRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Multiplier on the time it takes cocoa to grow [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              cropRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Multiplier on the time it takes a non-tree crop to grow [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              dryingRackTimeMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Multiplier on the time it takes food to dry on Tinkers' Construct drying racks [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              eggTimeoutMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Multiplier applied to the delay between chicken egg laying [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              flowerRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Multiplier on the time it takes a WeeeFlower crop to grow [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 1.0]";
              };
              milkedTimeout = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Delay (in minutes) after milking a cow before it can be milked again [vanilla: 0] [range: 0 ~ 2147483647, default: 20]";
              };
              netherWartRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Multiplier on the time it takes nether wart to grow [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              noSunlightRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Multipier on crop growth time without sunlight (1 to disable feature, 0 to make crops only grow in sunlight) [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 2.0]";
              };
              saplingRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Multiplier on the time it takes a sapling to grow into a tree [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              sugarcaneRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Multiplier on the time it takes sugarcane to grow [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              treeCropRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Multiplier on the time it takes a tree crop to grow [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              wrongBiomeRegrowthMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Multipier on crop growth time (except sugarcane) in the wrong biome (1 to disable feature, 0 to make crops only grow in correct biome) [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 2.0]";
              };
              wrongBiomeRegrowthMultiplierSugarcane = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Multipier on sugarcane growth time in the wrong biome (1 to disable feature, 0 to make sugarcane only grow in correct biome) [vanilla: 1.0] [range: 0.0 ~ 3.4028235E38, default: 2.0]";
              };
            };
          };
        };
        "difficulty scaling" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              difficultyScaling = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable all difficulty scaling effect in one setting [vanilla: false] [default: true]";
              };
              difficultyScalingBoneMeal = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Effects of bone meal dependant of difficulty ('difficultyScaling' and 'modifyBonemealGrowth' must be true) [vanilla: false] [default: true]";
              };
              difficultyScalingEffects = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Negative effects on low health/hunger scale by difficulty ('difficultyScaling' must be true) [vanilla: false] [default: true]";
              };
              difficultyScalingHealing = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Healing rate scales by difficulty ('difficultyScaling' must be true) [vanilla: false] [default: true]";
              };
              difficultyScalingHunger = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Hunger loss rate scales by difficulty ('difficultyScaling' must be true) [vanilla: false] [default: true]";
              };
              difficultyScalingRespawnHunger = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Hunger value after respawn is affected by difficulty ('difficultyScaling' must be true) [vanilla: false] [default: true]";
              };
            };
          };
        };
        food = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addFoodTooltips = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add tooltips to food items showing hints at food value [vanilla: false] [default: true]";
              };
              addWellFedEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds a 'well fed' effect that gives slight health regen [vanilla: false] [default: true]";
              };
              foodHungerDivider = lib.mkOption {
                type = lib.types.str;
                default = "4.0";
                description = "Food values not manually set (see 'useHOFoodValues') will have their hunger value divided by this ('modifyFoodValues' must be true) [vanilla: 1.0] [range: -3.4028235E38 ~ 3.4028235E38, default: 4.0]";
              };
              foodHungerToSaturationDivider = lib.mkOption {
                type = lib.types.str;
                default = "20.0";
                description = "Set to 0 to disable [vanilla: 0.0] [range: -3.4028235E38 ~ 3.4028235E38, default: 20.0]";
              };
              foodSaturationDivider = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "Note: Gets applied after 'foodHungerToSaturationDivider' [vanilla: 1.0] [range: -3.4028235E38 ~ 3.4028235E38, default: 1.0]";
              };
              foodStackSizeMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Multiplier on the stack size of food ('modifyFoodStackSize' must be true) [vanilla: 1] [range: 1 ~ 2147483647, default: 1]";
              };
              modifyFoodEatingSpeed = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Changes the eating animation speed to be dependant on the food's replenishment value [vanilla: false] [default: true]";
              };
              modifyFoodStackSize = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Changes the stack size of food to be dependant on the food's replenishment value [vanilla: false] [default: true]";
              };
              modifyFoodValues = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables/disables all food value modification [vanilla: false] [default: true]";
              };
              useHOFoodValues = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables/disables Hunger Overhaul manually setting the food values for supported mods ('modifyFoodValues' must be true) [vanilla: false] [default: true]";
              };
            };
          };
        };
        "getting seeds" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addSeedsCraftingRecipe = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds a crafting recipe to turn 1 wheat into 1 seed [vanilla: false] [default: true]";
              };
              allSeedsEqual = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Each seed has an equal chance to drop (grass drops and via hoes) [vanilla: false] [default: true]";
              };
              hoeToolDamageMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Multiplier on tool damage taken when a hoe is used ('modifyHoeUse' must be true) [vanilla: 1] [range: 1 ~ 2147483647, default: 5]";
              };
              modifyHoeUse = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Changes the use of hoes depending on the availability of water [vanilla: false] [default: true]";
              };
              removeHoeRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether wood and stone hoe recipes are removed [vanilla: false] [default: true]";
              };
              removeTallGrassSeeds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Removes seed drops when breaking tall grass [vanilla: false] [default: true]";
              };
              seedChance = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Percent chance for seed to drop from hoe use on normal difficulty ('modifyHoeUse' must be true) [vanilla: 20] [range: 0 ~ 100, default: 20]";
              };
            };
          };
        };
        harvestcraft = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addCropTradesFarmer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add HarvestCraft crop produce to the items farmer villagers will buy (HarvestCraft) [vanilla: false] [default: true]";
              };
              addHarvestCraftChestLoot = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "HarvestCraft items added to dungeon/temple chests (Harvestcraft) [vanilla: false] [default: true]";
              };
              addSaplingTradesFarmer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add HarvestCraft saplings to the items farmer villagers will sell (HarvestCraft) [vanilla: false] [default: true]";
              };
              addTradesButcher = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add high tier HarvestCraft foods to the items butcher villagers will sell (HarvestCraft) [vanilla: false] [default: true]";
              };
              chestLootChance = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Weighted chance for food to be found in chests (addHarvestCraftChestLoot must be true) [vanilla: 5] [range: 1 ~ 2147483647, default: 5]";
              };
              chestLootMaxStackSize = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "Max stack size for food to be found in chests (addHarvestCraftChestLoot must be true) [vanilla: 64] [range: 1 ~ 2147483647, default: 16]";
              };
              foodsUnplantable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes HarvestCraft foods unplantable, meaning seeds are required to plant crops [vanilla: false] [default: true]";
              };
            };
          };
        };
        harvesting = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              bonemealEffectiveness = lib.mkOption {
                type = lib.types.str;
                default = "0.5";
                description = "Multiplier on the effectiveness of bonemeal; the smaller this is, the more often bonemeal will fail to create growth. Set to 0 to disable bonemeal completely. [vanilla: 1.0] [range: 0.0 ~ 1.0, default: 0.5]";
              };
              enableRightClickHarvesting = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables/disables harvest crops by right clicking them [vanilla: false] [default: true]";
              };
              modifyBonemealGrowth = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Reduces the amount of growth from a successful bonemeal on certain plants (uses IguanaMan's opinionated values) [vanilla: false] [default: true]";
              };
              modifyCropDropsBreak = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables/disables modification of the item drops of crops when breaking them (produce and seeds) [vanilla: false] [default: true]";
              };
              modifyCropDropsRightClick = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables/disables modification of the item drops of crops when right clicking them (produce and seeds) [vanilla: false] [default: true]";
              };
              producePerHarvestBreakMax = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Maximum number of produce you get when harvesting a non-tree crop by breaking it (modifyCropDrops must be true) [vanilla: 4] [range: 0 ~ 2147483647, default: 4]";
              };
              producePerHarvestBreakMin = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Minimum number of produce you get when harvesting a non-tree crop by breaking it (modifyCropDrops must be true) [vanilla: 2] [range: 0 ~ 2147483647, default: 2]";
              };
              producePerHarvestRightClickMax = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Maximum number of produce you get when harvesting a non-tree crop with right click (modifyCropDrops must be true) [vanilla: 4] [range: 0 ~ 2147483647, default: 4]";
              };
              producePerHarvestRightClickMin = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Minimum number of produce you get when harvesting a non-tree crop with right click (modifyCropDrops must be true) [vanilla: 2] [range: 0 ~ 2147483647, default: 2]";
              };
              seedsPerHarvestBreakMax = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Maximum number of seeds you get when harvesting a non-tree crop by breaking it (modifyCropDrops must be tree) [vanilla: 0] [range: 0 ~ 2147483647, default: 0]";
              };
              seedsPerHarvestBreakMin = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Minimum number of seeds you get when harvesting a non-tree crop by breaking it (modifyCropDrops must be true) [vanilla: 0] [range: 0 ~ 2147483647, default: 0]";
              };
              seedsPerHarvestRightClickMax = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Maximum number of seeds you get when harvesting a non-tree crop with right click (modifyCropDrops must be true) [vanilla: 0] [range: 0 ~ 2147483647, default: 0]";
              };
              seedsPerHarvestRightClickMin = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Minimum number of seeds you get when harvesting a non-tree crop with right click (modifyCropDrops must be true) [vanilla: 0] [range: 0 ~ 2147483647, default: 0]";
              };
            };
          };
        };
        health = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              foodHealDivider = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Amount of health food restores is the food value divided by this number (foodRegensHealth must be true) [vanilla: 4] [range: 0 ~ 2147483647, default: 4]";
              };
              foodRegensHealth = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Eating food regenerates health [vanilla: false] [default: false]";
              };
              healthRegenRatePercentage = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Speed up or slow down the rate that health regenerates (0 to disable regen) [vanilla: 100] [range: 0 ~ 2147483647, default: 100]";
              };
              lowHealthRegenRateModifier = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "The lower your health the longer it takes to regen, modify the effect here (lower = less effect) (modifyRegenRateOnLowHealth must be true) [vanilla: 5] [range: 0 ~ 2147483647, default: 5]";
              };
              minHungerToHeal = lib.mkOption {
                type = lib.types.int;
                default = 7;
                description = "Minimum hunger level before healing starts [vanilla: 18] [range: 0 ~ 2147483647, default: 7]";
              };
              modifyRegenRateOnLowHealth = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "The lower your health the longer it takes to regen [vanilla: false] [default: true]";
              };
            };
          };
        };
        hunger = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              constantHungerLoss = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "You lose hunger (very slowly) at all times [vanilla: false] [default: true]";
              };
              damageOnStarve = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "Amount of damage you take when hunger hits zero [vanilla: 2] [range: -2147483648 ~ 2147483647, default: 200]";
              };
              disableHealingHungerDrain = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable the hunger drain when healing that was introduced in vanilla 1.6.2 [vanilla: false] [default: true]";
              };
              hungerLossRatePercentage = lib.mkOption {
                type = lib.types.str;
                default = "133.33334350585938";
                description = "Speed up or slow down the rate that hunger drops (set to 0 to disable hunger loss) [vanilla: 100.0] [range: 0.0 ~ 3.4028235E38, default: 133.33334]";
              };
              respawnHungerDifficultyModifier = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "The amount difficulty modifies the hunger value set after respawning  ('difficultyScaling' and 'difficultyScalingRespawnHunger' must be true) [vanilla: 4] [range: 0 ~ 2147483647, default: 4]";
              };
              respawnHungerValue = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "hunger value set after respawning for peaceful/easy difficulty [vanilla: 20] [range: 0 ~ 2147483647, default: 20]";
              };
            };
          };
        };
        "low stats" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addGuiText = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Shows onscreen text when hunger/health is low [vanilla: false] [default: true]";
              };
              addLowHealthMiningSlowdown = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Mining slowdown effect when health is low ('addLowStatEffects' must be true) [vanilla: false] [default: true]";
              };
              addLowHealthNausea = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Nausea effect when health is really low ('addLowStatEffects' must be true) [vanilla: false] [default: true]";
              };
              addLowHealthSlowness = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Slowness effect when health is low ('addLowStatEffects' must be true) [vanilla: false] [default: true]";
              };
              addLowHealthWeakness = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Weakness effect when health is low ('addLowStatEffects' must be true) [vanilla: false] [default: true]";
              };
              addLowHungerMiningSlowdown = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Mining slowdown effect when hunger is low ('addLowStatEffects' must be true) [vanilla: false] [default: true]";
              };
              addLowHungerNausea = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Nausea effect when hunger is really low ('addLowStatEffects' must be true) [vanilla: false] [default: true]";
              };
              addLowHungerSlowness = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Slowness effect when hunger is low ('addLowStatEffects' must be true) [vanilla: false] [default: true]";
              };
              addLowHungerWeakness = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Weakness effect when hunger is low ('addLowStatEffects' must be true) [vanilla: false] [default: true]";
              };
              addLowStatEffects = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables/disables all low hunger/health effects [vanilla: false] [default: true]";
              };
            };
          };
        };
        natura = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addAlternateNaturaFlourCraftingRecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Adds alternate recipes to turn barley/wheat into flour: 2x wheat/barley -> flour. [vanilla: false] [default: false]";
              };
              removeNaturaFlourCraftingRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Note: These recipes are always removed if 'addSeedsCraftingRecipe' in 'getting seeds' is true because otherwise they'd conflict. [vanilla: false] [default: true]";
              };
              removeNaturaFlourSmeltingRecipe = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Removes the default barley/wheat flour -> bread smelting recipes. [vanilla: false] [default: true]";
              };
            };
          };
        };
      };
    };
  };
}
