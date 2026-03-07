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
                description = "If true, foods' hunger value will be multiplied by the current nutritional value Setting this to false and affect.food.saturation.modifiers to true will make diminishing returns affect saturation only";
              };
              "affect.food.saturation.modifiers" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, foods' saturation modifier will be multiplied by the current nutritional value NOTE: When affect.food.hunger.values is true, saturation bonuses of foods will automatically decrease as the hunger value of the food decreases Setting this to true when affect.food.hunger.values is true will make saturation bonuses decrease disproportionately more than hunger values Setting this to true and affect.food.hunger.values to false will make diminishing returns affect saturation only";
              };
              "affect.negative.food.hunger.values" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, foods with negative hunger values will be made more negative as nutritional value decreases NOTE: affect.food.hunger.values must be true for this to have any affect";
              };
              "affect.negative.food.saturation.modifiers" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, foods with negative saturation modifiers will be made more negative as nutritional value decreases NOTE: affect.food.saturation.modifiers must be true for this to have any affect";
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
                description = "The maximum time it takes to eat a food after being modified by food.eating.speed.modifier The default eating duration is 32. Set this to 0 to remove the limit on eating speed. Note: If this is set to 0 and food.eating.speed.modifier is > 0, a food with 0% nutrtional value will take nearly infinite time to eat";
              };
              "food.eating.speed.modifier" = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "If set to greater than zero, food eating speed will be affected by nutritional value (meaning the lower the nutrtional value, the longer it will take to eat it) Eating duration is calcualted using the formula (eating_duration / (nutritional_value^eating_speed_modifier))";
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
                description = "Rounding mode used on the hunger value of foods Valid options: 'round', 'floor', 'ceiling'";
              };
              "food.modifier.formula" = lib.mkOption {
                type = lib.types.str;
                default = "MAX(IF(count>=4 && distinct_food_groups_eaten<=5,(1 - (count - 4)/8),1), IF((count - 8) < food_hunger_value, 1/MAX(food_hunger_value,2), 0))";
                description = "Uses the EvalEx expression parser See: https://github.com/uklimaschewski/EvalEx for syntax/function documentation Available variables: count : The number of times the food (or its food group) has been eaten within the food history hunger_count : The total amount of hunger that the food (or its food group) has restored within the food history (1 hunger unit = 1/2 hunger bar) saturation_count : The total amount of saturation that the food (or its food group) has restored within the food history (1 saturation unit = 1/2 saturation bar) max_history_length : The maximum length of the food history (see food.history.length) cur_history_length : The current length of the food history (<= max_history_length) food_hunger_value : The default amount of hunger the food would restore in hunger units (1 hunger unit = 1/2 hunger bar) food_saturation_mod : The default saturation modifier of the food cur_hunger : The current hunger value of the player in hunger units (20 = full) cur_saturation : The current saturation value of the player total_food_eaten : The all-time total number of times any food has been eaten by the player food_group_count : The number of food groups that the food belongs to distinct_food_groups_eaten : The number of distinct food groups in the player's current food history total_food_groups : The total number of enabled food groups exact_count : The number of times the food (ignoring food groups) has been eaten within the food history";
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
                description = "If true, food.history.length will use amount of hunger restored instead of number of foods eaten for its maximum length For example, a food.history.length length of 12 will store a max of 2 foods that restored 6 hunger each, 3 foods that restored 4 hunger each, 12 foods that restored 1 hunger each, etc NOTE: food.history.length uses hunger units, where 1 hunger unit = 1/2 hunger bar";
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
