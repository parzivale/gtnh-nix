{lib, ...}: {
  AdvancedSolarPanel = lib.mkOption {
    description = "AdvancedSolarPanel configuration (./config/AdvancedSolarPanel.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/AdvancedSolarPanel.cfg";
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
              AdvancedSPGenDay = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
              AdvancedSPGenNight = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              AdvancedSPOutput = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
              AdvancedSPStorage = lib.mkOption {
                type = lib.types.int;
                default = 320000;
              };
              HybrydSPGenDay = lib.mkOption {
                type = lib.types.int;
                default = 128;
              };
              HybrydSPGenNight = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              HybrydSPOutput = lib.mkOption {
                type = lib.types.int;
                default = 128;
              };
              HybrydSPStorage = lib.mkOption {
                type = lib.types.int;
                default = 1280000;
              };
              QuantumSPGenDay = lib.mkOption {
                type = lib.types.int;
                default = 2048;
              };
              QuantumSPGenNight = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              QuantumSPOutput = lib.mkOption {
                type = lib.types.int;
                default = 2048;
              };
              QuantumSPStorage = lib.mkOption {
                type = lib.types.int;
                default = 20480000;
              };
              UltimateHSPGenDay = lib.mkOption {
                type = lib.types.int;
                default = 512;
              };
              UltimateHSPGenNight = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              UltimateHSPOutput = lib.mkOption {
                type = lib.types.int;
                default = 512;
              };
              UltimateHSPStorage = lib.mkOption {
                type = lib.types.int;
                default = 5120000;
              };
            };
          };
        };
        "quantum generator" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              quantumGeneratorDefaultPacketSize = lib.mkOption {
                type = lib.types.int;
                default = 2048;
              };
              quantumGeneratorDefaultProduction = lib.mkOption {
                type = lib.types.int;
                default = 2048;
              };
            };
          };
        };
        "recipes settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Disable Advanced Solar Helmet recipe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Disable AdvancedSolarPanel recipe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Disable DoubleSlab recipe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Disable Hybrid Solar Helmet recipe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Disable HybridSolarPanel recipe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Disable MolecularTransformer recipe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Disable QuantumSolarPanel recipe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Disable Ultimate Solar Helmet recipe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Disable UltimateSolarPanel recipe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Enable hard recipes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable simple Advanced Solar Panel recipe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
      };
    };
  };
}
