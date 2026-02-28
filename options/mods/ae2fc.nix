{lib, ...}: {
  ae2fc = lib.mkOption {
    description = "ae2fc configuration (./config/ae2fc.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ae2fc.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "fluid craft for ae2" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Blacklist Essentia Gas" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable all recipes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable all recipes, for quick tweaker. [default: false]";
              };
              "Enable AE2FC's Fluid I/O Bus" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable this to add Fluid Import/Export Bus like EC2's one. [default: true]";
              };
              "Enable Fluid Storage Cell" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable this to generate the fluid storage cells. If you are playing with EC2, you can turn it off. [default: true]";
              };
              "No Fluid Packet" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable this to make normal ME Interface can emit fluid with fluid pattern, like the ME Dual Interface. [default: false]";
              };
              "Portable Fluid Cell Battery Capacity" = lib.mkOption {
                type = lib.types.str;
                default = "20000.0";
              };
              fluidP2PInterface = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable the P2P Tunnel - ME Dual Interface feature. [default: true]";
              };
              packetRate = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "Period at which packets are dispatched, in ms.";
              };
              packetSize = lib.mkOption {
                type = lib.types.int;
                default = 256;
                description = "Number of items to be sent per packet";
              };
              replaceEC2 = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set true to handle missing item mappings from EC2. Note to work properly, you must have all relevant parts. [default: true]";
              };
            };
          };
        };
        levelmaintainer = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              maxTick = lib.mkOption {
                type = lib.types.int;
                default = 120;
                description = "Number on ticks for maximal request";
              };
              minTick = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Number on ticks for minimal request";
              };
            };
          };
        };
        ultrawireless = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              magnetRange = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "Magnet pick up radius";
              };
              reStockTime = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "Time between restocks";
              };
            };
          };
        };
      };
    };
  };
}
