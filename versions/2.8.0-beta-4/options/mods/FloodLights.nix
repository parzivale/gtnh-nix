{lib, ...}: {
  FloodLights = lib.mkOption {
    description = "FloodLights configuration (./config/FloodLights.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/FloodLights.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        blocks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              carbonFloodlightEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables the carbon FloodLight [default: true]";
              };
              electricFloodlightEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables the electric FloodLight [default: true]";
              };
              growLightEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables the Grow Light [default: true]";
              };
              smallElectricFloodlightEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables the small electric FloodLight [default: true]";
              };
              uvFloodlightEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables the UV FloodLight [default: true]";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              IGWNotifierEnabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should the IGW Notifier be shown? [default: true]";
              };
              carbonTime = lib.mkOption {
                type = lib.types.int;
                default = 300;
                description = "How many seconds should 1 coal last in the carbon floodlight (quarter of that for the cone floodlights)? Default:300 [range: 0 ~ 1000, default: 300]";
              };
              chanceGrowLight = lib.mkOption {
                type = lib.types.str;
                default = "0.05";
                description = "How big should the chance for the growlight for a growtick per second be? [range: 0.0 ~ 1.0, default: 0.05]";
              };
              damageUVFloodlight = lib.mkOption {
                type = lib.types.str;
                default = "4.0";
                description = "How much damage should the UV Floodlights do per second? [range: 1.0 ~ 16.0, default: 4.0]";
              };
              energyUsage = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Energy Usage in RF/t for the electric FloodLight (x2 for the cone floodlights) [range: 0 ~ 1000, default: 20]";
              };
              energyUsageGrowLight = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "Energy Usage in RF/t for the Grow Light [range: 0 ~ 800, default: 40]";
              };
              energyUsageSmallFloodlight = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Energy Usage in RF/t for the small electric FloodLight [range: 0 ~ 100, default: 2]";
              };
              energyUsageUVFloodlight = lib.mkOption {
                type = lib.types.int;
                default = 80;
                description = "Energy Usage in RF/t for the UV FloodLight [range: 0 ~ 800, default: 80]";
              };
              rangeConeFloodlight = lib.mkOption {
                type = lib.types.int;
                default = 32;
                description = "How far should the cone floodlights go? (mind that wide only goes quarter as far) Default:32    [range: 1 ~ 64, default: 32]";
              };
              rangeStraightFloodlight = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "How far should the straight Floodlights go? [range: 1 ~ 128, default: 64]";
              };
              rangeUVFloodlight = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "How far should the UV Floodlights go? [range: 1 ~ 32, default: 8]";
              };
              timeoutFloodlights = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "How long should the timeout for turning on floodlights again be in ticks? [range: 1 ~ 240, default: 40]";
              };
              uvLightRendered = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should the UV Light Block be visible? [default: true]";
              };
            };
          };
        };
      };
    };
  };
}
