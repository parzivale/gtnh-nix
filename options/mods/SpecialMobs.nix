{lib, ...}: {
  SpecialMobs = lib.mkOption {
    description = "SpecialMobs configuration (./config/SpecialMobs.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/SpecialMobs.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        _enchants = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              pain_bow = lib.mkOption {
                type = lib.types.int;
                default = 160;
              };
              pain_damage = lib.mkOption {
                type = lib.types.str;
                default = "1.34";
                description = "The amount of direct damage done by each level of the Pain enchant";
              };
              pain_sword = lib.mkOption {
                type = lib.types.int;
                default = 161;
              };
              plague_bow = lib.mkOption {
                type = lib.types.int;
                default = 162;
              };
              plague_sword = lib.mkOption {
                type = lib.types.int;
                default = 163;
              };
              poison_bow = lib.mkOption {
                type = lib.types.int;
                default = 164;
              };
              poison_lvl = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The level of poison inflicted by Poison enchant (used by poison skeletons) (min 1).";
              };
              poison_stacks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, poison inflicted by poison enchantment stacks";
              };
              poison_sword = lib.mkOption {
                type = lib.types.int;
                default = 165;
              };
            };
          };
        };
        _extra_spawning = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              end_ender_creeper = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              nether_fire_creeper = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              overworld_ghast_mount = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        _general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              chat_enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable snark chat from mobs";
              };
              chat_range = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Sets the chat range for snarky/super messages";
              };
              dimension_blacklist = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Comma-separated list of each dimension to prevent this mod from replacing mobs in. Default is none.";
              };
              random_scaling = lib.mkOption {
                type = lib.types.str;
                default = "0.3";
                description = "The maximum magnitude for random size scaling (scaling * 50% = max difference %). Setting this to 0 disables random size scaling. Default is +/-15%";
              };
              spawn_eggs = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, the game will attempt to make a spawn egg for each special mob. Be warned, this will eat up 106 global entity ids. Default is false.";
              };
              trolling = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        _mob_stats = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              baby_skeleton_chance = lib.mkOption {
                type = lib.types.str;
                default = "0.05";
                description = "(0 <= x <= 1) Chance that a skeleton will spawn as a baby. Default is 5%.";
              };
              blaze_snowball_hits = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "How many snowballs it takes to kill a blaze(does not account for cooldown or regen)";
              };
              bow_chance_pigzombie = lib.mkOption {
                type = lib.types.str;
                default = "0.25";
                description = "(0 <= x <= 1) Chance that a zombie pigman will spawn with a bow, if possible. Default is 25%.";
              };
              bow_chance_skeleton = lib.mkOption {
                type = lib.types.str;
                default = "0.95";
                description = "(0 <= x <= 1) Chance that a skeleton will spawn with a bow, if possible. Default is 95%.";
              };
              bow_chance_wither = lib.mkOption {
                type = lib.types.str;
                default = "0.05";
                description = "(0 <= x <= 1) Chance that a wither skeleton will spawn with a bow, if possible. Default is 5%.";
              };
              bow_chance_zombie = lib.mkOption {
                type = lib.types.str;
                default = "0.05";
                description = "(0 <= x <= 1) Chance that a zombie will spawn with a bow, if possible. Default is 5%.";
              };
              conflagration_snowball_hits = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "How many snowballs it takes to kill a conflagration(does not account for cooldown or regen)";
              };
              creeper_charge_chance = lib.mkOption {
                type = lib.types.str;
                default = "0.01";
                description = "(0 <= x <= 1) Chance that any creeper spawned during a thunderstorm will be charged. Default is 1%.";
              };
              enderman_griefing = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "(True/false) If true, endermen will pick up blocks and place them around randomly, as in vanilla. Default is true.";
              };
              hostile_cavespiders = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "(0 <= x <= 1) Chance that a cave spider will spawn aggressive in daylight. Default is 100%.";
              };
              hostile_pigzombies = lib.mkOption {
                type = lib.types.str;
                default = "0.05";
                description = "(0 <= x <= 1) Chance that a zombie pigman will spawn already mad. Default is 5%.";
              };
              hostile_silverfish = lib.mkOption {
                type = lib.types.str;
                default = "0.2";
                description = "(0 <= x <= 1) Chance that a silverfish will spawn already calling for reinforcements. Default is 20%.";
              };
              hostile_spiders = lib.mkOption {
                type = lib.types.str;
                default = "0.1";
                description = "(0 <= x <= 1) Chance that a spider will spawn aggressive in daylight. Default is 10%.";
              };
              spit_chance_cavespider = lib.mkOption {
                type = lib.types.str;
                default = "0.1";
                description = "(0 <= x <= 1) Chance that a cave spider will spawn with a spitting attack. Default is 10%.";
              };
              spit_chance_spider = lib.mkOption {
                type = lib.types.str;
                default = "0.05";
                description = "(0 <= x <= 1) Chance that a spider will spawn with a spitting attack. Default is 5%.";
              };
              tiny_slime_damage = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, tiny special slimes (including vanilla replacements) will be able to deal damage to players. Default is true.";
              };
              villager_infection = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "(0 <= x <= 1) Chance that a villager will be infected when killed by a zombie. Default is 100%.";
              };
              xray_ghosts = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "(True/false) If false, ghost spiders and faint ghasts will require line of sight to aggro, unlike their normal counterparts. Default is false.";
              };
            };
          };
        };
        blaze_rates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              _allow_vanilla = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If this false, vanilla blazes will be replaced with similar Special Mobs versions if not \"special\".";
              };
              _special_blazes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable all special blazes.";
              };
              _vanilla = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              cinder = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              conflagration = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              ember = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              hellfire = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              inferno = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              jolt = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              smolder = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              wildfire = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        cavespider_rates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              _allow_vanilla = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If this false, vanilla cavespiders will be replaced with similar Special Mobs versions if not \"special\".";
              };
              _special_cavespiders = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable all special cavespiders.";
              };
              _vanilla = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              baby = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              flying = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              mother = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              tough = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              web = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              witch = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        creeper_rates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              _allow_vanilla = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If this false, vanilla creepers will be replaced with similar Special Mobs versions if not \"special\".";
              };
              _special_creepers = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable all special creepers.";
              };
              _vanilla = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              armor = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              dark = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              death = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              dirt = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              doom = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              drowning = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              ender = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              fire = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              gravel = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              gravity = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              jumping = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              lightning = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              mini = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              splitting = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        enderman_rates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              _allow_vanilla = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If this false, vanilla endermen will be replaced with similar Special Mobs versions if not \"special\".";
              };
              _special_endermen = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable all special endermen.";
              };
              _vanilla = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              blinding = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              cursed = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              icy = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              lightning = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              mini = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              mirage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              thief = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
            };
          };
        };
        ghast_rates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              _allow_vanilla = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If this false, vanilla ghasts will be replaced with similar Special Mobs versions if not \"special\".";
              };
              _special_ghasts = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable all special ghasts.";
              };
              _vanilla = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              baby = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              faint = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              fighter = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              king = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              mini = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              queen = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              unholy = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        lavamonster_general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              lavamonster_animated_texture = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, lava monsters will have animated textures.";
              };
              lavamonster_armor = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "The amount of armor lava monsters have.";
              };
              lavamonster_attack_cooldown = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "Ticks a monster must wait after attacking before it can start winding up again.";
              };
              lavamonster_attack_shots = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Number of fireballs shot with each attack.";
              };
              lavamonster_attack_spacing = lib.mkOption {
                type = lib.types.int;
                default = 6;
                description = "Ticks between each fireball shot in an attack.";
              };
              lavamonster_attack_windup = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "Ticks it takes before a monster can start an attack.";
              };
              lavamonster_basic_loot = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Lava monsters will only drop basic loot: coal and fire charges.";
              };
              lavamonster_fires = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Lava monsters on land cause fires. Enabling this makes it hard to get loot.";
              };
              lavamonster_heal_max = lib.mkOption {
                type = lib.types.int;
                default = 12;
                description = "Maximum half-hearts to heal when standing in lava. Useful to keep infernals reasonable";
              };
              lavamonster_heal_percent = lib.mkOption {
                type = lib.types.str;
                default = "0.25";
                description = "Percent to heal when standing in lava";
              };
              lavamonster_heal_time = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "Average ticks between heal attempts when the lava monster is standing in lava.";
              };
              lavamonster_health = lib.mkOption {
                type = lib.types.str;
                default = "24.0";
                description = "Lava monsters' maximum health.";
              };
            };
          };
        };
        lavamonster_spawning = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              lavamonster_Nether_spawn = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, lava monsters will spawn in the Nether.";
              };
              lavamonster_depth_hazard = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, lava monsters will not spawn above layer 16.";
              };
              lavamonster_flowing_lava = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, lava monsters do not require a source block to spawn.";
              };
              lavamonster_shallow_lava = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, lava monsters will be able to spawn in lava one block deep.";
              };
              lavamonster_spawn_chance = lib.mkOption {
                type = lib.types.str;
                default = "0.5";
                description = "The chance for a lava monster spawn attempt to be tried in a chunk. Might not find lava anyways.";
              };
              lavamonster_spawn_frequency = lib.mkOption {
                type = lib.types.int;
                default = 79;
                description = "The number of ticks between each lava monster spawn attempt.";
              };
              lavamonster_spawn_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "The maximum number of lava monsters in the `area` in range of a player. Some could be further away.";
              };
              lavamonster_spawn_range = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "The radius of the `area` in chunks to spawn around the player. The area monsters can actually spawn is 1 less.";
              };
            };
          };
        };
        pigzombie_rates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              _allow_vanilla = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If this false, vanilla pigzombies will be replaced with similar Special Mobs versions if not \"special\".";
              };
              _special_pigzombies = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable all special pigzombies.";
              };
              _vanilla = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              brutish = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              fishing = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              giant = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              hungry = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              plague = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              vampire = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        silverfish_rates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              _allow_vanilla = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If this false, vanilla silverfishs will be replaced with similar Special Mobs versions if not \"special\".";
              };
              _special_silverfishs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable all special silverfishs.";
              };
              _vanilla = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              blinding = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              fishing = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              flying = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              poison = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              tough = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        skeleton_rates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              _allow_vanilla = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If this false, vanilla skeletons will be replaced with similar Special Mobs versions if not \"special\".";
              };
              _special_skeletons = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable all special skeletons.";
              };
              _vanilla = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              brutish = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              fire = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              gatling = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              giant = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              ninja = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              poison = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              sniper = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              spitfire = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              thief = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
            };
          };
        };
        slime_rates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              _allow_vanilla = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If this false, vanilla slimes will be replaced with similar Special Mobs versions if not \"special\".";
              };
              _special_slimes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable all special slimes.";
              };
              _vanilla = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              blackberry = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              blueberry = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              caramel = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              grape = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              lemon = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              strawberry = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              watermelon = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        spider_rates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              _allow_vanilla = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If this false, vanilla spiders will be replaced with similar Special Mobs versions if not \"special\".";
              };
              _special_spiders = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable all special spiders.";
              };
              _vanilla = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              baby = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              desert = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              flying = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              ghost = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              giant = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              hungry = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              mother = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              pale = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              poison = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              small = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              tough = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              web = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              witch = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        witch_rates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              _allow_vanilla = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If this false, vanilla witches will be replaced with similar Special Mobs versions if not \"special\".";
              };
              _special_witches = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable all special witches.";
              };
              _vanilla = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              domination = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              rage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              shadows = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              undead = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              wilds = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              wind = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
            };
          };
        };
        zombie_rates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              _allow_vanilla = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If this false, vanilla zombies will be replaced with similar Special Mobs versions if not \"special\".";
              };
              _special_zombies = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable all special zombies.";
              };
              _vanilla = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              brutish = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              fire = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              fishing = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              giant = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              hungry = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              plague = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
      };
    };
  };
}
