{lib, ...}: {
  gtnhintergalactic = lib.mkOption {
    description = "gtnhintergalactic configuration (./config/gtnhintergalactic.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/gtnhintergalactic.cfg";
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
              spaceelevator = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    isCableRenderingEnabled = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "If true, the Space Elevator will use it's fancy renderer, otherwise a simple block renderer [default: true]";
                    };
                  };
                };
              };
              dysonswarm = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    coolantConsumption = lib.mkOption {
                      type = lib.types.int;
                      default = 3600000;
                      description = "How much coolant is consumed per hour [range: 0 ~ 2147483647, default: 3600000]";
                    };
                    coolantFluid = lib.mkOption {
                      type = lib.types.str;
                      default = "cryotheum";
                      description = "Will fallback to IC2 Coolant if this name is invalid [default: cryotheum]";
                    };
                    destroyModuleA = lib.mkOption {
                      type = lib.types.float;
                      default = 5.0E-5;
                      description = "This sets the parameter a. [range: 0.0 ~ 1.0, default: 5.0E-5]";
                    };
                    destroyModuleB = lib.mkOption {
                      type = lib.types.float;
                      default = 3.0E-5;
                      description = "This sets the parameter b. [range: 0.0 ~ 1.0, default: 3.0E-5]";
                    };
                    destroyModuleChance = lib.mkOption {
                      type = lib.types.float;
                      default = 0.066;
                      description = "This sets the parameter base_chance. [range: 0.0 ~ 1.0, default: 0.066]";
                    };
                    destroyModuleMaxCPS = lib.mkOption {
                      type = lib.types.float;
                      default = 100000.0;
                      description = "The maximum computation per second that will help prevent modules from collision [range: 0.0 ~ 1.7976931348623157E308, default: 100000.0]";
                    };
                    euPerModule = lib.mkOption {
                      type = lib.types.int;
                      default = 10000000;
                      description = "How much EU the Dyson Swarm Command Center produces per module per tick [range: 1 ~ 2147483647, default: 10000000]";
                    };
                    maxModules = lib.mkOption {
                      type = lib.types.int;
                      default = 10000;
                      description = "The maximum number of modules the dyson swarm can take [range: 1 ~ 2147483647, default: 10000]";
                    };
                    powerFactorDefault = lib.mkOption {
                      type = lib.types.float;
                      default = 0.0;
                      description = "If a power factor for a dimension is not set, this value will be used [range: 0.0 ~ 1.7976931348623157E308, default: 0.0]";
                    };
                    powerFactors = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = ["0:1.0" "25:0.15" "28:1.0" "29:0.81" "30:0.61" "31:2.28" "32:2.31" "33:0.16" "35:0.44" "36:0.44" "37:1.61" "38:0.81" "39:1.76" "40:0.81" "41:0.32" "42:0.6" "43:0.44" "44:0.32" "45:0.32" "46:0.23" "47:0.23" "48:0.18" "49:0.16" "63:1.12" "64:1.12" "81:1.41" "82:1.26" "83:0.15" "84:1.98" "85:1.34" "86:0.23" "90:2.28" "91:1.98" "92:1.81" "93:3.37" "94:1.98" "95:2.11" "SS_Overworld:1.1" "SS_planet.mars:0.89" "SS_planet.venus:1.94" "SS_planet.jupiter:0.48" "SS_planet.saturn:0.36" "SS_planet.uranus:0.25" "SS_planet.neptune:0.2" "PS:0.01"];
                      description = "DIMIDs for Utility Worlds dimensions are \"UW_Garden\", \"UW_Mining\" and \"UW_Void\" [default: [0:1.0], [25:0.15], [28:1.0], [29:0.81], [30:0.61], [31:2.28], [32:2.31], [33:0.16], [35:0.44], [36:0.44], [37:1.61], [38:0.81], [39:1.76], [40:0.81], [41:0.32], [42:0.6], [43:0.44], [44:0.32], [45:0.32], [46:0.23], [47:0.23], [48:0.18], [49:0.16], [63:1.12], [64:1.12], [81:1.41], [82:1.26], [83:0.15], [84:1.98], [85:1.34], [86:0.23], [90:2.28], [91:1.98], [92:1.81], [93:3.37], [94:1.98], [95:2.11], [SS_Overworld:1.1], [SS_planet.mars:0.89], [SS_planet.venus:1.94], [SS_planet.jupiter:0.48], [SS_planet.saturn:0.36], [SS_planet.uranus:0.25], [SS_planet.neptune:0.2], [PS:0.01]]";
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
