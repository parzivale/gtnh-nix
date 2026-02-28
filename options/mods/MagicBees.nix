{lib, ...}: {
  MagicBees = lib.mkOption {
    description = "MagicBees configuration (./config/MagicBees.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/MagicBees.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        botaniaplugin = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              beegoniaManaMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "Multiplier for the Beegonia's mana generation. Default: 1.0 (Affects duration, not throughput)";
              };
              hibeescusManaCostMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "Multiplier on Hibeescus mana cost, base 10,000. Default 1.0. Setting to 0 makes you a huge cheater. <3";
              };
              hibeescusTicksMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "Multiplier for Hibeescus operation tick time. Multiplied against 1.5 Minecraft days with some extra randomness. Default: 1.0. Setting to 0 makes you a huge cheater. <3";
              };
              hiveacynthManaMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "Multiplier for the Hiveacynth's mana consumption. Default: 1.0";
              };
              hiveacynthPrincessSpawnRate = lib.mkOption {
                type = lib.types.float;
                default = 0.09;
                description = "Rate at which the Hiveacynth will spawn a Princess instead of a Drone. Default: 0.09. Setting to 0 will disable.";
              };
              hiveacynthPristineRate = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
                description = "Rate at which the Hiveacynth will produce a Pristine Princess, when it produces a princess. Default: 0.15. Setting to 0 will disable, setting to 1 will make every Princess produced pristine..";
              };
              hiveacynthRainResistRate = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
                description = "Rate at which the Hiveacynth applies rain resist to spawned bees. Default: 0.1 Setting to 0 will disable.";
              };
            };
          };
        };
        client = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              disableMagnetSound = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "set to true to disable the magnet from making noise on item pickup";
              };
            };
          };
        };
        debug = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              logHiveSpawns = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable to see exact locations of MagicBees hive spawns.";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              areMagicPlanksFlammable = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to allow Greatwood & Silverwood planks to burn in a fire.";
              };
              aromaticLumpSwarmerRate = lib.mkOption {
                type = lib.types.int;
                default = 95;
                description = "Aromatic lump swarmer rate. Final value is X/1000. 0 will disable, values outside of [0,1000] will be clamped to range. Default: 95";
              };
              "backpack.forestry.addThaumcraftItems" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to disable.";
              };
              "backpack.thaumaturge.active" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to disable the Thaumaturge backpack";
              };
              "backpack.thaumaturge.additionalItems" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:paper;TaintedMagic:ItemMaterial:*;ThaumicTinkerer:kamiResource:*;Thaumcraft:ItemZombieBrain;Thaumcraft:ItemResource:*;Thaumcraft:blockCrystal:*;Thaumcraft:ItemShard:*;Thaumcraft:blockCosmeticSolid:*;Thaumcraft:blockCosmeticOpaque:*;Thaumcraft:ItemEssence:*;Thaumcraft:ItemInkwell:*;Thaumcraft:blockTube:*;Thaumcraft:blockMagicalLog:*;Thaumcraft:blockWoodenDevice:*;Thaumcraft:blockStoneDevice:*;Thaumcraft:blockMetalDevice:*;Thaumcraft:blockMirror:*;Thaumcraft:blockTable:*;Thaumcraft:ItemResearchNotes:*;Thaumcraft:ItemThaumometer;Thaumcraft:WandCasting:*;Thaumcraft:ItemThaumonomicon;Thaumcraft:ItemGoggles;Thaumcraft:ItemGolemPlacer:*;Thaumcraft:ItemGolemCore:*;Thaumcraft:ItemGolemUpgrade:*;Thaumcraft:ItemGolemDecoration:*;Thaumcraft:ItemLootBag:*;Thaumcraft:ItemEldritchObject:*;witchery:ingredient:*;witchery:garlic;witchery:witchsapling:*;witchery:witchlog:*;witchery:poppet:*;witchery:chalkritual;witchery:chalkotherwhere;witchery:chalkinfernal;witchery:chalkheart;ForbiddenMagic:NetherShard:*;ForbiddenMagic:GluttonyShard";
                description = "Format is the same as Forestry's: id:meta;id;id:meta (etc)";
              };
              capsuleStackSize = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "or the reduced capsule size in Forestry & Railcraft. Default: 64";
              };
              disableVersionNotification = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to stop Magic Bees from notifying you when new updates are available. (Does not supress critical updates)";
              };
              doSpecialHiveGen = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to false if you hate fun and do not want special hives generating in Magic biomes.";
              };
              drainerAmount = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "The amount that the Apimancer's Drainer generates on every round";
              };
              drainerCapacity = lib.mkOption {
                type = lib.types.int;
                default = 512;
                description = "The amount that the Apimancer's Drainer can hold of each aspect";
              };
              drainerTimeBetween = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "The time in ticks between Apimancer's Drainer essentia generation";
              };
              magnetMaximumLevel = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "Maximum level of the magnets.";
              };
              magnetRangeBase = lib.mkOption {
                type = lib.types.float;
                default = 3.0;
                description = "Base range (in blocks) of the Mysterious Magnet";
              };
              magnetRangeMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 0.75;
                description = "Range multiplier per level of the Mysterious Magnet. Total range = base range + level * multiplier";
              };
              moonDialShowText = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "set to true to show the current moon phase in mouse-over text.";
              };
              thaumCraftSaplingDroprate = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              thaumcraftNodeMaxSize = lib.mkOption {
                type = lib.types.int;
                default = 2147483000;
                description = "The maximum aspect amount Nexus bees can grow a node to";
              };
              thaumcraftSaplingDroprate = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
                description = "The chance for thaumcraft saplings using the thaumium grafter";
              };
              useImpregnatedStickInTools = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to make Thaumium Grafter & Scoop require impregnated sticks in the recipe.";
              };
            };
          };
        };
        modules = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              AppliedEnergistics2 = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ArsMagica = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Baubles = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BloodMagic = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Botania = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EquivalentExchange = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              ExtraBees = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              RedstoneArsenal = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Thaumcraft = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ThaumicHorizons = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ThermalExpansion = lib.mkOption {
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
