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
                description = "[default: minecraft:bedrock]";
              };
              "Bedrock block meta value" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "[range: 0 ~ 15, default: 0]";
              };
              "Number of flat bedrock layers" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "[range: 0 ~ 5, default: 0]";
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
                description = "[default: true]";
              };
              "Enable RTG Biome Surfaces" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "Patch Biome ID" = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: -1 ~ 255, default: 1]";
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
                description = "[range: 1 ~ 100, default: 1]";
              };
              "Enable Cobblestone Boulders" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "UBC Boulders" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
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
                description = "[range: 1 ~ 40, default: 8]";
              };
              "Cave Frequency" = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "[range: 1 ~ 40, default: 16]";
              };
              "Enable Cave Modifications" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
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
                description = "[default: false]";
              };
              "Enable Debugging" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
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
                description = "[range: 1 ~ 12, default: 4]";
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
                description = "[range: 1 ~ 200, default: 8]";
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
                description = "[range: 0 ~ 2147483647, default: 200]";
              };
              "Flowing Water Chance" = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 0 ~ 2147483647, default: 200]";
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
                description = "[range: 1 ~ 100, default: 10]";
              };
              "1/x chance that Water Surface Lakes will generate if given the opportunity to do so during world gen" = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "[range: 1 ~ 100, default: 10]";
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
                description = "[range: 1 ~ 100, default: 10]";
              };
              "1/x chance that Water Underground Lakes will generate if given the opportunity to do so during world gen" = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "[range: 1 ~ 100, default: 10]";
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
                description = "[default: -1,-1,0,1,0,0,0,14,0,8,0,1,8,0,-1,0,14,0,0,14,0,0,8]";
              };
              "Mesa Plateau Block Metas" = lib.mkOption {
                type = lib.types.str;
                default = "-1,-1,-1,1,1,1,0,-1,-1,6,1,1,8,0,-1,-1,14,-1,-1,6,1,1,4";
                description = "[default: -1,-1,-1,1,1,1,0,-1,-1,6,1,1,8,0,-1,-1,14,-1,-1,6,1,1,4]";
              };
              "Plateau Block ID" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:hardened_clay";
                description = "[default: minecraft:hardened_clay]";
              };
              "Plateau Block Meta Value" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "[range: 0 ~ 15, default: 0]";
              };
              "Plateau Gradient Block ID" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:stained_hardened_clay";
                description = "[default: minecraft:stained_hardened_clay]";
              };
              "Savanna Plateau Block Metas" = lib.mkOption {
                type = lib.types.str;
                default = "0,0,0,0,8,8,12,12,8,0,8,12,12,8,12,8,0,0,8,12,12";
                description = "[default: 0,0,0,0,8,8,12,12,8,0,8,12,12,8,12,8,0,0,8,12,12]";
              };
              "Use stone for most Savanna biome variants" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
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
                description = "[default: true]";
              };
              "Enable Ravines" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: false]";
              };
              "Ravine Frequency" = lib.mkOption {
                type = lib.types.int;
                default = 75;
                description = "[range: 1 ~ 100, default: 50]";
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
                description = "[default: true]";
              };
              "Enable Lush River Bank Surfaces in Hot Biomes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
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
                description = "[range: 0.0 ~ 2.0, default: 0.5]";
              };
              "Biome for frozen scenic lakes" = lib.mkOption {
                type = lib.types.int;
                default = 11;
                description = "[range: 0 ~ 254, default: 11]";
              };
              "Biome for scenic lakes" = lib.mkOption {
                type = lib.types.int;
                default = 7;
                description = "[range: 0 ~ 254, default: 7]";
              };
              "Lake Frequency Multiplier" = lib.mkOption {
                type = lib.types.str;
                default = "1.5";
                description = "[range: 0.0 ~ 10.0, default: 1.0]";
              };
              "Lake Shore Irregularity" = lib.mkOption {
                type = lib.types.str;
                default = "1.5";
                description = "[range: 0.0 ~ 2.0, default: 1.0]";
              };
              "Lake Size Multiplier" = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "[range: 0.0 ~ 10.0, default: 1.0]";
              };
              "Multiplier to River Bending" = lib.mkOption {
                type = lib.types.str;
                default = "2.0";
                description = "[range: 0.0 ~ 2.0, default: 1.0]";
              };
              "River Frequency Multiplier" = lib.mkOption {
                type = lib.types.str;
                default = "1.5";
                description = "[range: 0.0 ~ 10.0, default: 1.0]";
              };
              "River Width Multiplier" = lib.mkOption {
                type = lib.types.str;
                default = "1.5";
                description = "[range: 0.0 ~ 10.0, default: 1.0]";
              };
              "Scale of Large-Scale River Cut Off" = lib.mkOption {
                type = lib.types.str;
                default = "350.0";
                description = "[range: 50.0 ~ 5000.0, default: 350.0]";
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
                description = "[default: true]";
              };
              "RTG Tree from Vanilla Sapling Chance" = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "[range: 1 ~ 2147483647, default: 2]";
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
                description = "[default: true]";
              };
              "Generate Scattered Features" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "Maximum distance between scattered features" = lib.mkOption {
                type = lib.types.int;
                default = 48;
                description = "[range: 1 ~ 2147483647, default: 48]";
              };
              "Minimum distance between scattered features" = lib.mkOption {
                type = lib.types.int;
                default = 12;
                description = "[range: 1 ~ 2147483647, default: 12]";
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
                description = "[default: true]";
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
                description = "[default: minecraft:stained_hardened_clay]";
              };
              "Desert shadow block meta value" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "[range: 0 ~ 15, default: 0]";
              };
              "Stone shadow block ID" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:stained_hardened_clay";
                description = "[default: minecraft:stained_hardened_clay]";
              };
              "Stone shadow block meta value" = lib.mkOption {
                type = lib.types.int;
                default = 9;
                description = "[range: 0 ~ 15, default: 9]";
              };
              "UBC Mode (Desert)" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "UBC Mode (Stone)" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
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
                description = "[default: true]";
              };
              "Allow Trees to Generate on Sand" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              "Allow bark-covered logs" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
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
                description = "[default: true]";
              };
              "Generate Villages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "Maximum distance between villages" = lib.mkOption {
                type = lib.types.int;
                default = 48;
                description = "[range: 1 ~ 2147483647, default: 48]";
              };
              "Minimum distance between villages" = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "[range: 1 ~ 2147483647, default: 12]";
              };
              "Size of villages" = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "[range: 0 ~ 10, default: 0]";
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
                description = "[default: true]";
              };
              "Enable volcanoes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "Volcano Chance" = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "[range: 1 ~ 2147483647, default: 36]";
              };
              "Volcano block ID" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:obsidian";
                description = "[default: minecraft:obsidian]";
              };
              "Volcano block meta value" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "[range: 0 ~ 15, default: 0]";
              };
              "Volcano mix 1 block ID" = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:ashStone";
                description = "[default: BiomesOPlenty:ashStone]";
              };
              "Volcano mix 1 block meta value" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "[range: 0 ~ 15, default: 0]";
              };
              "Volcano mix 2 block ID" = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:ash";
                description = "[default: BiomesOPlenty:ash]";
              };
              "Volcano mix 2 block meta value" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "[range: 0 ~ 15, default: 0]";
              };
              "Volcano mix 3 block ID" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:coal_block";
                description = "[default: minecraft:coal_block]";
              };
              "Volcano mix 3 block meta value" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "[range: 0 ~ 15, default: 0]";
              };
            };
          };
        };
      };
    };
  };
}
