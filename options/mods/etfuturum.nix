{lib, ...}: {
  blocksitems = lib.mkOption {
    description = "blocksitems configuration (./config/etfuturum/blocksitems.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/etfuturum/blocksitems.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "entity items" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableArmorStand = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableNewBoats = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "New boats from 1.9+, including the new rowing sounds. All vanilla wood variants included. [default: true]";
              };
              newBoatEntityBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "It's a little hard to explain, a more detailed explanation and list of examples can be found here: https://gist.github.com/Roadhog360/0a9975d113217e65cc6b06c494454e4f";
              };
              newBoatEntityBlacklistAsWhitelist = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Treat the entity blacklist as a whitelist, ONLY entities matching that criteria will be allowed. [default: false]";
              };
              newBoatMaxLandSpeed = lib.mkOption {
                type = lib.types.str;
                default = "0.986";
                description = "The speed values are just block slipperiness values, and are averaged by the slippery blocks around the bottom of the boat. This option does nothing to old boats. [range: 0.1 ~ 1.0, default: 0.986]";
              };
              newBoatPassengerSeat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If disabled, only one person can sit in the new boat at a time. The new seat is actually an invisible entity that follows new boats. [default: true]";
              };
              newBoatSpeed = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "The speed multiplier for boats while in water. Use this if you want to make the boats faster or slower. 1 = no speed change [range: 0.1 ~ 2.0, default: 1.0]";
              };
              replaceOldBoats = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "THIS WILL NOT WORK PROPERLY WITH BETTER BOATS INSTALLED [default: true]";
              };
            };
          };
        };
        equipment = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              netheriteArmourDurabilityFactor = lib.mkOption {
                type = lib.types.int;
                default = 37;
                description = "Used by the game to generate the durability value for the armor set. The higher the better. [range: 1 ~ 2147483647, default: 37]";
              };
              netheriteAxeDurability = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Override Netherite Axe Durability, -1 to use netheriteToolDurability [range: -1 ~ 2147483647, default: -1]";
              };
              netheriteBootsDurability = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Override Netherite Boots Durability, -1 for no override [range: -1 ~ 2147483647, default: -1]";
              };
              netheriteBootsProtection = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Netherite Boots Protection [range: 1 ~ 2147483647, default: 3]";
              };
              netheriteChestplateDurability = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Override Netherite Chestplate Durability, -1 for no override [range: -1 ~ 2147483647, default: -1]";
              };
              netheriteChestplateProtection = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "Netherite Chestplate Protection [range: 1 ~ 2147483647, default: 8]";
              };
              netheriteDamageBase = lib.mkOption {
                type = lib.types.str;
                default = "4.0";
                description = "Netherite base damage, Diamond is 3.0 [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              netheriteEnchantability = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "[range: 1 ~ 2147483647, default: 15]";
              };
              netheriteHarvestLevel = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Netherite harvest level, Diamond is 3 [range: 0 ~ 2147483647, default: 4]";
              };
              netheriteHelmetDurability = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Override Netherite Helmet Durability, -1 to no override [range: -1 ~ 2147483647, default: -1]";
              };
              netheriteHelmetProtection = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Netherite Helmet Protection [range: 1 ~ 2147483647, default: 3]";
              };
              netheriteHoeDurability = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Override Netherite Hoe Durability, -1 to use netheriteToolDurability [range: -1 ~ 2147483647, default: -1]";
              };
              netheriteLeggingsDurability = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Override Netherite Leggings Durability, -1 for no override [range: -1 ~ 2147483647, default: -1]";
              };
              netheriteLeggingsProtection = lib.mkOption {
                type = lib.types.int;
                default = 6;
                description = "Netherite Leggings Protection [range: 1 ~ 2147483647, default: 6]";
              };
              netheritePickaxeDurability = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Override Netherite Pickaxe Durability, -1 to use netheriteToolDurability [range: -1 ~ 2147483647, default: -1]";
              };
              netheriteSpadeDurability = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Override Netherite Shovel Durability, -1 to use netheriteToolDurability [range: -1 ~ 2147483647, default: -1]";
              };
              netheriteSpeed = lib.mkOption {
                type = lib.types.str;
                default = "9.0";
                description = "Nethherite mining speed, Diamond is 8.0 [range: 0.1 ~ 3.4028235E38, default: 9.0]";
              };
              netheriteSwordDurability = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Override Netherite Sword Durability, -1 to use netheriteToolDurability [range: -1 ~ 2147483647, default: -1]";
              };
              netheriteToolDurability = lib.mkOption {
                type = lib.types.int;
                default = 2031;
                description = "[range: 1 ~ 2147483647, default: 2031]";
              };
            };
          };
        };
        "function blocks" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableBarrel = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableBlastFurnace = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Compatible with CraftTweaker. In the same way that you'd use furnace.addRecipe or furnace.remove, you can use \"mods.etfuturum.blastFurnace\" instead of \"furnace\". [default: true]";
              };
              enableCartographyTable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Currently DOES NOT HAVE ANY FUNCTIONALITY. Decoration ONLY! [default: true]";
              };
              enableComposter = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "By default bone meal is the only item in this loot table, with a weight of 10. You can learn more about CraftTweaker loot table modification here: https://www.mcdrama.net/archiveformal/MineTweaker3/wiki/tutorials/1710/loot_and_seeds.html [default: true]";
              };
              enableDyedBeds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Ability to craft differently colored beds out of wool. Mixed wool colors = red bed [default: true]";
              };
              enableFletchingTable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Currently DOES NOT HAVE ANY FUNCTIONALITY. Decoration ONLY! [default: true]";
              };
              enableInvertedSensor = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Inverted Daylight Sensor [default: true]";
              };
              enableIronTrapdoor = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              enableLavaCauldrons = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow lava buckets to fill cauldrons [default: true]";
              };
              enableLoom = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Currently DOES NOT HAVE ANY FUNCTIONALITY. Decoration ONLY! [default: true]";
              };
              enableNewAnvil = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables new anvil behavior, such as less expensive item renaming [default: true]";
              };
              enableNewBeacon = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Beacon beam can be colored using stained glass [default: true]";
              };
              enableNewBrewingStand = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "mods.etfuturum.brewingFuel.remove(<minecraft:blaze_powder>); //(Removes blaze powder as a brewing fuel) [default: true]";
              };
              enableNewDoors = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables variant doors for materials available in Minecraft after 1.7 [default: true]";
              };
              enableNewEnchantingTable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "mods.etfuturum.enchantingFuel.remove(<minecraft:dye:4>); //(Removes lapis lazuli as an enchanting fuel) [default: true]";
              };
              enableNewSigns = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables wood variant signs for materials available in Minecraft after 1.7 [default: true]";
              };
              enableNewTrapdoors = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables variant trapdoors for materials available in Minecraft after 1.7 [default: true]";
              };
              enableNewWoodRedstone = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables wood variant buttons and pressure plates for wood available in Minecraft after 1.7 [default: true]";
              };
              enableOldBaseDaylightSensor = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable the old Et Futurum daylight sensor block. Should be enabled if you still have the old Et Futurum copy of the non-inverted daylight detector that need to be converted. [default: false]";
              };
              enablePotionCauldron = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "A port of potion cauldrons from Bedrock Edition. Used to make tipped arrows and store potions. [default: true]";
              };
              enableShulkerBoxes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If Shulkers are disabled, a custom recipe will be required to obtain Shulker shells. [default: true]";
              };
              enableSlimeBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Just bouncy, does not pull blocks. [default: true]";
              };
              enableSmithingTable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "mods.etfuturum.smithingTable.addRecipeNoNBT(<etfuturum:sponge:1>, <minecraft:sponge>, <minecraft:water_bucket>); //Take a vanilla sponge and a water bucket, you will get an Et Futurum Requiem wet sponge. [default: true]";
              };
              enableSmoker = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Compatible with CraftTweaker. In the same way that you'd use furnace.addRecipe or furnace.remove, you can use \"mods.etfuturum.smoker\" instead of \"furnace\". [default: true]";
              };
              enableSponge = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableStonecutter = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Currently DOES NOT HAVE ANY FUNCTIONALITY. Decoration ONLY! [default: true]";
              };
              enableTarget = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables target block from 1.16 [default: true]";
              };
              enableVanillaDoors = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables variant doors for materials available natively in Minecraft 1.7 [default: true]";
              };
              enableVanillaSigns = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables variant signs for materials available natively in Minecraft 1.7 [default: true]";
              };
              enableVanillaTrapdoors = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables variant trapdoors for materials available natively in Minecraft 1.7 [default: true]";
              };
              enableVanillaWoodRedstone = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables wood variant buttons and pressure plates for wood available natively in Minecraft 1.7 [default: true]";
              };
            };
          };
        };
        "misc blocks" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableBanners = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableBarkLogs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables log blocks with bark on all sides [default: true]";
              };
              enableBarrier = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "A solid, indestructible and invisible block. Can be seen when holding it in Creative mode. [default: true]";
              };
              enableBlackstone = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This must be on for the basalt deltas biome to generate unless Netherlicious is installed. [default: true]";
              };
              enableChain = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableConcrete = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableCopperSubItems = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Copper sub-blocks and items. Disable copper but keep this on if you want the new copper items and blocks made of it, without the main ingot, ore or copper block itself. [default: true]";
              };
              enableExtraVanillaSlabs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Slabs for vanilla blocks: stone, mossy stone brick, mossy cobble, cut sandstone [default: true]";
              };
              enableExtraVanillaStairs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stairs for vanilla blocks: stone, mossy stone brick, mossy cobble [default: true]";
              };
              enableExtraVanillaWalls = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stairs for vanilla blocks: stone brick, mossy stone brick, sandstone, brick, nether brick [default: true]";
              };
              enableGlazedTerracotta = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableHoney = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables honey blocks, honeycomb blocks, honeycombs, and honey bottles. See entities.cfg for toggling bee nests, beehives, and bees. [default: true]";
              };
              enableLantern = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableLightBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Invisible light blocks. Only has a selection box when held, right click to change light level. Otherwise functionally identical to air and can be replaced by placing blocks into it. Invisible, but can be seen when holding it in Creative mode. [default: true]";
              };
              enableNewFences = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables variant fences for materials available in Minecraft after 1.7 [default: true]";
              };
              enableNewGates = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables variant gates for materials available in Minecraft after 1.7 [default: true]";
              };
              enableQuartzBricks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableRedNetherBricks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Note: Also enables cracked and chiseled nether bricks as they use this ID too [default: true]";
              };
              enableSmoothQuartz = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableSmoothSandStone = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              enableSmoothStone = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableStrippedLogs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables stripped log blocks [default: true]";
              };
              enableVanillaFences = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables variant fences for materials available natively in Minecraft 1.7 [default: true]";
              };
              enableVanillaGates = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enablesvariant gates for materials available natively in Minecraft 1.7 [default: true]";
              };
            };
          };
        };
        "misc items" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableBeetroot = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableIronNugget = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              enableLingeringPotions = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableMutton = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              enableNewDyes = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              enableOtherside = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Appears in stronghold corridor and dungeon chests. [default: true]";
              };
              enablePigstep = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Appears in Nether fortress chest loot. [default: true]";
              };
              enableRawOres = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, vanilla and Et Futurum copper ores will drop raw ore items. [default: true]";
              };
              enableSuspiciousStew = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableTippedArrows = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableTotemUndying = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
            };
          };
        };
        "natural blocks" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableAmethyst = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables tinted glass, amethyst blocks, budding amethyst and amethyst crystals. Also enables the item too. [default: true]";
              };
              enableBambooBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables bamboo wood and all of its wood subtypes, including the bamboo stalks themselves. [default: true]";
              };
              enableBasalt = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "This must be on for the basalt deltas biome to generate unless Netherlicious is installed. [default: true]";
              };
              enableBlueIce = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableBoneBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableCalcite = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableCherryBlocks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables cherry wood and all of its wood subtypes. [default: true]";
              };
              enableChorusBlocks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables chorus plants and purpur blocks [default: true]";
              };
              enableCoarseDirt = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableCopper = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Copper ore and copper blocks, variants, and waxed variants. (Slime balls are used if no mod introduces wax and if honey is disabled) [default: true]";
              };
              enableCornflower = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableCryingObsidian = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableDeepslate = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableDeepslateOres = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable deepslate ores for copper ore and vanilla ores when deepslate generates over them. [default: true]";
              };
              enableGrassPath = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableLilyOfTheValley = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableMagmaBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableMud = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables mud, packed mud and mud bricks, as well as the mud brick stairs, slabs and walls. [default: true]";
              };
              enableNetherGold = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              enableNetherite = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableNetherwartBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enablePrismarine = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              enableRedSandstone = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableSoulLighting = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Soul torches and soul lanterns. [default: true]";
              };
              enableSoulSoil = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Not required for the Soul Sand Valley to generate. [default: true]";
              };
              enableStones = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable Granite/Andesite/Diorite [default: true]";
              };
              enableSweetBerryBushes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableTuff = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableWitherRose = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              masterNetherToggle = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This also turns off Nether wart blocks even though they are older, because Netherlicious also has those. [default: true]";
              };
            };
          };
        };
      };
    };
  };
  enchantspotions = lib.mkOption {
    description = "enchantspotions configuration (./config/etfuturum/enchantspotions.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/etfuturum/enchantspotions.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        enchantments = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              frostWalker = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              frostWalkerID = lib.mkOption {
                type = lib.types.int;
                default = 226;
                description = "[range: 0 ~ 32767, default: 200]";
              };
              mending = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              mendingID = lib.mkOption {
                type = lib.types.int;
                default = 227;
                description = "[range: 0 ~ 32767, default: 201]";
              };
              swiftSneak = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              swiftSneakID = lib.mkOption {
                type = lib.types.int;
                default = 228;
                description = "[range: 0 ~ 32767, default: 202]";
              };
            };
          };
        };
        potions = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              levitationID = lib.mkOption {
                type = lib.types.int;
                default = 134;
                description = "Since this is essential for Shulkers, this is tied to Shulkers being enabled instead of having its own option. [range: 0 ~ 32767, default: 27]";
              };
            };
          };
        };
      };
    };
  };
  entities = lib.mkOption {
    description = "entities configuration (./config/etfuturum/entities.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/etfuturum/entities.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        hostile = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableEndermite = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Rarely spawns when the player lands from Ender Pearl throws [default: true]";
              };
              enableHusks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Desert zombie variant [default: true]";
              };
              enableShulker = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Shell-lurking mobs from the End. [default: true]";
              };
              enableStrays = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Tundra skeleton variant [default: true]";
              };
              enableZombieVillager = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
            };
          };
        };
        misc = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableBabyGrowthBoost = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableDragonRespawn = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Crude implementation of respawning the dragon using four End crystals. [default: true]";
              };
              enableNetherEndermen = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow endermen to rarely spawn in the Nether [default: true]";
              };
              enableShearableSnowGolems = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableSquidInk = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Squid now produce a cloud of floating black ink particles when attacked. [default: true]";
              };
              enableVillagerTurnsIntoWitch = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Villagers turn into Witches when struck by lightning [default: true]";
              };
            };
          };
        };
        neutral = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableBees = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
            };
          };
        };
        passive = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableBrownMooshroom = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Brown mooshroom variant, the red mooshrooms turn into then when they are hit by lightning. [default: true]";
              };
              enableFoxes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableRabbits = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
            };
          };
        };
      };
    };
  };
  experiments = lib.mkOption {
    description = "experiments configuration (./config/etfuturum/experiments.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/etfuturum/experiments.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "EXPERIMENTAL FEATURES -- TREAD CAREFULLY" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
        "experimental features -- tread carefully" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableBubbleColumns = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Places in the world but currently does nothing. [default: false]";
              };
              enableCrimsonBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "The nether wart block is still a separate toggle, both this and the wart toggle must be turned off to disable the nether wart block, because crimson trees need the wart blocks. [default: false]";
              };
              enableDripstone = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Partially functional. Does not naturally generate. [default: false]";
              };
              enableLightningRod = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Completely nonfunctional. [default: false]";
              };
              enableMangroveBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables mangrove wood and all of its wood subtypes, and the roots (+ muddy versions). [default: false]";
              };
              enableMossAzalea = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables moss and azalea. Currently azalea saplings do not grow. [default: false]";
              };
              enableSculk = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables sculk-related blocks. [default: false]";
              };
              enableWarpedBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables the warped nylium, wood, and plants. This must be on for the warped forest biome to generate unless Netherlicious is installed. Requires newNether to be enabled without Netherlicious. [default: false]";
              };
              endDimensionProvider = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables outer end island generation from 1.9. Gateways are implemented but currently don't generate, but they work. The new dragon fight is currently not implemented and it does not spawn any gateways. [default: false]";
              };
              netherDimensionProvider = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "This is so you can have vanilla-style biomes in Netherlicious while Requiem is installed. Turning this off or setting each individual biome ID to -1 will prevent my version of Nether biomes from generating. Don't forget to turn off my Nether blocks in blocksitems.cfg since my biomes will generate with Netherlicious blocks if available. [not implemented yet] [default: false]";
              };
            };
          };
        };
      };
    };
  };
  functions = lib.mkOption {
    description = "functions configuration (./config/etfuturum/functions.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/etfuturum/functions.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        changes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableAttackedAtYawFix = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds a packet to send the attackedAtYaw field value to the client, which allows the screen to tilt based on where damage came from, and either left or right for direction-less sources like drowning or burning, instead of tilting to the left no matter what. [default: true]";
              };
              enableBushSticks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Dead Bushes drop sticks [default: true]";
              };
              enableDoorRecipeBuffs = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Backports recipe buffs to doors (from 1 to 3) [default: true]";
              };
              enableExtraBurnableBlocks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fences, gates and dead bushes burn [default: true]";
              };
              enableFloatingTrapDoors = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableHayBaleFalls = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, fall damage on a hay bale will be reduced [default: true]";
              };
              enableHoeMining = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows blocks like hay bales, leaves etc to mine faster with hoes [default: true]";
              };
              enableShearableCobwebs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableSilkMushroom = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Mushroom blocks can be silk-touched [default: true]";
              };
              enableSkullDrop = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Skulls drop from charged creeper kills [default: true]";
              };
              enableStoneBrickRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes mossy, cracked and chiseled stone brick craftable [default: true]";
              };
              enableUpdatedFood = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Use updated food values [default: true]";
              };
              enableUpdatedHarvestLevels = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Packed Ice, ladders and melons have preferred tools [default: true]";
              };
              fireworkRecipeFixes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes fireworks not being able to have an extra duration without a star, and they'll output 3 instead of 1. Note: This currently does NOT update NEI, it'll still show the old recipe outputs. [default: true]";
              };
              hayBaleReducePercent = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "If enableHayBaleFalls is true, what percent should we keep for the fall damage? [range: 0 ~ 99, default: 20]";
              };
              mobSpawnerEgging = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Click a mob spawner with a vanilla or EFR egg, and it'll change the mob inside. Doesn't support modded eggs. [default: true]";
              };
            };
          };
        };
        client = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableBowRendering = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Bows render pulling animation in inventory [default: true]";
              };
              enableExtraF3HTooltips = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables NBT tag count and item namespace label on F3 + H debug item labels [default: true]";
              };
              enableFancySkulls = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Skulls render 3D in inventory [default: true]";
              };
              enableFillCommand = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable the /fill command. [default: true]";
              };
              enableGamemodeSwitcher = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable the new F3+F4 gamemode switcher from 1.16+ [default: true]";
              };
              enableLangReplacements = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Replaces some lang keys with a more modern version, such as calling some old wood items \"oak\", calling beds \"Red Bed\", and so on. Full list of replaced keys can be seen in the mod jar at resources/resourcepacks/vanilla_overrides/assets/minecraft/lang [default: true]";
              };
              enableNewF3Behavior = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Make F3 only show/hide info on release, and not if another key is pressed [default: true]";
              };
              enableNewTextures = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Replace tall grass and sponge textures with modern version [default: true]";
              };
              enablePlayerSkinOverlay = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Allows use of 1.8 skin format, and Alex skins. Also includes some fixes from SkinPort. (Per SkinPort author's permission) Disable if skin is displaying oddly. Not compatible with OptiFine, use FastCraft instead. [default: false]";
              };
              enableSubtitles = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable subtitles [default: false]";
              };
              enableTransparentAmour = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow non-opaque armour [default: true]";
              };
              inventoryBedModels = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Render beds with a 3D inventory model instead of a 2D sprite. [default: true]";
              };
              shulkerBoxTooltipLines = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "The maximum amount of items a Shulker box can display on its tooltip. When the box has more stacks inside than this number, the rest of the stacks are displayed as \"And x more...\". Set to 0 to disable Shulker Box tooltips. [range: 0 ~ 127, default: 5]";
              };
              subtitleBlacklist = lib.mkOption {
                type = lib.types.str;
                default = "^(dig\\.*)";
                description = "Regex of subtitles to blacklist [default: ^(dig\\.*)]";
              };
            };
          };
        };
        settings = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              elytraDataWatcherFlag = lib.mkOption {
                type = lib.types.int;
                default = 7;
                description = "Do not change this value if you don't need to, or do not know what you're doing. [range: 0 ~ 31, default: 7]";
              };
              enableAutoAddBlastFurnace = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Seeks all available smeltable ores, metals, etc (using OreDict tags like \"ore\", \"cluster\", \"ingot\", etc) from the furnace and adds them to the Blast Furnace, if it's off it will only smelt things specified from CraftTweaker. [default: true]";
              };
              enableAutoAddComposter = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Seeks compostable items like plants and leaves, and automatically adds them to the composter. If this is off it will only compost things specified from CraftTweaker and nothing by default. [default: true]";
              };
              enableAutoAddSmoker = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Seeks all available edible foods from the furnace and adds them to the smoker, if it's off it will only smelt things specified from CraftTweaker. [default: true]";
              };
              enableNetheriteFlammable = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to disable the fireproof item entity Netherite/ancient debris etc uses [default: false]";
              };
              enablePrismarineRecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Recipe for prismarine if you want it without the temples, or want it craftable alongside temples. [default: true]";
              };
              enableRecipeForTotem = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Recipe for totems since there's no other way to get them currently. [default: false]";
              };
              extraDropRawOres = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "OreDictionary values for ore blocks that should drop extra items (2-3) instead of the usual one, before fortune. [default: [oreCopper], [oreTin]]";
              };
              registerRawItemAsOre = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Turn this off if you have an ore dictionary converter mod or experience other issues. [default: true]";
              };
              shulkerBans = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "adventurebackpack:adventureBackpack" "arsmagica2:essenceBag" "arsmagica2:runeBag" "avaritiaddons:CompressedChest" "Backpack:backpack" "betterstorage:backpack" "betterstorage:cardboardBox" "betterstorage:thaumcraftBackpack" "BiblioCraft:item.BigBook" "Botania:baubleBox" "Botania:flowerBag" "cardboardboxes:cbCardboardBox" "dendrology:fullDrawers1" "dendrology:fullDrawers2" "dendrology:fullDrawers4" "dendrology:halfDrawers2" "dendrology:halfDrawers4" "DQMIIINext:ItemMahounoTutu11" "DQMIIINext:ItemOokinaFukuro" "DQMIIINext:ItemOokinaFukuroB" "DQMIIINext:ItemOokinaFukuroG" "DQMIIINext:ItemOokinaFukuroR" "DQMIIINext:ItemOokinaFukuroY" "DraconicEvolution:draconiumChest" "ExtraSimple:bedrockium" "ExtraSimple:bedrockiumBlock" "ExtraSimple:goldenBag" "ExtraSimple:lasso" "ExtraUtilities:bedrockiumIngot" "ExtraUtilities:block_bedrockium" "ExtraUtilities:golden_bag" "ExtraUtilities:golden_lasso" "Forestry:adventurerBag" "Forestry:adventurerBagT2" "Forestry:apiaristBag" "Forestry:builderBag" "Forestry:builderBagT2" "Forestry:diggerBag" "Forestry:diggerBagT2" "Forestry:foresterBag" "Forestry:foresterBagT2" "Forestry:hunterBag" "Forestry:hunterBagT2" "Forestry:lepidopteristBag" "Forestry:minerBag" "Forestry:minerBagT2" "HardcoreEnderExpansion:charm_pouch" "ImmersiveEngineering:toolbox" "ironbackpacks:basicBackpack" "ironbackpacks:diamondBackpack" "ironbackpacks:goldBackpack" "ironbackpacks:ironBackpack" "JABBA:mover" "JABBA:moverDiamond" "MagicBees:backpack.thaumaturgeT1" "MagicBees:backpack.thaumaturgeT2" "minecraft:writable_book" "minecraft:written_book" "MineFactoryReloaded:plastic.bag" "MineFactoryReloaded:safarinet.reusable" "MineFactoryReloaded:safarinet.singleuse" "OpenBlocks:devnull" "ProjectE:item.pe_alchemical_bag" "ProjRed|Exploration:projectred.exploration.backpack" "sgs_treasure:dread_pirate_chest" "sgs_treasure:iron_chest" "sgs_treasure:locked_wooden_chest" "sgs_treasure:obsidian_chest" "sgs_treasure:pirate_chest" "sgs_treasure:wither_chest" "sgs_treasure:wooden_chest" "StorageDrawers:compDrawers" "StorageDrawers:fullCustom1" "StorageDrawers:fullCustom2" "StorageDrawers:fullCustom4" "StorageDrawers:fullDrawers1" "StorageDrawers:fullDrawers2" "StorageDrawers:fullDrawers4" "StorageDrawers:halfCustom2" "StorageDrawers:halfCustom4" "StorageDrawers:halfDrawers2" "StorageDrawers:halfDrawers4" "StorageDrawersBop:fullDrawers1" "StorageDrawersBop:fullDrawers1" "StorageDrawersBop:fullDrawers2" "StorageDrawersBop:fullDrawers2" "StorageDrawersBop:fullDrawers4" "StorageDrawersBop:fullDrawers4" "StorageDrawersBop:halfDrawers2" "StorageDrawersBop:halfDrawers2" "StorageDrawersBop:halfDrawers4" "StorageDrawersBop:halfDrawers4" "StorageDrawersForestry:fullDrawers1A" "StorageDrawersForestry:fullDrawers2A" "StorageDrawersForestry:fullDrawers4A" "StorageDrawersForestry:halfDrawers2A" "StorageDrawersForestry:halfDrawers4A" "StorageDrawersNatura:fullDrawers1" "StorageDrawersNatura:fullDrawers2" "StorageDrawersNatura:fullDrawers4" "StorageDrawersNatura:halfDrawers2" "StorageDrawersNatura:halfDrawers4" "Thaumcraft:FocusPouch" "ThaumicTinkerer:ichorPouch" "thebetweenlands:lurkerSkinPouch" "warpbook:warpbook" "witchery:brewbag" "WitchingGadgets:item.WG_Bag" ];
                description = "Things (namespaced:id) that should not go inside a Shulker Box. Used to ensure recursive storage, book banning and data overloads with certain items can be stopped. A default list is provided, but it might not cover everything so be sure to check with the mods you have. Be sure to check the default list for this frequently, it will be updated frequently. [default: [adventurebackpack:adventureBackpack], [arsmagica2:essenceBag], [arsmagica2:runeBag], [betterstorage:backpack], [betterstorage:cardboardBox], [betterstorage:thaumcraftBackpack], [BiblioCraft:item.BigBook], [Botania:baubleBox], [Botania:flowerBag], [cardboardboxes:cbCardboardBox], [dendrology:fullDrawers1], [dendrology:fullDrawers2], [dendrology:fullDrawers4], [dendrology:halfDrawers2], [dendrology:halfDrawers4], [DQMIIINext:ItemMahounoTutu11], [DQMIIINext:ItemOokinaFukuro], [DQMIIINext:ItemOokinaFukuroB], [DQMIIINext:ItemOokinaFukuroG], [DQMIIINext:ItemOokinaFukuroR], [DQMIIINext:ItemOokinaFukuroY], [ExtraSimple:bedrockium], [ExtraSimple:bedrockiumBlock], [ExtraSimple:goldenBag], [ExtraSimple:lasso], [ExtraUtilities:bedrockiumIngot], [ExtraUtilities:block_bedrockium], [ExtraUtilities:golden_bag], [ExtraUtilities:golden_lasso], [Forestry:adventurerBag], [Forestry:adventurerBagT2], [Forestry:apiaristBag], [Forestry:builderBag], [Forestry:builderBagT2], [Forestry:diggerBag], [Forestry:diggerBagT2], [Forestry:foresterBag], [Forestry:foresterBagT2], [Forestry:hunterBag], [Forestry:hunterBagT2], [Forestry:lepidopteristBag], [Forestry:minerBag], [Forestry:minerBagT2], [HardcoreEnderExpansion:charm_pouch], [ImmersiveEngineering:toolbox], [ironbackpacks:basicBackpack], [ironbackpacks:diamondBackpack], [ironbackpacks:goldBackpack], [ironbackpacks:ironBackpack], [JABBA:mover], [JABBA:moverDiamond], [MagicBees:backpack.thaumaturgeT1], [MagicBees:backpack.thaumaturgeT2], [minecraft:writable_book], [minecraft:written_book], [MineFactoryReloaded:plastic.bag], [MineFactoryReloaded:safarinet.reusable], [MineFactoryReloaded:safarinet.singleuse], [OpenBlocks:devnull], [ProjectE:item.pe_alchemical_bag], [ProjRed|Exploration:projectred.exploration.backpack], [sgs_treasure:dread_pirate_chest], [sgs_treasure:iron_chest], [sgs_treasure:locked_wooden_chest], [sgs_treasure:obsidian_chest], [sgs_treasure:pirate_chest], [sgs_treasure:wither_chest], [sgs_treasure:wooden_chest], [StorageDrawers:compDrawers], [StorageDrawers:fullCustom1], [StorageDrawers:fullCustom2], [StorageDrawers:fullCustom4], [StorageDrawers:fullDrawers1], [StorageDrawers:fullDrawers2], [StorageDrawers:fullDrawers4], [StorageDrawers:halfCustom2], [StorageDrawers:halfCustom4], [StorageDrawers:halfDrawers2], [StorageDrawers:halfDrawers4], [StorageDrawersBop:fullDrawers1], [StorageDrawersBop:fullDrawers1], [StorageDrawersBop:fullDrawers2], [StorageDrawersBop:fullDrawers2], [StorageDrawersBop:fullDrawers4], [StorageDrawersBop:fullDrawers4], [StorageDrawersBop:halfDrawers2], [StorageDrawersBop:halfDrawers2], [StorageDrawersBop:halfDrawers4], [StorageDrawersBop:halfDrawers4], [StorageDrawersForestry:fullDrawers1A], [StorageDrawersForestry:fullDrawers2A], [StorageDrawersForestry:fullDrawers4A], [StorageDrawersForestry:halfDrawers2A], [StorageDrawersForestry:halfDrawers4A], [StorageDrawersNatura:fullDrawers1], [StorageDrawersNatura:fullDrawers2], [StorageDrawersNatura:fullDrawers4], [StorageDrawersNatura:halfDrawers2], [StorageDrawersNatura:halfDrawers4], [Thaumcraft:FocusPouch], [ThaumicTinkerer:ichorPouch], [thebetweenlands:lurkerSkinPouch], [warpbook:warpbook], [witchery:brewbag], [WitchingGadgets:item.WG_Bag]]";
              };
              totemHealPercent = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Percentage of max health for totem to set you at if you die with it. (5% is 0.05, 20 * 0.05 = 1, 1 health is one half-heart) [range: 5 ~ 100, default: 5]";
              };
              useStoneHardnessForDeepslate = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether deepslate blocks should have the same hardness as their stone counterparts. This allows the asthetics of deepslate without the added hardness. [default: false]";
              };
            };
          };
        };
      };
    };
  };
  mixins = lib.mkOption {
    description = "mixins configuration (./config/etfuturum/mixins.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/etfuturum/mixins.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "backported features" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              adjustedAttenuation = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Client Classes: net.minecraft.client.audio.SoundManager [default: true]";
              };
              avoidDroppingItemsWhenClosing = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Modified Classes: net.minecraft.entity.player.EntityPlayerMP [default: false]";
              };
              betterPistons = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Classes: net.minecraft.block.BlockPistonBase [default: true]";
              };
              blockHopperInteraction = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Classes: net.minecraft.tileentity.TileEntityHopper [default: true]";
              };
              bouncyBeds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Classes: net.minecraft.block.BlockBed [default: true]";
              };
              boundedBlockBreakingParticles = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Mofified Client Classes: net.minecraft.client.particle.EffectRenderer [default: true]";
              };
              colorGrassBlockItemSides = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Client Classes: net.minecraft.client.renderer.RenderBlocks [default: true]";
              };
              creativeFlightSpeedModifier = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "When greater than 1, boosts creative flight speed when sprinting, like in newer versions [range: 1.0 ~ 5.0, default: 2.0]";
              };
              dustUnderFallingBlocks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Classes: net.minecraft.block.BlockFalling [default: true]";
              };
              enableDoWeatherCycle = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add the doWeatherCycle game rule from 1.11+ [default: true]";
              };
              enableElytra = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Mod Classes: thaumcraft.common.lib.events.EventHandlerEntity [default: true]";
              };
              enableNewElytraTakeoffLogic = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When enabled, the 1.15+ elytra takeoff logic is used, when disabled, the 1.9-1.14 elytra takeoff logic is used. [default: true]";
              };
              enableObservers = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Classes: net.minecraft.world.World net.minecraft.world.WorldServer [default: true]";
              };
              enablePlayersSleepingPecentageGamerule = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "You nappa, you get slappa [default: true]";
              };
              enableRandomTickSpeed = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add the randomTickSpeed game rule from 1.8+ [default: true]";
              };
              enableSpectatorMode = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Client Classes: net.minecraft.client.renderer.EntityRenderer net.minecraft.entity.player.EntityPlayer net.minecraft.client.renderer.WorldRenderer [default: true]";
              };
              endPortalFix = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified classes: net.minecraft.block.BlockEndPortal [default: true]";
              };
              fenceWallConnectFix = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified classes: net.minecraft.block.BlockFence net.minecraft.block.BlockWall [default: true]";
              };
              fireproofItems = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Some items such as Netherite will not burn in fire and will float to the surface of lava. [default: true]";
              };
              floorCeilingButtons = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Classes: net.minecraft.block.BlockButton [default: true]";
              };
              furnaceCrackle = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Client Classes: net.minecraft.block.BlockFurnace [default: true]";
              };
              hoeTilling = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Classes: net.minecraft.item.ItemHoe [default: true]";
              };
              ladderTrapdoors = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Classes: net.minecraft.block.BlockLadder net.minecraft.block.BlockTrapdoor [default: true]";
              };
              newBeaconSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Classes: net.minecraft.tileentity.TileEntityBeacon [default: true]";
              };
              newEnchantingSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Classes: net.minecraft.inventory.ContainerEnchantment [default: true]";
              };
              newEnderEyeSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Classes: net.minecraft.entity.item.EntityEnderEye net.minecraft.item.ItemEnderEye [default: true]";
              };
              newFishingRodSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Classes: net.minecraft.item.ItemFishingRod [default: true]";
              };
              newHurtSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Classes: net.minecraft.entity.player.EntityPlayer net.minecraft.client.entity.EntityClientPlayerMP [default: true]";
              };
              newMobSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "New sounds for the witch, snow golem, squid and wither skeleton. [default: true]";
              };
              postTreeGenEvent = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Classes: net.minecraft.world.gen.feature.WorldGenAbstractTree [default: true]";
              };
              soulFire = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Client Classes: net.minecraft.client.renderer.RenderBlocks [default: true]";
              };
              thinPanes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Client Classes: net.minecraft.client.renderer.RenderBlocks [default: true]";
              };
            };
          };
        };
        fixes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              arrowFallingFix = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified classes: net.minecraft.entity.EntityArrow [default: true]";
              };
              collidedThrowableFix = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified classes: net.minecraft.entity.projectile.EntityThrowable [default: true]";
              };
              flowerPotFixes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Client Classes: net.minecraft.client.renderer.RenderBlock [default: true]";
              };
              hideSingleLevelEnchants = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modified Classes: net.minecraft.enchantment.Enchantment [default: true]";
              };
              stepHeightFix = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Modified classes: net.minecraft.entity.Entity [default: true]";
              };
            };
          };
        };
      };
    };
  };
  modcompat = lib.mkOption {
    description = "modcompat configuration (./config/etfuturum/modcompat.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/etfuturum/modcompat.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        misc = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              barrelIronChest = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If Iron Chests is installed, allow Iron Barrels to be crafted having all the same tiers as Iron Chests except for crystal. This option does nothing if Iron Chests is not installed. [default: true]";
              };
              disableBaseBountifulStonesOnly = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Useful if you have mods like Chisel or Botania which feature these same stones but not the stairs and other variants. [default: false]";
              };
              disableCopperOreAndIngotOnly = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Useful if you prefer another mod's copper, but want to use the oxidizing copper building blocks. [default: false]";
              };
              elytraBaublesExpandedCompat = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Adds compat for Baubles Expanded. Does nothing for standard baubles, this REQUIRES Baubles Expanded! It uses the new \"wings\" slot added by the expanded version. https://modrinth.com/mod/baubles-expandedWhen enabled, this allows the player to equip an elytra with a chestplate, by placing the elytra in a \"wings\" slot instead of the chestplate slot. Note that the player can only equip one elytra at a time.0 = No compat, do not allow the elytra to be placed in a wings slot.1 = Elytra will be placeable in a wings slot. Will enable the slot, if it isn't there.2 = The elytra can ONLY go in the wings slots, not the chestplate slot. [range: 0 ~ 2, default: 1]";
              };
              moddedDeepslateOres = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Deepslate ores for modded ores. Adds a set of \"general\" deepslate ores for common metals like \"oreAluminium\", \"oreTin\", etc, as well as explicit support for numerous mods. [default: true]";
              };
              moddedDeepslateOresBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "List of modded deepslate ores to disable. Add a ModID or ore dictionary tag. For example adding \"oreTin\" disables deepslate tin, and adding \"SimpleOres\" would disable deepslate adamantium ore. CaSe-SeNsItIvE!Each entry is separated by a new line. This only disables deepslate ores added from Et Futurum's end and will not affect deepslate ores from other mods. [default: ]";
              };
              moddedRawOres = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Raw ores for modded metals. Adds a set of \"general\" raw ores for common metals like \"oreAluminium\", \"oreTin\", etc. [default: true]";
              };
              moddedRawOresBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "List of modded raw ores to disable. Add a ModID or ore dictionary tag. For example adding \"oreTin\" disables modded raw tin, and adding \"SimpleOres\" would disable raw adamantium ore. CaSe-SeNsItIvE!Each entry is separated by a new line. This only disables raw ores added from Et Futurum's end and will not affect raw ores from other mods. [default: ]";
              };
              shulkerBoxesIronChest = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If Iron Chests is installed, allow Iron Shulker boxes to be crafted having all the same tiers as Iron Chests. This option does nothing if Iron Chests is not installed. [default: true]";
              };
            };
          };
        };
        rple = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              soulFireColor = lib.mkOption {
                type = lib.types.int;
                default = 1178;
                description = "Does not have any effect on the color of soul lanterns or soul torches. Check the RPLE colors config for those. [range: 0 ~ 4095, default: 1178]";
              };
            };
          };
        };
      };
    };
  };
  sounds = lib.mkOption {
    description = "sounds configuration (./config/etfuturum/sounds.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/etfuturum/sounds.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        ambient = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              caveAmbience = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add new cave ambience, adding more eerie cave sounds that occasionally play underground or in dark areas. [default: true]";
              };
              netherAmbience = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Play new ambience in the Nether. [default: true]";
              };
              rainSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Replace rain sounds with new, calm ones introduced in 1.11+ [default: true]";
              };
            };
          };
        };
        "blocks and items" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              chestOpenClose = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "New sounds for closing wooden chests, and new sounds for opening and closing ender chests. Works with Ender Storage. [default: true]";
              };
              doorOpenClose = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "New sounds for opening and closing doors, only affects doors with the wood or metal material type. [default: true]";
              };
              endPortalFillSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Sounds for filling an end portal with eyes of ender, plays a sound to the whole server when fully lit. [default: true]";
              };
              fixSilentPlacing = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add placing sounds for blocks that don't play one for some reason such as doors or restone dust. [default: true]";
              };
              fluidInteract = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Play a sound when filling or emptying a bucket/bottle. Plays sounds for filling/emptying cauldrons too but works on vanilla cauldrons only. [default: true]";
              };
              furnaceCrackling = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds furnace crackling to lit furnace blocks. [default: true]";
              };
              newBlockSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Many blocks after 1.14 introduce a new step sound, if this is turned off most backported blocks will use the most suitable step sound present in vanilla 1.7.10. [default: true]";
              };
              noteBlockNotes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "The new instruments from 1.12 and 1.14 for note blocks. [default: true]";
              };
              pressurePlateButton = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Lower-pitched clicking sounds for buttons and pressure plates. Stone buttons are unaffected. [default: true]";
              };
              seedPlanting = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Planting seeds or nether wart onto farmland/soulsand. [default: true]";
              };
            };
          };
        };
        entities = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              heavyWaterSplashing = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Play a more intense splash when the player lands in water at high speeds. [default: true]";
              };
              horseEatCowMilk = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Sounds for horses eating food and cows being milked. [default: true]";
              };
              thornsSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "New sounds for being hurt by the Thorns enchantment. [default: true]";
              };
            };
          };
        };
        misc = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              bookPageTurn = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Changes the click in the book GUI to have a page turn sound instead of the menu click. [default: true]";
              };
            };
          };
        };
        players = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              armorEquip = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "New sounds for equipping armor. [default: true]";
              };
              armorEquipCustomRules = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "leather:thermal_padding" "leather:wool" "chain:cultist" "gold:alloy" "gold:angmallen" "gold:astral_silver" "gold:carmot" "gold:copper" "gold:efrine" "gold:electrum" "gold:hepatizon" "gold:midasium" "gold:orichalcum" "gold:oureclase" "gold:platinum" "gold:silver" "iron:amordrine" "iron:brass" "iron:bronze" "iron:celenegil" "iron:ceruclase" "iron:desh" "iron:endium" "iron:inolashite" "iron:invar" "iron:kalendrite" "iron:lead" "iron:nickel" "iron:nickle" "iron:prometheum" "iron:solar" "iron:steel" "iron:thaumium" "iron:tin" "iron:titanium" "iron:vyroxeres" "diamond:adamantine" "diamond:amethyst" "diamond:atlarus" "diamond:desichalkos" "diamond:eximite" "diamond:mithril" "diamond:mythril" "diamond:void" "netherite:haderoth" "netherite:heavyblaze" "netherite:ignatius" "netherite:sanguinite" "netherite:tartarite" "netherite:fortress" "netherite:vulcanite" "turtle_helmet:wood" "elytra:hazmat" ];
                description = "Available sounds are: 'leather, chain, gold, iron, diamond, netherite, elytra, turtle_helmet, generic, none'. If a modded armor is not on the list it will use generic equip sounds automatically unless it's given the \"none\" type. Non-armor gear will not play a sound unless specified to do so.";
              };
              bonemealing = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "New sounds for using bone meal. [default: true]";
              };
              combatSoundStrongThreshold = lib.mkOption {
                type = lib.types.str;
                default = "4.0";
                description = "Damage threshold for attacks to play the \"strong\" hit sound. 1 = half heart, 2 = full heart. 4 (default) = 2 hearts [range: 0.0 ~ 3.4028235E38, default: 4.0]";
              };
              combatSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "New sounds for player attacking. [default: true]";
              };
              leashSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "New sounds for placing, interacting with, and destroying item frames or paintings. [default: true]";
              };
              paintingItemFramePlacing = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "New sounds for placing, interacting with, and destroying item frames or paintings. [default: true]";
              };
            };
          };
        };
      };
    };
  };
  tweaks = lib.mkOption {
    description = "tweaks configuration (./config/etfuturum/tweaks.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/etfuturum/tweaks.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "abandoned ideas" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableOldGravel = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableOldRoses = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
            };
          };
        };
        "bedrock parity" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              dyableShulkers = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Clicking a Shulker to dye them. As an added bonus, you can also click them with a water bucket (water is not consumed) or pour water on them to remove the dye. [default: true]";
              };
            };
          };
        };
        "custom tweaks" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              creativeFlightVerticalModifier = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "When greater than 1, boosts vertical(up/down) creative flight speed when sprinting. [range: 1.0 ~ 5.0, default: 1.0]";
              };
              deepslateReplacesCobblestone = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If you want cobblestone to be replaced with cobbled deepslate during world generation. [default: false]";
              };
              shulkersSpawnAnywhere = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Shulkers spawned in this way will despawn naturally, unless seated, given armor through a dispenser, or name tagged. Right now Shulkers are otherwise inacessible. [default: false]";
              };
              spawnAnywhereShulkerColors = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If spawn anywhere is enabled, spawn Shulkers matching the color of modded biome blocks. Currently supports Enderlicious and Hardcore Ender Expansion terrain blocks. [default: true]";
              };
              squidsBlindPlayers = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Squids will blind players when they take damage. [default: false]";
              };
              stonecutterSawHurts = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If you want stonecutters to deal damage to players standing on them. [default: false]";
              };
            };
          };
        };
      };
    };
  };
  world = lib.mkOption {
    description = "world configuration (./config/etfuturum/world.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/etfuturum/world.cfg";
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
              basaltDeltasID = lib.mkOption {
                type = lib.types.int;
                default = 240;
                description = "Set to -1 to disable the generation of Basalt Deltas. To use an ID above 255, EndlessIDs is required. [range: -1 ~ 65536, default: 203]";
              };
              basaltDeltasWeight = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "How likely the Basalt Deltas biome should generate compared to other Nether biomes. [range: 1 ~ 127, default: 10]";
              };
              crimsonForestID = lib.mkOption {
                type = lib.types.int;
                default = 241;
                description = "Set to -1 to disable the generation of Crimson Forests. To use an ID above 255, EndlessIDs is required. [range: -1 ~ 65536, default: 200]";
              };
              crimsonForestWeight = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "How likely the Crimson Forest biome should generate compared to other Nether biomes. [range: 1 ~ 127, default: 10]";
              };
              netherWastesWeight = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "How likely the Nether Wastes biome should generate compared to other Nether biomes. [range: 1 ~ 127, default: 30]";
              };
              soulSandValleyID = lib.mkOption {
                type = lib.types.int;
                default = 242;
                description = "Set to -1 to disable the generation of Soul Sand Valleys. To use an ID above 255, EndlessIDs is required. [range: -1 ~ 65536, default: 202]";
              };
              soulSandValleyWeight = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "How likely the Soul Sand Valley biome should generate compared to other Nether biomes. [range: 1 ~ 127, default: 10]";
              };
              warpedForestID = lib.mkOption {
                type = lib.types.int;
                default = 243;
                description = "Set to -1 to disable the generation of Warped Forests. To use an ID above 255, EndlessIDs is required. [range: -1 ~ 65536, default: 201]";
              };
              warpedForestWeight = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "How likely the Warped Forest biome should generate compared to other Nether biomes. [range: 1 ~ 127, default: 10]";
              };
            };
          };
        };
        client = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableDmgIndicator = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Heart Damage Indicator [default: true]";
              };
            };
          };
        };
        generation = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              amethystDimensionBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 0 ];
                description = "What dimensions should we ban amethyst geodes from generating in?";
              };
              amethystDimensionBlacklistAsWhitelist = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Treat the amethyst dimension blacklist as a whitelist instead, so geodes will ONLY generate in those dimensions, instead of excluding those dimensions from generation. [default: false]";
              };
              amethystMaxY = lib.mkOption {
                type = lib.types.int;
                default = 46;
                description = "Max Y level amethyst geodes should attempt to generate at [range: 6 ~ 245, default: 46]";
              };
              amethystMiddleBlockID = lib.mkOption {
                type = lib.types.str;
                default = "etfuturum:calcite";
                description = "If the chosen block does not exist then amethyst geodes will not generate. [default: etfuturum:calcite]";
              };
              amethystOuterBlockID = lib.mkOption {
                type = lib.types.str;
                default = "etfuturum:tuff";
                description = "If the chosen block does not exist then amethyst geodes will not generate. [default: etfuturum:smooth_basalt]";
              };
              amethystRarity = lib.mkOption {
                type = lib.types.int;
                default = 53;
                description = "How rare should amethyst geodes be? 1/x chance per chunk, 1 means a geode attempts to appear every chunk [range: 1 ~ 127, default: 53]";
              };
              bambooWorldgen = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether bamboo should naturally spawn in the overworld. Turning this off allows you to use bamboo based blocks without bamboo world gen for mod compatability. [default: true]";
              };
              buddingAmethystMode = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "2 = Budding amethyst does not need silk touch, just a pickaxe. [range: 0 ~ 2, default: 0]";
              };
              cherryTreeRarity = lib.mkOption {
                type = lib.types.int;
                default = 72;
                description = "How rare should cherry trees be? 1/x chance per chunk, 1 means a tree attempts to appear every chunk. 0 = no cherry trees. They will spawn in mountain-type biomes. [range: 0 ~ 127, default: 72]";
              };
              copperClusterSize = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "Max vein size for copper ore blocks in a cluster [range: 0 ~ 64, default: 8]";
              };
              debrisMax = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "The max vein size for the second, typically bigger debris veins, which generate from Y 8 to 22 [range: 0 ~ 64, default: 3]";
              };
              deepslateClusterSize = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "If deepslateGenerationMode is set to 1, this value is used to determine how big the clusters are. Otherwise this value is unused. [range: 0 ~ 128, default: 64]";
              };
              deepslateGenerationMode = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "If 0, deepslate replaces all stone below the specified value, with a shattering effect near the top similar to bedrock. If 1, it generates in clusters using the deepslate cluster settings. -1 disables Et Futurum deepslate generation entirely. [range: -1 ~ 1, default: 0]";
              };
              deepslateLayerDimensionBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 0 ];
                description = "The dimensions the deepslate layer (deepslate generation mode 0) should not spawn in. Does nothing if other deepslate generation modes are used.";
              };
              deepslateLayerDimensionBlacklistAsWhitelist = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Treat the deepslate layer dimension blacklist as a whitelist instead, so it will ONLY generate in those dimensions, instead of excluding those dimensions from generation. [default: false]";
              };
              deepslateMaxY = lib.mkOption {
                type = lib.types.int;
                default = 22;
                description = "How high up deepslate and tuff goes. If deepslateGenerationMode is 0, all stone up to this y level (with a scattering effect a few blocks before then) are replaced with deepslate. If it's 1, the patches can generate to that Y level. [range: 0 ~ 255, default: 22]";
              };
              deepslateReplacesDirt = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether or not Deepslate will overwrite dirt (Only works when deepslate generation mode is set to 0) [default: true]";
              };
              deepslateReplacesStones = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether or not Deepslate will overwrite granite, diorite, andesite (Only works when deepslate generation mode is set to 0) [default: true]";
              };
              enableAirDebris = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Can ancient debris generate next to air? [default: false]";
              };
              enableAmethystGeodes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableCoarseDirtReplacement = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Replaces coarse dirt in biomes it (dirt:1) generates in such as shattered savannas or mesa plateaus. [default: true]";
              };
              enableExtraMesaGold = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Generate 20 more veins of gold ore from Y 32 to Y 80 in any Mesa biome. [default: true]";
              };
              enableFossils = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              enableMesaMineshaft = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Generates extra mineshafts in mesa biomes up to y80. If fences are enabled, dark oak wood is used. [default: true]";
              };
              enableOceanMonuments = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Note: Ocean monuments currently do not have guardians [default: true]";
              };
              fossilBlockID = lib.mkOption {
                type = lib.types.str;
                default = "etfuturum:bone";
                description = "If the chosen block does not exist then fossils will not generate. If Netherlicious is installed, its bone block will be used if this is set to \"etfutrum:bone\" and Et Futurum Requiem bone blocks are disabled. [default: etfuturum:bone]";
              };
              fossilDimensionBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ ];
                description = "The dimension IDs of the dimensions the fossil structures should not spawn in. Fossils will also not spawn in any dimension that is not an instance of WorldProviderSurface";
              };
              fossilDimensionBlacklistAsWhitelist = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Treat the fossil dimension blacklist as a whitelist instead, so fossils will ONLY generate in those dimensions, instead of excluding those dimensions from generation. [default: false]";
              };
              maxMagmaPerCluster = lib.mkOption {
                type = lib.types.int;
                default = 33;
                description = "Max vein size for magma blocks in a cluster [range: 0 ~ 64, default: 33]";
              };
              maxNetherGoldPerCluster = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Max vein size for nether gold ore blocks in a cluster [range: 0 ~ 64, default: 10]";
              };
              maxStonesPerCluster = lib.mkOption {
                type = lib.types.int;
                default = 32;
                description = "Max vein size for Granite/Andesite/Diorite blocks in a cluster [range: 0 ~ 64, default: 32]";
              };
              replaceAllStoneWithDeepslateDimensionWhitelist = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ ];
                description = "The dimensions the deepslate layer (deepslate generation mode 0) should replace ALL stone in, rather than adhering to the deepslateMaxY limit. Does nothing if other deepslate generation modes are used. Useful if you have a mod that adds more \"layers\" to the overworld, for example.";
              };
              smallDebrisMax = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The max vein size for the first, typically smaller debris veins which generate from Y 8 to 119 [range: 0 ~ 64, default: 2]";
              };
              tuffClusterSize = lib.mkOption {
                type = lib.types.int;
                default = 32;
                description = "Max vein size for tuff blocks in a cluster [range: 0 ~ 64, default: 32]";
              };
            };
          };
        };
        miscellaneous = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              oldHuskSpawning = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "OptiFine breaks the sky-exposure behavior so this option will be forced on when OptiFine is detected. [default: false]";
              };
              oldStraySpawning = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "OptiFine breaks the sky-exposure behavior so this option will be forced on when OptiFine is detected. [default: false]";
              };
              tileReplacementMode = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "1 = Convert Et Futurum replacement tile entities back to default ones. Useful if you want to turn those off. [range: -1 ~ 1, default: 0]";
              };
            };
          };
        };
      };
    };
  };
}
