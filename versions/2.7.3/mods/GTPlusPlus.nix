{lib, ...}: {
  ASM_cfg = lib.mkOption {
    description = "ASM_cfg configuration (./config/GTPlusPlus/ASM.cfg)";
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
  GTPlusPlus_cfg = lib.mkOption {
    description = "GTPlusPlus_cfg configuration (./config/GTPlusPlus/GTPlusPlus.cfg)";
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
                    showHiddenNEIItems = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Makes all items hidden from NEI display. [default: false]";
                    };
                  };
                };
              };
              machines = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    boilerSteamPerSecond = lib.mkOption {
                      type = lib.types.int;
                      default = 750;
                      description = "Sets the steam per second value in LV,MV,HV boilers (respectively 1x,2x,3x this number for the tiers) [range: -2147483648 ~ 2147483647, default: 750]";
                    };
                    disableIC2Recipes = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Alkaluscraft Related - Removes IC2 Cables Except glass fibre. Few other Misc Tweaks. [default: false]";
                    };
                    enableThaumcraftShardUnification = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Allows the use of TC shards across many recipes by oreDicting them into a common group. [default: false]";
                    };
                  };
                };
              };
              gregtech = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    turbineCutoffBase = lib.mkOption {
                      type = lib.types.int;
                      default = 25500;
                      description = "Rotors below this durability will be removed, prevents NEI clutter. Minimum Durability is N * x, where N is the new value set and x is the turbine size, where 1 is Tiny and 4 is Huge. Set to 0 to disable. [range: -2147483648 ~ 2147483647, default: 25500]";
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
