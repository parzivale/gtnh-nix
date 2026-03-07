{lib, ...}: {
  effects = lib.mkOption {
    description = "effects configuration (./config/SuperTiC/effects.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/SuperTiC/effects.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        adamantium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        adamantiumalloy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        ademicsteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        aeonsteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        alduorite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        aluminium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        alumite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        amber = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        amethyst = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        angmallen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        ardite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        artherium-sn = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        astralsilver = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        atlarus = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        atomicseparationcatalyst = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        avaritia_infinitymetal = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        avaritia_neutronium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        bartimaeusnek = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        bedrockium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        beryllium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        bismuth = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        bismuthbronze = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        bismutite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        blackbronze = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        blackplutonium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        blacksteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        blaze = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        blueslime = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        bluesteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        bluetopaz = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        bone = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        brass = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        bronze = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        cactus = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        californium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        callistoice = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        carbon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        carmot = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        celenegil = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        certusquartz = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        ceruclase = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        chrome = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        chromo-alumino-povondraite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        chrysotile = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        cobalt = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        cobaltbrass = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        conductiveiron = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        copper = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        cosmicneutronium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        crystallinealloy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        cubiczirconia = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        cupronickel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        dalisenite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        damascussteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        darkiron = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        darksteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        deepiron = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        desh = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        diamond = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        dogbearium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        draconium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        draconiumawakened = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        duralumin = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        duranium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        electricalsteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        electrum = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        electrumflux = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        elvenelementium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        emerald = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        enderium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        enderiumbase = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        endsteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        energeticalloy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        energeticsilver = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        enhancedgalgadorian = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        enrichednaquadahalloy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        epoxid = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        epoxidfiberreinforced = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        eximite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        extremelyunstablenaquadah = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        fayalite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        fierysteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        firestone = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        flint = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        fluor-buergerite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        fluorspar = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        force = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        forsterite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        gaiaspirit = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        galgadorian = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        garnetred = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        garnetyellow = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        gold = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        graniteblack = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        granitered = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        graphene = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        graphite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        greensapphire = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        haderoth = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        hedenbergite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        heeendium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        hepatizon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        highdurabilitycompoundsteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        hikarium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        hsla = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        hsse = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        hssg = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        hsss = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        ichorium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        incoloy-903 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        infinity = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        infinitycatalyst = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        infuscolium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        infusedair = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        infusedearth = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        infusedentropy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        infusedfire = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        infusedgold = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        infusedorder = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        infusedwater = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        inolashite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        invar = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        iridium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        iron = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        ironmagnetic = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        ironwood = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        jade = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        jasper = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        kanthal = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        knightmetal = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        lanthanumhexaboride = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        lead = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        ledox = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        lithiumchloride = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        lumiium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        magicwood = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        magnalium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        magnetoresonatic = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        manasteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        manganese = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        manyullyn = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        mar-ce-m200steel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        mar-m200steel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        melodicalloy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        metastableoganesson = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        meteoriciron = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        meteoricsteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        molybdenum = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        mu-metal = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        mysteriouscrystal = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        mytryl = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        naquadah = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        naquadahalloy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        naquadahenriched = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        naquadria = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        neodymium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        neodymiummagnetic = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        netherquartz = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        netherrack = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        netherstar = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        neutronium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        nichrome = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        nickel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        nickelzincferrite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        obsidian = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        olenite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        olivine = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        opal = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        orichalcum = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        oriharukon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        orundum = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        osmiridium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        osmium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        oureclase = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        palladium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        paper = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        permalloy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        pigiron = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        plastic = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        platinum = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        plutonium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        plutonium241 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        polybenzimidazole = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        polycaprolactam = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        polyphenylenesulfide = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        polystyrene = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        polytetrafluoroethylene = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        polyvinylchloride = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        prasiolite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        preciousmetalsalloy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        prometheum = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        pulsatingiron = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        quantium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        queensgold = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        realgar = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        redsteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        redstonealloy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        redzircon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        reinforced = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        rhodium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        rhodium-platedpalladium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        rosegold = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        rubracium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        ruby = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        ruridit = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        ruthenium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        samariummagnetic = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        sapphire = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        shadow = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        shadowiron = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        shadowsteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        shirabon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        signalium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        silicone = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        silver = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        slime = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        soularium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        stainlesssteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        steel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        steeleaf = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        steelmagnetic = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        stellaralloy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        sterlingsilver = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        stone = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        styrenebutadienerubber = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        sunnarium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        tairitsu = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        tanmolyiumbeta-c = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        tantalumhafniumcarbide = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        tanzanite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        terrasteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        thaumium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        thorium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        thorium232 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        tiberium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        tinalloy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        titanium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        topaz = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        tpvalloy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        trinium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        tritanium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        tungsten = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        tungstencarbide = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        tungstensteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        ultimet = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        unstableingot = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        uranium = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        uranium235 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        vanadio-oxy-dravite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        vanadiumsteel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        vibrantalloy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        vinteum = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        vividalloy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        void = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        vulcanite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        vyroxeres = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        wood = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        wroughtiron = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        zircaloy-2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        zircaloy-4 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
        zn-thalloy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amplifier = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "[range: 1 ~ 2147483647, default: 1]";
              };
              Duration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "[range: 1 ~ 2147483647, default: 200]";
              };
              Effect = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Effect id (if negative gets applied to player) [range: -255 ~ 255, default: 0]";
              };
              Probability = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance effect gets applied 1 in X [range: 1 ~ 2147483647, default: 1]";
              };
            };
          };
        };
      };
    };
  };
  main = lib.mkOption {
    description = "main configuration (./config/SuperTiC/main.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/SuperTiC/main.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        compat_bloodmagic = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Bloodmagic = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables/Disables Bloodmagic support [default: true]";
              };
              RitualLP = lib.mkOption {
                type = lib.types.int;
                default = 100000;
                description = "LP amount for the Spell of the diligent Tinkerer [range: 1 ~ 80000000, default: 100000]";
              };
            };
          };
        };
        compat_thaumcraft = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Thaumcraft = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables/Disables Thaumcraft support [default: true]";
              };
              ThaumcraftLevel = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Difficulty for Thaumcraft modifier [range: 1 ~ 3, default: 2]";
              };
            };
          };
        };
      };
    };
  };
}
