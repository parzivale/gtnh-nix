{lib, ...}: {
  SpiceOfLife = lib.mkOption {
    description = "SpiceOfLife configuration (./config/SpiceOfLife.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/SpiceOfLife.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        "carrot module" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "hearts.milestones.base" = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "Base requirement for each Food Milestones (in food points) to award extra hearts";
              };
              "hearts.milestones.enable" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable extra hearts module";
              };
              "hearts.milestones.increment" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "The increase per Milestone to the base Food Milestones value (in food points)";
              };
              "hearts.milestones.maximum" = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "The maximum allowed number of Milestones a player can achieve";
              };
              "hearts.milestones.persists.through.death" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, milestone progress will not get reset after every death";
              };
              "hearts.milestones.reward" = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Extra hearts awarded per milestone achieved";
              };
            };
          };
        };
        main = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "food.modifier.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If false, disables the entire diminishing returns part of the mod";
              };
            };
          };
        };
        client = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "left.click.opens.food.containers" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, left clicking the air while holding a food container will open it (so that it can be eaten from)";
              };
            };
          };
        };
        dev = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "dev.logging.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, enables extra logging to help modpack developers";
              };
            };
          };
        };
        foodgroups = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
        server = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "affect.food.hunger.values" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Setting this to false and affect.food.saturation.modifiers to true will make diminishing returns affect saturation only";
              };
              "affect.food.saturation.modifiers" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Setting this to true and affect.food.hunger.values to false will make diminishing returns affect saturation only";
              };
              "affect.negative.food.hunger.values" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "NOTE: affect.food.hunger.values must be true for this to have any affect";
              };
              "affect.negative.food.saturation.modifiers" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "NOTE: affect.food.saturation.modifiers must be true for this to have any affect";
              };
              "clear.history.after.food.eaten.threshold.reached" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "food.containers.chance.to.drop.food" = lib.mkOption {
                type = lib.types.float;
                default = 0.25;
              };
              "food.containers.max.stacksize" = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "The maximum stacksize per slot in a food container";
              };
              "food.eating.duration.max" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Note: If this is set to 0 and food.eating.speed.modifier is > 0, a food with 0% nutrtional value will take nearly infinite time to eat";
              };
              "food.eating.speed.modifier" = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "Eating duration is calcualted using the formula (eating_duration / (nutritional_value^eating_speed_modifier))";
              };
              "food.history.length" = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "The maximum amount of eaten foods stored in the history at a time";
              };
              "food.history.persists.through.death" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, food history will not get reset after every death";
              };
              "food.hunger.rounding.mode" = lib.mkOption {
                type = lib.types.str;
                default = "floor";
                description = "Valid options: 'round', 'floor', 'ceiling'";
              };
              "food.modifier.formula" = lib.mkOption {
                type = lib.types.str;
                default = "MAX(IF(count>=4 && distinct_food_groups_eaten<=5,(1 - (count - 4)/8),1), IF((count - 8) < food_hunger_value, 1/MAX(food_hunger_value,2), 0))";
              };
              "give.food.journal.as.starting.item" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, a food journal will be given to each player as a starting item";
              };
              "give.food.journal.on.dimishing.returns.start" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "new.player.food.eaten.threshold" = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "The number of times a new player (by World) needs to eat before this mod has any effect";
              };
              "use.food.groups.as.whitelists" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, any foods not in a food group will be excluded from diminishing returns";
              };
              "use.hunger.restored.for.food.history.length" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "NOTE: food.history.length uses hunger units, where 1 hunger unit = 1/2 hunger bar";
              };
              "use.time.for.food.history.length" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "use.time.progress.time.while.logged.off" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
      };
    };
  };
}
