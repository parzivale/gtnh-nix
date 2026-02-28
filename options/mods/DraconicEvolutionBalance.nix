{lib, ...}: {
  "DraconicEvolution.Balance" = lib.mkOption {
    description = "DraconicEvolution.Balance configuration (./config/DraconicEvolution.Balance.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/DraconicEvolution.Balance.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        energy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              armor = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "Draconic Armor: Additional energy storage per upgrade installed (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 5000000;
                    };
                    "Draconic Armor: Amount of energy required to remove negative effects (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 5000;
                    };
                    "Draconic Armor: Amount of energy required to restore protection point (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    "Draconic Armor: Base energy storage (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 10000000;
                    };
                    "Draconic Armor: Maximum energy transfer rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 500000;
                    };
                    "Wyvern Armor: Additional energy storage per upgrade installed (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 500000;
                    };
                    "Wyvern Armor: Amount of energy required to restore protection point (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    "Wyvern Armor: Base energy storage (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 1000000;
                    };
                    "Wyvern Armor: Maximum energy transfer rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 50000;
                    };
                  };
                };
              };
              tools = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "Draconic Flux Capacitor: Additional energy storage per upgrade installed (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 50000000;
                    };
                    "Draconic Flux Capacitor: Base energy storage (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 250000000;
                    };
                    "Draconic Flux Capacitor: Maximum energy extraction rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 100000000;
                    };
                    "Draconic Flux Capacitor: Maximum energy reception rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 10000000;
                    };
                    "Draconic Tools: Additional energy storage per upgrade installed (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 5000000;
                    };
                    "Draconic Tools: Amount of energy required to perform action (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 80;
                    };
                    "Draconic Tools: Base energy storage (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 10000000;
                    };
                    "Draconic Tools: Maximum energy transfer rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 500000;
                    };
                    "Wyvern Flux Capacitor: Additional energy storage per upgrade installed (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 50000000;
                    };
                    "Wyvern Flux Capacitor: Base energy storage (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 80000000;
                    };
                    "Wyvern Flux Capacitor: Maximum energy extraction rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 10000000;
                    };
                    "Wyvern Flux Capacitor: Maximum energy reception rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 1000000;
                    };
                    "Wyvern Tools: Additional energy storage per upgrade installed (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 500000;
                    };
                    "Wyvern Tools: Amount of energy required to perform action (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 80;
                    };
                    "Wyvern Tools: Base energy storage (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 1000000;
                    };
                    "Wyvern Tools: Maximum energy transfer rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 50000;
                    };
                  };
                };
              };
              weapons = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "Arrow of Draconic Fire: Energy cost multiplier" = lib.mkOption {
                      type = lib.types.int;
                      default = 30;
                    };
                    "Draconic Bow: Amount of energy required to shoot (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 80;
                    };
                    "Draconic Weapons: Additional energy storage per upgrade installed (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 5000000;
                    };
                    "Draconic Weapons: Amount of energy required to perform attack (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "Draconic Weapons: Base energy storage (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 10000000;
                    };
                    "Draconic Weapons: Maximum energy transfer rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 500000;
                    };
                    "Wyvern Bow: Amount of energy required to shoot (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 80;
                    };
                    "Wyvern Weapons: Additional energy storage per upgrade installed (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 500000;
                    };
                    "Wyvern Weapons: Amount of energy required to perform attack (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "Wyvern Weapons: Base energy storage (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 1000000;
                    };
                    "Wyvern Weapons: Maximum energy transfer rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 50000;
                    };
                  };
                };
              };
              misc = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "Draconium Block: Amount of energy required to charge (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 100000000;
                    };
                    "Draconium Block: Maximum charging speed (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 10000000;
                    };
                  };
                };
              };
              machines = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "Advanced Energy Relay: Energy buffer size (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 4550000;
                    };
                    "Advanced Energy Relay: Maximum energy extraction rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 4550000;
                    };
                    "Advanced Energy Relay: Maximum energy reception rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 4550000;
                    };
                    "Advanced Energy Transceiver: Energy buffer size (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 10000000;
                    };
                    "Advanced Energy Transceiver: Maximum energy extraction rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 10000000;
                    };
                    "Advanced Energy Transceiver: Maximum energy reception rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 10000000;
                    };
                    "Advanced Wireless Energy Transceiver: Energy buffer size (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 4550000;
                    };
                    "Advanced Wireless Energy Transceiver: Maximum energy extraction rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 4550000;
                    };
                    "Advanced Wireless Energy Transceiver: Maximum energy reception rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 4550000;
                    };
                    "Advanced Wireless Energy Transceiver: Maximum energy sending rate for each linked device (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 50000;
                    };
                    "Energy Infuser: Energy buffer size (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 10000000;
                    };
                    "Energy Infuser: Maximum energy transfer rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 10000000;
                    };
                    "Energy Relay: Energy buffer size (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 50000;
                    };
                    "Energy Relay: Maximum energy extraction rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 50000;
                    };
                    "Energy Relay: Maximum energy reception rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 50000;
                    };
                    "Energy Transceiver: Energy buffer size (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 50000;
                    };
                    "Energy Transceiver: Maximum energy extraction rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 50000;
                    };
                    "Energy Transceiver: Maximum energy reception rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 50000;
                    };
                    "Mob Grinder: Amount of energy required to kill entity (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    "Mob Grinder: Internal energy buffer size (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 20000;
                    };
                    "Mob Grinder: Main energy buffer size (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 100000;
                    };
                    "Mob Grinder: Maximum energy reception rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 32000;
                    };
                    "Multiblock Energy Storage Tier 1: Energy buffer size (RF)" = lib.mkOption {
                      type = lib.types.float;
                      default = 3.20E8;
                    };
                    "Multiblock Energy Storage Tier 2: Energy buffer size (RF)" = lib.mkOption {
                      type = lib.types.float;
                      default = 2.24E9;
                    };
                    "Multiblock Energy Storage Tier 3: Energy buffer size (RF)" = lib.mkOption {
                      type = lib.types.float;
                      default = 1.57E10;
                    };
                    "Multiblock Energy Storage Tier 4: Energy buffer size (RF)" = lib.mkOption {
                      type = lib.types.float;
                      default = 2.00E11;
                    };
                    "Multiblock Energy Storage Tier 5: Energy buffer size (RF)" = lib.mkOption {
                      type = lib.types.float;
                      default = 1.40E12;
                    };
                    "Multiblock Energy Storage Tier 6: Energy buffer size (RF)" = lib.mkOption {
                      type = lib.types.float;
                      default = 9.80E12;
                    };
                    "Multiblock Energy Storage Tier 7: Energy buffer size (RF)" = lib.mkOption {
                      type = lib.types.float;
                      default = 6.86E13;
                    };
                    "Wireless Energy Transceiver: Energy buffer size (RF)" = lib.mkOption {
                      type = lib.types.int;
                      default = 50000;
                    };
                    "Wireless Energy Transceiver: Maximum energy extraction rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 50000;
                    };
                    "Wireless Energy Transceiver: Maximum energy reception rate (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 50000;
                    };
                    "Wireless Energy Transceiver: Maximum energy sending rate for each linked device (RF/t)" = lib.mkOption {
                      type = lib.types.int;
                      default = 5000;
                    };
                  };
                };
              };
            };
          };
        };
        tweaks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              armor = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "Draconic Armor: Maximum amount of upgrade points" = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                    };
                    "Draconic Armor: Maximum amount of upgrades" = lib.mkOption {
                      type = lib.types.int;
                      default = 37;
                    };
                    "Wyvern Armor: Maximum amount of upgrade points" = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                    };
                    "Wyvern Armor: Maximum amount of upgrades" = lib.mkOption {
                      type = lib.types.int;
                      default = 24;
                    };
                  };
                };
              };
              tools = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "Draconic Flux Capacitor: Maximum amount of upgrade points" = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                    };
                    "Draconic Flux Capacitor: Maximum amount of upgrades" = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                    "Draconic Tools: Maximum amount of upgrade points" = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                    };
                    "Draconic Tools: Maximum amount of upgrades" = lib.mkOption {
                      type = lib.types.int;
                      default = 25;
                    };
                    "Wyvern Flux Capacitor: Maximum amount of upgrade points" = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                    };
                    "Wyvern Flux Capacitor: Maximum amount of upgrades" = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                    "Wyvern Tools: Maximum amount of upgrade points" = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                    };
                    "Wyvern Tools: Maximum amount of upgrades" = lib.mkOption {
                      type = lib.types.int;
                      default = 18;
                    };
                  };
                };
              };
              weapons = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "Draconic Bow: Maximum amount of upgrade points" = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                    };
                    "Draconic Bow: Maximum amount of upgrades" = lib.mkOption {
                      type = lib.types.int;
                      default = 25;
                    };
                    "Draconic Weapons: Maximum amount of upgrade points" = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                    };
                    "Draconic Weapons: Maximum amount of upgrades" = lib.mkOption {
                      type = lib.types.int;
                      default = 25;
                    };
                    "Wyvern Bow: Maximum amount of upgrade points" = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                    };
                    "Wyvern Bow: Maximum amount of upgrades" = lib.mkOption {
                      type = lib.types.int;
                      default = 14;
                    };
                    "Wyvern Weapons: Maximum amount of upgrade points" = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                    };
                    "Wyvern Weapons: Maximum amount of upgrades" = lib.mkOption {
                      type = lib.types.int;
                      default = 15;
                    };
                  };
                };
              };
              machines = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "Advanced Energy Device (Relay/Transceiver): Linking range" = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                    };
                    "Energy Device (Relay/Transceiver): Linking range" = lib.mkOption {
                      type = lib.types.int;
                      default = 25;
                    };
                    "Mob Grinder: Use Looting enchantment" = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    "Multiblock Energy Storage: Main block of structure" = lib.mkOption {
                      type = lib.types.str;
                      default = "Avaritia:Resource_Block";
                      description = "WARNING! Changing of this value will replace blocks of all existing Energy Storage Multiblocks!";
                    };
                    "Multiblock Energy Storage: Metadata of main block of structure" = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                      description = "WARNING! Changing of this value will replace blocks of all existing Energy Storage Multiblocks!";
                    };
                    "Multiblock Energy Storage: Metadata of outer block of structure" = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                      description = "WARNING! Changing of this value will replace blocks of all existing Energy Storage Multiblocks!";
                    };
                    "Multiblock Energy Storage: Outer block of structure" = lib.mkOption {
                      type = lib.types.str;
                      default = "DraconicEvolution:draconium";
                      description = "WARNING! Changing of this value will replace blocks of all existing Energy Storage Multiblocks!";
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
