{lib, ...}: {
  Automagy = lib.mkOption {
    description = "Automagy configuration (./config/Automagy.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/Automagy.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              adv_node_jarring = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow Advanced Node Jarring";
              };
              allow_dimension_lure = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Setting this to false will disable Dimensional Lure research and crafting recipes";
              };
              amnesiac_drain_item = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "minecraft:experience_bottle=8,minecraft:glass_bottle" "Automagy:phialExtra,0=95,*" "TConstruct:oreBerries,5=13" ];
                description = "A list of any item names that the Amnesiac's Stone should convert into XP along with the XP value and (optionally) replacement items (e.g. empty bottles). Format: \"<String Mod ID>:<String Item ID>[,<Integer Metadata>]=<Integer XP>[,<String Mod ID>:<String Item ID>[,<Integer Metadata>]]\". Put each of these on a separate line. The item indicated before the equals sign will turn into the amount of XP indicated after it. If another item is indicated after the XP amount, then it will be dropped in the first's place. Alternatively, use a \"*\" for the second item to automatically use the first's container item.";
              };
              botania_blacklist_phial_xp = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Prevent Botania's Loonium from generating phials of enchanter's concentrate";
              };
              cow_milking_cooldown = lib.mkOption {
                type = lib.types.int;
                default = 2000;
                description = "Number of ticks that must pass after a thirsty tank milks a cow before it can be milked again.";
              };
              emberheart_spawnerdrop = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Make blaze spawners drop an ember heart";
              };
              emberheart_spawnerdrop_netheronly = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Only drop ember heart from spawners in the Nether";
              };
              focus_id_gratis = lib.mkOption {
                type = lib.types.int;
                default = 81;
              };
              focus_id_storage = lib.mkOption {
                type = lib.types.int;
                default = 83;
              };
              focus_id_transposing = lib.mkOption {
                type = lib.types.int;
                default = 82;
              };
              forestry_milk_used = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should Forestry's milk be created when the thirsty tank milks cows rather than Automagy's own (this is ignored if MFR milk exists and config is set to use it)";
              };
              forestry_override_aspect_milk = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should Automagy assign Aspects to Forestry's milk";
              };
              inventarium_container_blacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "Automagy:blockTally" ];
                description = "A list of any block names for containers that the Inventarium / Unseen Scribes should ignore.";
              };
              inventarium_other_bookshelves = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "Natura:Natura.bookshelf" "chisel:bookshelf" ];
                description = "A list of any block names that the Inventarium should treat as bookshelves that can increase its maximum slot count.";
              };
              list_creative_jar = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show the Infinity Jar in Creative Tab and NEI";
              };
              list_thinking_cap = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show the thinking cap in Creative Tab and NEI";
              };
              mfr_milk_used = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should MineFactory Reloaded's milk be created when the thirsty tank milks cows rather than Automagy's own";
              };
              mfr_mushroom_soup_used = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should MineFactory Reloaded's mushroom soup be created when the thirsty tank milks mooshrooms rather than Automagy's own";
              };
              mfr_override_aspect_milk = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should Automagy change the Aspects associated with MineFactory Reloaded's milk (arguably more balanced if we do, given what Automagy can do with it)";
              };
              mfr_override_aspect_mushroom_soup = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should Automagy change the Aspects associated with MineFactory Reloaded's mushroom soup";
              };
              redcrystal_emits_light = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should redcrystal emit light when it has a redstone signal";
              };
              slivers_from_infused_stone = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Number of slivers Entropic Refining yields from infused stone. Default 11. Set to 0 to disabled Entropic Refining research and recipes.";
              };
              thinking_cap_usable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow the thinking cap to be used to craft advanced golems";
              };
              thirstytank_drink_rain = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should thirsty tanks slowly fill with water if exposed to the sky while it is raining";
              };
              thirstytank_preserve_water_source = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should thirsty tanks preserve water source blocks next to them";
              };
              version_checking = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "On startup, check whether a newer version of the mod exists";
              };
              waila_brain_jar = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use Waila to add information about how much experience a brain in a jar is holding.";
              };
              waila_soul_stone = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use Waila to add information about how much experience a soul stone is holding.";
              };
              waterbottle_amount = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "How much water (in mB) a water bottle is considered to contain. 0 (default) means bottles can be filled from and emptied into Automagy tanks without changing the amount in a tank. -1 means empty and water bottles won't interact with Automagy tanks. -2 means bottles should use the fluid amount registered with Forge (normally 1000).";
              };
              worldgen_nether_spire_chance = lib.mkOption {
                type = lib.types.int;
                default = 140;
                description = "World gen: Chance that a Nether Spire is generated where possible. 0 disables. 1 is 100% of the time. Higher number means less likely. Default 140.";
              };
            };
          };
        };
        keys = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              focus_craft = lib.mkOption {
                type = lib.types.str;
                default = "NONE";
                description = "Wand Focus: Crafting - open GUI";
              };
            };
          };
        };
        loot = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              lesser_disjunction = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Lesser Ring of Ender Disjunction";
              };
              phial_xp = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Phial of Enchanter's Concentrate";
              };
              phial_xp_blacksmith = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Phial of Enchanter's Concentrate (village blacksmith chest)";
              };
            };
          };
        };
        nethermind = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              glowstone_cost = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "lux:10" "sensus:3" ];
                description = "Nethermind's essentia cost to generate glowstone.";
              };
              glowstone_speed = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              ignore_section = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "IMPORTANT: If true, this section's customizations will be ignored. (This is useful for those who want to use the default settings since the defaults may change with a newer version of Automagy. Otherwise, you'd need to delete this section each time such an update is applied.)";
              };
              lava_basic_chance = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "Percentage chance that a basic rune results in conjuring lava instead of netherrack.";
              };
              lava_cost = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "ignis:6" "terra:2" ];
                description = "Nethermind's essentia cost to generate lava.";
              };
              lava_speed = lib.mkOption {
                type = lib.types.int;
                default = 90;
              };
              netherrack_basic_cost = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "ignis:2" "terra:4" ];
                description = "Nethermind's essentia cost to generate netherrack without the Rock rune.";
              };
              netherrack_cost = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "ignis:1" "terra:2" ];
                description = "Nethermind's essentia cost to generate netherrack using the Rock rune.";
              };
              netherrack_speed = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              quartz_cost = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "vitreus:3" "terra:1" ];
                description = "Nethermind's essentia cost to generate quartz ore.";
              };
              quartz_speed = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              soulsand_cost = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "terra:1" "vinculum:1" "spiritus:1" ];
                description = "Nethermind's essentia cost to generate soul sand.";
              };
              soulsand_speed = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              spawn_bat_cost1 = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "bestia:1" "ignis:1" "perditio:1" ];
              };
              spawn_bat_cost2 = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "fames:10" "humanus:1" ];
              };
              spawn_bat_uses = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              spawn_blaze_cost1 = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "ignis:4" "praecantatio:2" ];
              };
              spawn_blaze_cost2 = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "fames:10" "victus:5" ];
              };
              spawn_blaze_uses = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              spawn_ghast_cost1 = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "exanimis:1" "spiritus:2" ];
              };
              spawn_ghast_cost2 = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "fames:6" "permutatio:1" "spiritus:4" "aqua:4" ];
              };
              spawn_ghast_uses = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              spawn_skeleton_cost1 = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "mortuus:1" "corpus:1" ];
              };
              spawn_skeleton_cost2 = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "fames:20" "telum:5" "sensus:5" ];
              };
              spawn_skeleton_uses = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              spawn_slime_cost1 = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "limus:1" "ignis:2" ];
              };
              spawn_slime_cost2 = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "fames:16" "limus:1" ];
              };
              spawn_slime_uses = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              spawn_wisp_cost1 = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "auram:1" "ignis:2" "aer:1" ];
              };
              spawn_wisp_cost2 = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "fames:8" "auram:3" ];
              };
              spawn_wisp_uses = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              spawn_zombiepigman_cost1 = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "corpus:2" "ignis:2" ];
                description = "Cost to spawn each zombie pigman, used by Nethermind. Also see spawn_zombiepigman_cost2.";
              };
              spawn_zombiepigman_cost2 = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "fames:15" "cognitio:9" "lucrum:3" ];
                description = "Used by Dimensional Lure to spawn multiple zombie pigmen, in addition to the cost specified in spawn_zombiepigman_cost1.";
              };
              spawn_zombiepigman_uses = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "The number of zombie pigman spawns that the essentia specified by spawn_zombiepigman_cost2 is good for.";
              };
              spawner_speed = lib.mkOption {
                type = lib.types.int;
                default = 360;
                description = "Time in ticks for Nethermind + Dimensional Lure to spawn creatures (before upgrades)";
              };
            };
          };
        };
      };
    };
  };
}
