{lib, ...}: {
  gadomancy = lib.mkOption {
    description = "gadomancy configuration (./config/gadomancy.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/gadomancy.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        decorative = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              eldritchdecoblocks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "false = Removes recipes for this blocks You have to change this client- and server-side! [default: true]";
              };
            };
          };
        };
        dimension = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              calculateEldritchLight = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "TRUE = Calculating Light values for the Gadomancy-Eldritch Mazes; FALSE = No calculation, but some Light Bugs - Calculating the Light takes ~2 seconds -> Can be measured when trying to enter the eldritch mazed via Gadomancy Eldritch portal. [default: true]";
              };
              dimOuterId = lib.mkOption {
                type = lib.types.int;
                default = 173;
                description = "Dimension Id for the eldrich mazes accessed via Node Manipulator [range: -2147483648 ~ 2147483647, default: -73]";
              };
              maxMazeCount = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Defines how many Eldritch mazes may exist at the same time using the Gadomancy Eldritch ritual. (-1 = infinite) Note that 1 maze = 1 player; Once the player finishes the maze, the maze closes itself and teleports the player out. [range: -1 ~ 2147483647, default: -1]";
              };
            };
          };
        };
        enchantments = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              EnchantmentRevealer = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
            };
          };
        };
        entities = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              auraCoreDatawatcherAuraId = lib.mkOption {
                type = lib.types.int;
                default = 21;
                description = "Do not edit unless you know what are you doing! - Datawatcher ID of the Auracore's current aspects [range: 0 ~ 31, default: 21]";
              };
              itemNoClipDatawatcherFixId = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Do not edit unless you know what are you doing! - Datawatcher ID of the Fixed-Coordinates for EntityNoClipItem [range: 0 ~ 31, default: 20]";
              };
              itemNoClipDatawatcherMasterId = lib.mkOption {
                type = lib.types.int;
                default = 19;
                description = "Do not edit unless you know what are you doing! - Datawatcher ID of the Master-Coordinates for EntityNoClipItem [range: 0 ~ 31, default: 19]";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              auraPylonBlacklist = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Write a list of aspects (e.g. aura,aer) here that should not be active/obtainable with the aura pylon. Multiple aspects can be seperated with ','. Leave it empty to blacklist nothing [default: ]";
              };
              enableAdditionalNodeTypes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables our custom node types. This might solve some compatibility issues (e.g. WitchingGadgets). You have to change this client- and server-side! Only change when you experience issues with special mods' features ONLY not working when using the mod together with Gadomancy. [default: true]";
              };
              particleRenderDistance = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Defines, how close a player has to be towards the particle origin to see the particles created by it. [range: 5 ~ 1000, default: 100]";
              };
            };
          };
        };
        golem = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              datawatcherId = lib.mkOption {
                type = lib.types.int;
                default = 29;
                description = "Do not edit unless you know what are you doing! [range: 0 ~ 31, default: 29]";
              };
            };
          };
        };
        potions = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              PotionAchromatic = lib.mkOption {
                type = lib.types.int;
                default = 117;
              };
              PotionBuffGolem = lib.mkOption {
                type = lib.types.int;
                default = 118;
              };
              PotionEldritch = lib.mkOption {
                type = lib.types.int;
                default = 119;
              };
              PotionMiningLuck = lib.mkOption {
                type = lib.types.int;
                default = 124;
              };
              PotionVisAffinity = lib.mkOption {
                type = lib.types.int;
                default = 126;
              };
            };
          };
        };
        skyblock = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ancientStoneRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "TRUE = Adds recipes for Ancient Stone and Ancient Stone Pedestal (This may be usefull for severs and skyblock packs to craft the Node Manipulator and get more primodial pearls). You have to change this client- and server-side! [default: false]";
              };
            };
          };
        };
      };
    };
  };
}
