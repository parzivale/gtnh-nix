{lib, ...}: {
  Thaumcraft = lib.mkOption {
    description = "Thaumcraft configuration (./config/Thaumcraft.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/Thaumcraft.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        biomes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              biome_eerie = lib.mkOption {
                type = lib.types.int;
                default = 190;
                description = "Eerie biome id";
              };
              biome_eldritch = lib.mkOption {
                type = lib.types.int;
                default = 191;
                description = "Eldritch Lands biome id";
              };
              biome_magical_forest = lib.mkOption {
                type = lib.types.int;
                default = 192;
                description = "Magical Forest biome id";
              };
              biome_taint = lib.mkOption {
                type = lib.types.int;
                default = 193;
                description = "Taint biome id";
              };
              magical_forest_biome_weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "higher values increases number of magical forest biomes. If you are using biome addon mods you probably want to increase this weight quite a bit";
              };
              outer_lands_dim = lib.mkOption {
                type = lib.types.int;
                default = 50;
              };
              taint_biome_weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "higher values increases number of taint biomes. If you are using biome addon mods you probably want to increase this weight quite a bit";
              };
            };
          };
        };
        enchantments = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ench_haste = lib.mkOption {
                type = lib.types.int;
                default = 153;
              };
              ench_repair = lib.mkOption {
                type = lib.types.int;
                default = 154;
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              allow_cheat_sheet = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables a version of the Thauminomicon in creative mode that grants you all the research when you first use it.";
              };
              allow_mirrors = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Setting this to false will disable arcane mirror research and crafting recipes.";
              };
              allow_warded_stone = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false, warded stone, doors and glass will just be cosmetic in nature and not have its hardened properties (everyone will be able to break it with equal ease).";
              };
              biome_taint_from_flux = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Can Taint be caused by flux effects.";
              };
              biome_taint_spread = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "The chance per block update (1 in n) of the Taint biome spreading. Setting it to 0 prevents the spread of Taint biomes.";
              };
              blue_magical_forest = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true to get the old blue magical forest back.";
              };
              color_blind = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Setting this to true will make certain colors higher contrast or darker to prevent them from being 'invisible' to color blind people.";
              };
              crooked = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Hate crooked labels, kittens, puppies and all things awesome? If yes, set this to false.";
              };
              display_aspects = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Item aspects are hidden by default and pressing shift reveals them. Changing this setting to 'true' will reverse this behaviour and always display aspects unless shift is pressed.";
              };
              glowing_taint = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Setting this to false will remove the glowing purple nodules from taint fibres. This might prevent crashes some people experience and improve performance.";
              };
              golem_chest_interact = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to true golems will attempt to play the chest opening animations and sounds whenever they interact with them.";
              };
              golem_delay = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "How many ticks a golem waits between checking for tasks. Setting it higher will save server ticks, but will make the golems slower to react.";
              };
              golem_ignore_delay = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "How many milliseconds a golem will ignore an item after it has failed to find a destination or use for it. Min value 1000";
              };
              golem_link_quality = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "The fx quality of the line connecting golems to marked blocks. Setting this below 4 deactives the effect entirely.";
              };
              hard_mode_nodes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Negative nodes like hungry, tainted or dark nodes will have additional, much nastier, effects.";
              };
              node_rarity = lib.mkOption {
                type = lib.types.int;
                default = 36;
                description = "How rare nodes are in the world. The number means there will be (on average) one node per N chunks.";
              };
              notification_delay = lib.mkOption {
                type = lib.types.int;
                default = 5000;
                description = "Determines how fast notifications scroll downwards.";
              };
              notification_max = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "The maximum amount of notifications that are displayed onscreen.";
              };
              portablehole_blacklist = lib.mkOption {
                type = lib.types.str;
                default = "iron_door";
                description = "This is a comma-delimited list of any block names the portable hole is not allowed to pass through.";
              };
              shaders = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This setting will disable certain thaumcraft shaders for those who experience FPS drops.";
              };
              special_node_rarity = lib.mkOption {
                type = lib.types.int;
                default = 18;
                description = "The chance of a node being special (pure, dark, unstable, etc.). The number means roughly 1 in N nodes will be special, so setting the number to 5 will mean 1 in 5 nodes may be special.";
              };
              thaumcraft_banker_id = lib.mkOption {
                type = lib.types.int;
                default = 191;
                description = "Thaumcraft banker villager id";
              };
              thaumcraft_villager_id = lib.mkOption {
                type = lib.types.int;
                default = 190;
                description = "Thaumcraft wizard villager id";
              };
              wand_dial_bottom = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to have the wand dial display in the bottom left instead of the top left.";
              };
              wuss_mode = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Setting this to true disables Warp and similar mechanics. You wuss.";
              };
            };
          };
        };
        monster_spawning = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              champion_mobs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Setting this to false will disable spawning champion mobs. Even when false they will still have a greatly reduced chance of spawning in certain dangerous places.";
              };
              spawn_angry_zombies = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              spawn_eldercreatures = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              spawn_fire_bats = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              spawn_pechs = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              spawn_taint_spores = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              spawn_taintacles = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              spawn_wisps = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        research = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              aspect_total_cap = lib.mkOption {
                type = lib.types.int;
                default = 500;
                description = "The total amount of RP you can have in your pool per aspect before the scanning soft cap kicks in.";
              };
              research_difficulty = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "0 = normal, -1 = easy (all research items are directly purchased with RP), 1 = Hard (all research items need to be solved via the research table)";
              };
            };
          };
        };
        runic_shielding = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              runic_cost = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "How much aer and terra centi-vis (0.01 vis) it costs to reacharge a single unit of shielding. Minimum of 0.";
              };
              runic_recharge_delay = lib.mkOption {
                type = lib.types.int;
                default = 80;
                description = "How many game ticks pass after a shield has been reduced to zero before it can start recharging again. Minimum of 0.";
              };
              runic_recharge_speed = lib.mkOption {
                type = lib.types.int;
                default = 2000;
                description = "How many milliseconds pass between runic shielding recharge ticks. Lower values equals faster recharge. Minimum of 500.";
              };
            };
          };
        };
        world_generation = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              generate_amber_ore = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              generate_aura_nodes = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              generate_cinnibar_ore = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              generate_infused_stone = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              generate_structures = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              generate_taint = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Can taint biomes generate at worldgen";
              };
              generate_trees = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        world_regeneration = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              amber_ore = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              aura_nodes = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              cinnibar_ore = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              infused_stone = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              regen_key = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
                description = "This key is used to keep track of which chunk have been generated/regenerated. Changing it will cause the regeneration code to run again, so only change it if you want it to happen. Useful to regen only one world feature at a time.";
              };
              structures = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              taint = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              trees = lib.mkOption {
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
