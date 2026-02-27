{lib, ...}: {
  ASM = lib.mkOption {
    description = "ASM configuration (./config/GTPlusPlus/ASM.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GTPlusPlus/ASM.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        asm = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              debug = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    debugMode = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Enables all sorts of debug logging. (Don't use unless told to, breaks other things.) [default: false]";
                    };
                    disableAllLogging = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Disables ALL logging from GT++. [default: true]";
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  GTPlusPlus = lib.mkOption {
    description = "GTPlusPlus configuration (./config/GTPlusPlus/GTPlusPlus.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GTPlusPlus/GTPlusPlus.cfg";
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
              debug = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    MachineInfo = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Makes many machines display lots of debug logging. [default: false]";
                    };
                    dumpItemAndBlockData = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Dumps all GT++ and Toxic Everglade Data to en_US.lang in the config folder. This config option can be used by foreign players to generate blank .lang files, which they can populate with their language of choice. [default: false]";
                    };
                  };
                };
              };
              features = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    hideUniversalCells = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Hides every filled IC2 Universal Cell from NEI. [default: true]";
                    };
                  };
                };
              };
              visual = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    enableAnimatedTextures = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Enables Animated GT++ Textures [default: true]";
                    };
                    useGregtechTextures = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Use GT textures [default: true]";
                    };
                  };
                };
              };
              worldgen = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    EVERGLADESBIOME_ID = lib.mkOption {
                      type = lib.types.int;
                      default = 199;
                      description = "The biome within the Toxic Everglades. [range: -2147483648 ~ 2147483647, default: 199]";
                    };
                    EVERGLADES_ID = lib.mkOption {
                      type = lib.types.int;
                      default = 227;
                      description = "The ID of the Toxic Everglades. [range: -2147483648 ~ 2147483647, default: 227]";
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
}
