{lib, ...}: {
  DraconicEvolution = lib.mkOption {
    description = "DraconicEvolution configuration (./config/DraconicEvolution.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/DraconicEvolution.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        "draconic reactor" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              EnableBigExplosion = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Setting this to false will reduce the reactor explosion to little more then a tnt blast";
              };
              EnergyOutputMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Use this to adjust the output of the reactor";
              };
              FuelUsageMultiplier = lib.mkOption {
                type = lib.types.int;
                default = 3035;
                description = "Use this to adjust how quickly the reactor uses fuel";
              };
              awakenedDraconiumFuelValue = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Use this to adjust the fuel value of awakened draconium nugget";
              };
              chaosShardOutputValue = lib.mkOption {
                type = lib.types.int;
                default = 36;
                description = "Use this to adjust how much fuel value one tiny chaos shard takes";
              };
              enableAutomation = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Sets whether the reactor is automatable or not";
              };
              linearReactorFuelUsage = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Sets whether the reactor should use linear (true) fuel usage formula or exponential (false)";
              };
              maxFuelStorage = lib.mkOption {
                type = lib.types.int;
                default = 524880;
                description = "Use this to adjust the maximum fuel storage of the reactor";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Bow Block Damage" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Dose Draconic bow explosion damage blocks";
              };
              "Can dragon break blocks" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to disable the DE dragons ability to break blocks (dose not effect vanilla dragon)";
              };
              "Chaos Island Separation" = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "This sets how far apart the chaos islands will spawn. The islands spawn in a grid pattern.";
              };
              "Disable Guardian Crystal Respawn" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "(Wuss mode) Setting this to true will disable the chaos guardians ability to respawn healing crystals. Under certain circumstances such as on a Spigot server where entity render distance is significantly lower this may be required.";
              };
              "Disable Item Lore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to disable all item lore";
              };
              "Disable Log" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If you are having issued with console spam that you cant fix setting this to true will disable all log output from Draconic Evolution (Not recommended)";
              };
              "Disable Ore Spawn (End)" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to prevent draconium ore from spawning in the end";
              };
              "Disable Ore Spawn (Nether)" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to prevent draconium ore from spawning in the nether";
              };
              "Disable Ore Spawn (Overworld)" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to prevent draconium ore from spawning in the overworld";
              };
              "Disabled Blocks & Items" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [];
                description = "add the unlocalized name of a block or item to this list to disable it [default: ]";
              };
              "Dragon egg spawn location" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [0 0 0];
                description = "Sets the exact location to spawn the dragon egg and disables the portal spawn (dose not effect vanilla dragon)";
              };
              "Enable Flight" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable flight given by draconic armor.";
              };
              "Enable HUD info" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable version checker" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ender Comet Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "Ender Comet has a 1 in {this number} chance to spawn in each chunk";
              };
              "Fast Summon Ritual" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true the resurrection ritual will be a lot faster";
              };
              "Generate Chaos Islands" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should Chaos Islands be generated";
              };
              "Generate Ender Comets" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should Ender comets be generated";
              };
              "Hud Display X pos" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Hud Display Y pos" = lib.mkOption {
                type = lib.types.int;
                default = 874;
              };
              InvertDPDSB = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Invert Dislocator Pedestal display name shift behavior";
              };
              "Item Dislocator Blacklist" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = ["appliedenergistics2:item.ItemCrystalSeed"];
                description = "A list of items of items that should be ignored by the item dislocator. Use the items registry name e.g. minecraft:apple you can also add a meta value like so minecraft:wool|4 [default: [appliedenergistics2:item.ItemCrystalSeed]]";
              };
              "Item Dislocator Disable Sound" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable item dislocator sound";
              };
              "Ore gen dimension blacklist" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [7 100];
                description = "Add the id's of dimensions you do not want draconium ore to spawn in";
              };
              "Ore gen dimension whitelist" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [1];
                description = "Add the id's of dimensions you do want draconium ore to spawn in (if empty, uses only the blacklist)";
              };
              "Pigmen Blood Rage" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Is Pigmen blood rage active";
              };
              "Player speed cap" = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
                description = "Limits the max speed of players. Recommend between 0.5 - 1.0 for servers";
              };
              "Rapidly despawn aoe mined items" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true items dropped by a tool in aoe mode will despawn after 5 seconds";
              };
              "Show Unlocalized Names" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If set to true the unlocalized name of every block and item will be displayed in its tool tip";
              };
              "Speed limit Dim black lack list" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [1];
                description = "A list of dimensions the speed limit will not effect (speed limit is not so really required in the end)";
              };
              "Speed limit effects ops" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Dose the speed limit effect ops";
              };
              "Teleporter Uses PerPearl" = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Charm of Dislocation uses per Ender pearl";
              };
              "Use old 2D tool textures" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true the 3D tool models will be replaced with standard 2D textures";
              };
              "Use old armor model" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true the armor will use the original vanilla 2D model instead of the new 3D models";
              };
              "Use the original 3D armor models" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true the original 3D armor models created by Skeletonpunk will be used instead of the current ones";
              };
              passiveSoulDropChance = lib.mkOption {
                type = lib.types.int;
                default = 800;
                description = "Passive (Animals) Mobs have a 1 in this number chance to drop a soul";
              };
              soulDropChance = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "Mobs have a 1 in this number chance to drop a soul";
              };
            };
          };
        };
        "gui stuff" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "HUD Settings" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [996 825 69 907 90 100 3 0 1 1 1 1];
                description = "Used to store the position of the armor ant tool HUD's. This should not be modified";
              };
            };
          };
        };
        "long range dislocator" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Admin Dislocator Detect Range" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Dislocator Max Range" = lib.mkOption {
                type = lib.types.int;
                default = 10000;
              };
              "Dislocator Min Range" = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
            };
          };
        };
        "magicid's" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Reaper Enchant id" = lib.mkOption {
                type = lib.types.int;
                default = 180;
              };
            };
          };
        };
        spawner = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Spawn List" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = ["ExampleMob1" "ExampleMob2" "ExampleMob3 (these examples can be deleted)"];
                description = "List of names that will be ether accepted or rejected by the spawner depending on the list type [default: [ExampleMob1], [ExampleMob2], [ExampleMob3 (these examples can be deleted)]]";
              };
              listType = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Sets weather the spawner list is a white list or a black list (true = white list false = black list)";
              };
            };
          };
        };
      };
    };
  };
}
