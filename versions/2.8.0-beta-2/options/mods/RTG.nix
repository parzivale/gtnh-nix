{lib, ...}: {
  rtg = lib.mkOption {
    description = "rtg configuration (./config/RTG/rtg.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/RTG/rtg.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        bedrock = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Bedrock block ID" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:bedrock";
                description = "The block to use for the bottom of the Overworld. [default: minecraft:bedrock]";
              };
              "Bedrock block meta value" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "The meta value of the bedrock block. [range: 0 ~ 15, default: 0]";
              };
              "Number of flat bedrock layers" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "0 = Normal bedrock (rough pattern); 1-5 = Number of flat bedrock layers to generate [range: 0 ~ 5, default: 0]";
              };
            };
          };
        };
        biomes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable RTG Biome Decorations" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If TRUE, uses the individual biome settings in the biome config files. If FALSE, disables all RTG decorations and uses vanilla decorations instead. [default: true]";
              };
              "Enable RTG Biome Surfaces" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If TRUE, uses the individual biome settings in the biome config files. If FALSE, disables all RTG surfaces and uses vanilla surfaces instead. [default: true]";
              };
              "Patch Biome ID" = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "If RTG tries to generate an unsupported biome or a biome that has an ID conflict, it will generate this biome instead. If set to -1, RTG will crash instead of generating the patch biome. You might want to do this if you're making a mod pack and want to make sure all biomes are generating correctly. Default = Vanilla Plains [range: -1 ~ 255, default: 1]";
              };
            };
          };
        };
        boulders = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "1/x chance that Cobblestone Boulders will generate if given the opportunity to do so during world gen" = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "1 = Always generate if possible; 2 = 50% chance; 4 = 25% chance [range: 1 ~ 100, default: 1]";
              };
              "Enable Cobblestone Boulders" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "UBC Boulders" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to TRUE to allow UBC to override cobblestone boulders. This setting doesn't have any effect if UBC is not installed. [default: true]";
              };
            };
          };
        };
        caves = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Cave Density" = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "This setting controls the size of caves. HIGHER values = BIGGER caves & MORE lag. (14 = vanilla cave density) [range: 1 ~ 40, default: 8]";
              };
              "Cave Frequency" = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "This setting controls the number of caves that generate. LOWER values = MORE caves & MORE lag. (6 = vanilla cave frequency) [range: 1 ~ 40, default: 16]";
              };
              "Enable Cave Modifications" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Must be set to TRUE for the other cave settings to have any effect. If FALSE, RTG won't interfere with cave generation at all. [default: true]";
              };
              "Enable Caves" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
            };
          };
        };
        debugging = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Crash on Structure Exceptions" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Instead of crashing when it experiences 'java.util.ConcurrentModificationException' (or any other exception) during structure generation, RTG will stop trying to generate that structure and continue generating the world. You should only set this to TRUE if you have been instructed to do so by an RTG developer, or if you know what you're doing. [default: false]";
              };
              "Enable Debugging" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "WARNING: This should only be enabled if you know what you're doing. [default: false]";
              };
            };
          };
        };
        dunes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Height of Dunes" = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "This setting controls the height of both sand dunes and snow dunes. Higher values = taller dunes. [range: 1 ~ 12, default: 4]";
              };
            };
          };
        };
        dungeons = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Dungeon Frequency" = lib.mkOption {
                type = lib.types.int;
                default = 12;
                description = "This setting controls the number of dungeons that generate. HIGHER values = MORE dungeons & MORE lag. (8 = vanilla dungeon frequency) [range: 1 ~ 200, default: 8]";
              };
              "Generate Dungeons" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
            };
          };
        };
        "flowing liquids" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Flowing Lava Chance" = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "1/x chance that a lava stream will generate on the side of a hill or mountain. 0 = Never generate; 1 = Always generate if possible; 2 = 50% chance; 4 = 25% chance [range: 0 ~ 2147483647, default: 200]";
              };
              "Flowing Water Chance" = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "1/x chance that a water stream will generate on the side of a hill or mountain. 0 = Never generate; 1 = Always generate if possible; 2 = 50% chance; 4 = 25% chance [range: 0 ~ 2147483647, default: 200]";
              };
            };
          };
        };
        gui = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable World Type Notification Screen" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
            };
          };
        };
        "lakes (surface)" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "1/x chance that Lava Surface Lakes will generate if given the opportunity to do so during world gen" = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "1 = Always generate if possible; 2 = 50% chance; 4 = 25% chance [range: 1 ~ 100, default: 10]";
              };
              "1/x chance that Water Surface Lakes will generate if given the opportunity to do so during world gen" = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "1 = Always generate if possible; 2 = 50% chance; 4 = 25% chance [range: 1 ~ 100, default: 10]";
              };
              "Enable Lava Surface Lakes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "Enable Water Surface Lakes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
            };
          };
        };
        "lakes (underground)" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "1/x chance that Lava Underground Lakes will generate if given the opportunity to do so during world gen" = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "1 = Always generate if possible; 2 = 50% chance; 4 = 25% chance [range: 1 ~ 100, default: 10]";
              };
              "1/x chance that Water Underground Lakes will generate if given the opportunity to do so during world gen" = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "1 = Always generate if possible; 2 = 50% chance; 4 = 25% chance [range: 1 ~ 100, default: 10]";
              };
              "Enable Lava Underground Lakes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "Enable Water Underground Lakes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
            };
          };
        };
        mineshafts = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Generate Mineshafts" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
            };
          };
        };
        "ore gen" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Generate Coal Ore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              "Generate Diamond Ore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              "Generate Emerald Ore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              "Generate Gold Ore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              "Generate Iron Ore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              "Generate Lapis Lazuli Ore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              "Generate Redstone Ore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
            };
          };
        };
        plateaus = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Mesa Bryce Plateau Block Metas" = lib.mkOption {
                type = lib.types.str;
                default = "-1,-1,0,1,0,0,0,14,0,8,0,1,8,0,-1,0,14,0,0,14,0,0,8";
                description = "Comma-separated list of meta values for the plateau gradient blocks used in the Mesa Bryce biome. -1 = Plateau block; 0-15 = Plateau gradient block 0 = White; 1 = Orange; 2 = Magenta; 3 = Light Blue; 4 = Yellow; 5 = Lime; 6 = Pink; 7 = Gray 8 = Light Gray; 9 = Cyan; 10 = Purple; 11 = Blue; 12 = Brown; 13 = Green; 14 = Red; 15 = Black [default: -1,-1,0,1,0,0,0,14,0,8,0,1,8,0,-1,0,14,0,0,14,0,0,8]";
              };
              "Mesa Plateau Block Metas" = lib.mkOption {
                type = lib.types.str;
                default = "-1,-1,-1,1,1,1,0,-1,-1,6,1,1,8,0,-1,-1,14,-1,-1,6,1,1,4";
                description = "Comma-separated list of meta values for the plateau gradient blocks used in the Mesa biome variants (doesn't include Mesa Bryce). -1 = Plateau block; 0-15 = Plateau gradient block 0 = White; 1 = Orange; 2 = Magenta; 3 = Light Blue; 4 = Yellow; 5 = Lime; 6 = Pink; 7 = Gray 8 = Light Gray; 9 = Cyan; 10 = Purple; 11 = Blue; 12 = Brown; 13 = Green; 14 = Red; 15 = Black [default: -1,-1,-1,1,1,1,0,-1,-1,6,1,1,8,0,-1,-1,14,-1,-1,6,1,1,4]";
              };
              "Plateau Block ID" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:hardened_clay";
                description = "An extra block to use for Mesa & Savanna plateau gradients. Defaults to hardened clay. When configuring the various 'meta' options in this section, use a value of '-1' to reference this block. [default: minecraft:hardened_clay]";
              };
              "Plateau Block Meta Value" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "The meta value of the plateau block. [range: 0 ~ 15, default: 0]";
              };
              "Plateau Gradient Block ID" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:stained_hardened_clay";
                description = "The block to use for Mesa & Savanna plateau gradients. Defaults to stained hardened clay. This can be any block, but it works best with blocks that have multiple colours, such as stained hardened clay. The various 'meta' options in this section will use this block to configure the plateau gradients. [default: minecraft:stained_hardened_clay]";
              };
              "Savanna Plateau Block Metas" = lib.mkOption {
                type = lib.types.str;
                default = "0,0,0,0,8,8,12,12,8,0,8,12,12,8,12,8,0,0,8,12,12";
                description = "Comma-separated list of meta values for the plateau gradient blocks used in the Savanna biome variants. -1 = Plateau block; 0-15 = Plateau gradient block 0 = White; 1 = Orange; 2 = Magenta; 3 = Light Blue; 4 = Yellow; 5 = Lime; 6 = Pink; 7 = Gray 8 = Light Gray; 9 = Cyan; 10 = Purple; 11 = Blue; 12 = Brown; 13 = Green; 14 = Red; 15 = Black [default: 0,0,0,0,8,8,12,12,8,0,8,12,12,8,12,8,0,0,8,12,12]";
              };
              "Use stone for most Savanna biome variants" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to TRUE, Savanna biome variants will mostly use stone/cobblestone instead of gradient blocks for cliffs and plateaus. Savanna Plateau M will always use gradient blocks. [default: true]";
              };
            };
          };
        };
        ravines = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable Ravine Modifications" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Must be set to TRUE for the other ravine settings to have any effect. If FALSE, RTG won't interfere with ravine generation at all. [default: true]";
              };
              "Enable Ravines" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: false]";
              };
              "Ravine Frequency" = lib.mkOption {
                type = lib.types.int;
                default = 75;
                description = "This setting controls the number of ravines that generate. LOWER values = MORE ravines & MORE lag. (50 = vanilla ravine frequency) [range: 1 ~ 100, default: 50]";
              };
            };
          };
        };
        rivers = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable Lush River Bank Decorations in Hot Biomes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to FALSE to prevent RTG from generating lush river bank decorations in hot biomes, like Desert and Mesa. Lush decorations consist of tallgrass, trees, shrubs, and other flora. [default: true]";
              };
              "Enable Lush River Bank Surfaces in Hot Biomes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to FALSE to prevent RTG from generating lush river bank surfaces in hot biomes, like Desert and Mesa. Lush surfaces consist (almost exclusively) of grass blocks. [default: true]";
              };
            };
          };
        };
        "rivers and scenic lakes" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Amplitude of Large-Scale River Cut Off" = lib.mkOption {
                type = lib.types.str;
                default = "0.5";
                description = "Higher numbers make the large-scale cut-off noise have a greater effect. Defaults to 0.5 [range: 0.0 ~ 2.0, default: 0.5]";
              };
              "Biome for frozen scenic lakes" = lib.mkOption {
                type = lib.types.int;
                default = 11;
                description = "Biome ID for scenic lakes when frozen (default 11 = Frozen River) [range: 0 ~ 254, default: 11]";
              };
              "Biome for scenic lakes" = lib.mkOption {
                type = lib.types.int;
                default = 7;
                description = "Biome ID for scenic lakes when not frozen (default 7 = River) [range: 0 ~ 254, default: 7]";
              };
              "Lake Frequency Multiplier" = lib.mkOption {
                type = lib.types.str;
                default = "1.5";
                description = "Defaults to 1 (standard frequency) [range: 0.0 ~ 10.0, default: 1.0]";
              };
              "Lake Shore Irregularity" = lib.mkOption {
                type = lib.types.str;
                default = "1.5";
                description = "Makes scenic lake shores bend and curve more. Defaults to 1 [range: 0.0 ~ 2.0, default: 1.0]";
              };
              "Lake Size Multiplier" = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "Defaults to 1 (standard size) [range: 0.0 ~ 10.0, default: 1.0]";
              };
              "Multiplier to River Bending" = lib.mkOption {
                type = lib.types.str;
                default = "2.0";
                description = "Higher numbers make rivers bend more. Defaults to 1 [range: 0.0 ~ 2.0, default: 1.0]";
              };
              "River Frequency Multiplier" = lib.mkOption {
                type = lib.types.str;
                default = "1.5";
                description = "Multiplier to river frequencies. Defaults to 1 [range: 0.0 ~ 10.0, default: 1.0]";
              };
              "River Width Multiplier" = lib.mkOption {
                type = lib.types.str;
                default = "1.5";
                description = "Defaults to 1 (standard width) [range: 0.0 ~ 10.0, default: 1.0]";
              };
              "Scale of Large-Scale River Cut Off" = lib.mkOption {
                type = lib.types.str;
                default = "350.0";
                description = "Higher numbers make grassy areas near rivers bigger, but also more rare. Defaults to 350 [range: 50.0 ~ 5000.0, default: 350.0]";
              };
            };
          };
        };
        saplings = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable RTG Saplings" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to TRUE to allow RTG's custom trees to grow from vanilla saplings. RTG's custom trees can be grown only from the saplings that their leaves would drop naturally, and only in the biomes where they naturally generate. For example, you can only grow a Swamp Willow in a Swamp biome, and only with an Oak sapling (because Swamp Willows have Oak leaves). [default: true]";
              };
              "RTG Tree from Vanilla Sapling Chance" = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "1/x chance that a vanilla sapling will grow one of RTG's custom trees. 1 = Always generate if possible; 2 = 50% chance; 4 = 25% chance [range: 1 ~ 2147483647, default: 2]";
              };
            };
          };
        };
        "scattered features" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable Scattered Feature Modifications" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Must be set to TRUE for the other scattered feature settings to have any effect. If FALSE, RTG won't interfere with scattered feature generation at all. [default: true]";
              };
              "Generate Scattered Features" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "Maximum distance between scattered features" = lib.mkOption {
                type = lib.types.int;
                default = 48;
                description = "Scattered features = desert temples, jungle temples, and witch huts; 32 = Vanilla [range: 1 ~ 2147483647, default: 48]";
              };
              "Minimum distance between scattered features" = lib.mkOption {
                type = lib.types.int;
                default = 12;
                description = "Scattered features = desert temples, jungle temples, and witch huts; 8 = Vanilla [range: 1 ~ 2147483647, default: 12]";
              };
            };
          };
        };
        snow = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable Snow Layers" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This applies to newly-generated chunks only. Snow layers will still appear in cold/snowy biomes after it snows. [default: true]";
              };
            };
          };
        };
        strongholds = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Generate Strongholds" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
            };
          };
        };
        "terrain shadowing" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Desert shadow block ID" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:stained_hardened_clay";
                description = "The block to use for desert terrain shadowing, typically seen on the cliffs of desert mountains. Defaults to stained hardened clay. [default: minecraft:stained_hardened_clay]";
              };
              "Desert shadow block meta value" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "The meta value of the shadow block for desert cliffs. Defaults to 0 (white). [range: 0 ~ 15, default: 0]";
              };
              "Stone shadow block ID" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:stained_hardened_clay";
                description = "The block to use for stone terrain shadowing, typically seen on the cliffs of stone mountains. Defaults to stained hardened clay. [default: minecraft:stained_hardened_clay]";
              };
              "Stone shadow block meta value" = lib.mkOption {
                type = lib.types.int;
                default = 9;
                description = "The meta value of the shadow block for stone cliffs. Defaults to 9 (cyan). [range: 0 ~ 15, default: 9]";
              };
              "UBC Mode (Desert)" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to TRUE to allow UBC to override desert shadowing. This setting doesn't have any effect if UBC is not installed. [default: true]";
              };
              "UBC Mode (Stone)" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to TRUE to allow UBC to override stone shadowing. This setting doesn't have any effect if UBC is not installed. [default: true]";
              };
            };
          };
        };
        trees = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Allow Shrubs to Generate Below Surface" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to FALSE to prevent shrub trunks from generating below the surface. [default: true]";
              };
              "Allow Trees to Generate on Sand" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to FALSE to prevent trees from generating on sand. This setting only affects trees generated by RTG. Trees generated by a biome's decorator will adhere to their own generation rules. (RTG's Palm Trees ignore this setting.) [default: false]";
              };
              "Allow bark-covered logs" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to FALSE to prevent the trunks of RTG trees from using the 'all-bark' texture model. For more information, visit https://minecraft.wiki/w/Java_Edition_data_values/Pre-flattening#Wood [default: true]";
              };
            };
          };
        };
        villages = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable village modifications" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to FALSE to resolve issues with mods that also modify villages. If set to FALSE, the 'Minimum distance between villages', 'Maximum distance between villages' & 'Size of villages' settings will have no effect. [default: true]";
              };
              "Generate Villages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "Maximum distance between villages" = lib.mkOption {
                type = lib.types.int;
                default = 48;
                description = "Lower values = villages closer together; 32 = Vanilla [range: 1 ~ 2147483647, default: 48]";
              };
              "Minimum distance between villages" = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Higher values = villages further apart; 8 = Vanilla [range: 1 ~ 2147483647, default: 12]";
              };
              "Size of villages" = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Higher values = bigger villages; 0 = Vanilla [range: 0 ~ 10, default: 0]";
              };
            };
          };
        };
        volcanoes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable volcano eruptions" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to FALSE to prevent lava from flowing down the sides of volcanoes. [default: true]";
              };
              "Enable volcanoes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to FALSE to prevent volcanoes from generating. [default: true]";
              };
              "Volcano Chance" = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "1/x chance that a volcano will generate in a biome that has volcanoes enabled. 1 = Always generate if possible; 2 = 50% chance; 4 = 25% chance [range: 1 ~ 2147483647, default: 36]";
              };
              "Volcano block ID" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:obsidian";
                description = "The main block to use for the surface of the volcano. [default: minecraft:obsidian]";
              };
              "Volcano block meta value" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "The meta value of the volcano block. [range: 0 ~ 15, default: 0]";
              };
              "Volcano mix 1 block ID" = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:ashStone";
                description = "The block ID of the 1st volcano mix block. [default: BiomesOPlenty:ashStone]";
              };
              "Volcano mix 1 block meta value" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "The meta value of the 1st volcano mix block. [range: 0 ~ 15, default: 0]";
              };
              "Volcano mix 2 block ID" = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:ash";
                description = "The block ID of the 2nd volcano mix block. [default: BiomesOPlenty:ash]";
              };
              "Volcano mix 2 block meta value" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "The meta value of the 2nd volcano mix block. [range: 0 ~ 15, default: 0]";
              };
              "Volcano mix 3 block ID" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:coal_block";
                description = "The block ID of the 3rd volcano mix block. [default: minecraft:coal_block]";
              };
              "Volcano mix 3 block meta value" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "The meta value of the 3rd volcano mix block. [range: 0 ~ 15, default: 0]";
              };
            };
          };
        };
      };
    };
  };
}
