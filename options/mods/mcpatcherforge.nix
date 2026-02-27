{lib, ...}: {
  mcpatcherforge = lib.mkOption {
    description = "mcpatcherforge configuration (./config/mcpatcherforge.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/mcpatcherforge.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        better_skies = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              brightenFireworks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable the better skies module [default: false]";
              };
              horizon = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "[range: -2147483648 ~ 2147483647, default: 16]";
              };
              logging = lib.mkOption {
                type = lib.types.str;
                default = "INFO";
                description = "[default: INFO]";
              };
              skybox = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              unloadTextures = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
            };
          };
        };
        connected_textures = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              betterGrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              debugTextures = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable the connected textures module [default: true]";
              };
              glassPane = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              logging = lib.mkOption {
                type = lib.types.str;
                default = "INFO";
                description = "[default: INFO]";
              };
              maxRecursion = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "[range: -2147483648 ~ 2147483647, default: 4]";
              };
              nonStandard = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              standard = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
            };
          };
        };
        custom_colors = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              blockBlendRadius = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "[range: -2147483648 ~ 2147483647, default: 4]";
              };
              clouds = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              dye = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              egg = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable the custom colors module [default: false]";
              };
              fog = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              fogBlendRadius = lib.mkOption {
                type = lib.types.int;
                default = 7;
                description = "[range: -2147483648 ~ 2147483647, default: 7]";
              };
              lightmaps = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              logging = lib.mkOption {
                type = lib.types.str;
                default = "INFO";
                description = "[default: INFO]";
              };
              map = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              otherBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              particle = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              potion = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              redstone = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              smoothBiomes = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              stem = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              swampColors = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              testColorSmoothing = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              text = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              tree = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              water = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              xporb = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              yVariance = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "[range: -2147483648 ~ 2147483647, default: 0]";
              };
            };
          };
        };
        custom_item_textures = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              armor = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable the custom item textures module [default: false]";
              };
              enchantments = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              items = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              logging = lib.mkOption {
                type = lib.types.str;
                default = "INFO";
                description = "[default: INFO]";
              };
            };
          };
        };
        extended_hd = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              HDFont = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              animations = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              anisotropicFiltering = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: -2147483648 ~ 2147483647, default: 1]";
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable the extended hd module [default: false]";
              };
              fancyClock = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              fancyCompass = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              "lod bias" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "[range: -2147483648 ~ 2147483647, default: 0]";
              };
              logging = lib.mkOption {
                type = lib.types.str;
                default = "INFO";
                description = "[default: INFO]";
              };
              maxMipMapLevel = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "[range: -2147483648 ~ 2147483647, default: 3]";
              };
              mipmap = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              nonHDFontWidth = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              useGL13 = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              useScratchTexture = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
            };
          };
        };
        random_mobs = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable the random mobs module [default: false]";
              };
              leashLine = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              logging = lib.mkOption {
                type = lib.types.str;
                default = "INFO";
                description = "[default: INFO]";
              };
            };
          };
        };
      };
    };
  };
}
