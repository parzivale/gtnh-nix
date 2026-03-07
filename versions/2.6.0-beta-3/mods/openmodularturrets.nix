{lib, ...}: {
  openmodularturrets = lib.mkOption {
    description = "openmodularturrets configuration (./config/openmodularturrets.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/openmodularturrets.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        addons = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              recycler = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Recycler ammo add % chance";
              };
              redstone = lib.mkOption {
                type = lib.types.int;
                default = 1550;
                description = "Generates RF from redstone dust/blocks in turret's inventory";
              };
              solar = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Generates specified RF every tick in sunlight";
              };
            };
          };
        };
        expanders = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Power expander tier five capacity" = lib.mkOption {
                type = lib.types.int;
                default = 5000000;
              };
              "Power expander tier four capacity" = lib.mkOption {
                type = lib.types.int;
                default = 250000;
              };
              "Power expander tier one capacity" = lib.mkOption {
                type = lib.types.int;
                default = 250;
              };
              "Power expander tier three capacity" = lib.mkOption {
                type = lib.types.int;
                default = 75000;
              };
              "Power expander tier two capacity" = lib.mkOption {
                type = lib.types.int;
                default = 25000;
              };
            };
          };
        };
        globaltargetingparameters = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Can turrets attack mobs?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Can turrets attack neutrals?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Can turrets attack players?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "If a turret does not have a target, how many ticks should it wait before looking again?" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
            };
          };
        };
        miscellaneous = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Are turrets/turret bases breakable by anyone?" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Can OPs access all turrets?" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Can rockets fired by the rocket launcher turret home on targets ?" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Can rockets fired by the rocket launcher turret hurt the Ender Dragon?" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Can turrets damage their trusted players when they accidentally hit them?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable/Disable turret alarm sound. True=enabled, false=disabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Should turret bases be camouflage-able with normal blocks?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Should turret warn message be displayed?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Should we generate dungeon loot?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Turret sound volume percentage (Between 0 - 100)" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Which recipes should we do? (auto, enderio, thermalexpansion, mekanism, vanilla)" = lib.mkOption {
                type = lib.types.str;
                default = "auto";
              };
              warningDistance = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Distance outside the max range of a turret players should be warned";
              };
            };
          };
        };
        modcompatability = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Can turrets be powered with EU?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "EU to RF Ratio" = lib.mkOption {
                type = lib.types.float;
                default = 8.0;
              };
              "Enable offline mode support?(warning, makes turrets fairly unsafe)" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        modcompatibility = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable IGW Mod notification" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "How much essentia the Potentia Addon can store" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "Potentia Addons' RF conversion ratio per 1 essentia" = lib.mkOption {
                type = lib.types.int;
                default = 500;
              };
              "Should we enable items that integrate with ComputerCraft/OpenComputers?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Should we enable items that integrate with Thaumcraft?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        turretbasetierfive = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BlastResistance = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              MaxCharge = lib.mkOption {
                type = lib.types.int;
                default = 10000000;
              };
              MaxIo = lib.mkOption {
                type = lib.types.int;
                default = 5000;
              };
            };
          };
        };
        turretbasetierfour = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BlastResistance = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              MaxCharge = lib.mkOption {
                type = lib.types.int;
                default = 500000;
              };
              MaxIo = lib.mkOption {
                type = lib.types.int;
                default = 1500;
              };
            };
          };
        };
        turretbasetierone = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BlastResistance = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              MaxCharge = lib.mkOption {
                type = lib.types.int;
                default = 500;
              };
              MaxIo = lib.mkOption {
                type = lib.types.int;
                default = 50;
              };
            };
          };
        };
        turretbasetierthree = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BlastResistance = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              MaxCharge = lib.mkOption {
                type = lib.types.int;
                default = 150000;
              };
              MaxIo = lib.mkOption {
                type = lib.types.int;
                default = 500;
              };
            };
          };
        };
        turretbasetiertwo = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BlastResistance = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              MaxCharge = lib.mkOption {
                type = lib.types.int;
                default = 50000;
              };
              MaxIo = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
            };
          };
        };
        turretdisposable = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Accuracy = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "Value between 0 - 100, where 0 will miss 0% of the time over a distance of 10 blocks, subject to standard deviation.";
              };
              Damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Measured in half-hearts";
              };
              Enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enabled?";
              };
              FireRateCooldown = lib.mkOption {
                type = lib.types.int;
                default = 25;
                description = "Number of ticks between firings";
              };
              PowerUsage = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "RF used per shot";
              };
              Range = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Turret range, in blocks";
              };
            };
          };
        };
        turretgrenade = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Accuracy = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "Value between 0 - 100, where 0 will miss 0% of the time over a distance of 10 blocks, subject to standard deviation.";
              };
              Damage = lib.mkOption {
                type = lib.types.int;
                default = 18;
                description = "Measured in half-hearts";
              };
              Enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enabled?";
              };
              FireRateCooldown = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "Number of ticks between firings";
              };
              PowerUsage = lib.mkOption {
                type = lib.types.int;
                default = 3000;
                description = "RF used per shot";
              };
              Range = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Turret range, in blocks";
              };
            };
          };
        };
        turretincendiary = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Accuracy = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "Value between 0 - 100, where 0 will miss 0% of the time over a distance of 10 blocks, subject to standard deviation.";
              };
              Damage = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Measured in half-hearts";
              };
              Enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enabled?";
              };
              FireRateCooldown = lib.mkOption {
                type = lib.types.int;
                default = 25;
                description = "Number of ticks between firings";
              };
              PowerUsage = lib.mkOption {
                type = lib.types.int;
                default = 250;
                description = "RF used per shot";
              };
              Range = lib.mkOption {
                type = lib.types.int;
                default = 12;
                description = "Turret range, in blocks";
              };
            };
          };
        };
        turretlaser = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Accuracy = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Value between 0 - 100, where 0 will miss 0% of the time over a distance of 10 blocks, subject to standard deviation.";
              };
              Damage = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Measured in half-hearts";
              };
              Enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enabled?";
              };
              FireRateCooldown = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Number of ticks between firings";
              };
              PowerUsage = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "RF used per shot";
              };
              Range = lib.mkOption {
                type = lib.types.int;
                default = 25;
                description = "Turret range, in blocks";
              };
            };
          };
        };
        turretmachinegun = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Accuracy = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "Value between 0 - 100, where 0 will miss 0% of the time over a distance of 10 blocks, subject to standard deviation.";
              };
              Damage = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Measured in half-hearts";
              };
              Enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enabled?";
              };
              FireRateCooldown = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "Number of ticks between firings";
              };
              PowerUsage = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "RF used per shot";
              };
              Range = lib.mkOption {
                type = lib.types.int;
                default = 18;
                description = "Turret range, in blocks";
              };
            };
          };
        };
        turretpotatocannon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Accuracy = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "Value between 0 - 100, where 0 will miss 0% of the time over a distance of 10 blocks, subject to standard deviation.";
              };
              Damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
                description = "Measured in half-hearts";
              };
              Enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enabled?";
              };
              FireRateCooldown = lib.mkOption {
                type = lib.types.int;
                default = 35;
                description = "Number of ticks between firings";
              };
              PowerUsage = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "RF used per shot";
              };
              Range = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "Turret range, in blocks";
              };
            };
          };
        };
        turretrailgun = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Accuracy = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Value between 0 - 100, where 0 will miss 0% of the time over a distance of 10 blocks, subject to standard deviation.";
              };
              Damage = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "Measured in half-hearts";
              };
              Enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enabled?";
              };
              FireRateCooldown = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Number of ticks between firings";
              };
              PowerUsage = lib.mkOption {
                type = lib.types.int;
                default = 25000;
                description = "RF used per shot";
              };
              Range = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "Turret range, in blocks";
              };
            };
          };
        };
        turretrelativistic = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Accuracy = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Value between 0 - 100, where 0 will miss 0% of the time over a distance of 10 blocks, subject to standard deviation.";
              };
              Damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Measured in half-hearts";
              };
              Enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enabled?";
              };
              FireRateCooldown = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Number of ticks between firings";
              };
              PowerUsage = lib.mkOption {
                type = lib.types.int;
                default = 5000;
                description = "RF used per shot";
              };
              Range = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Turret range, in blocks";
              };
            };
          };
        };
        turretrocket = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Accuracy = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Value between 0 - 100, where 0 will miss 0% of the time over a distance of 10 blocks, subject to standard deviation.";
              };
              Damage = lib.mkOption {
                type = lib.types.int;
                default = 25;
                description = "Measured in half-hearts";
              };
              Enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enabled?";
              };
              FireRateCooldown = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "Number of ticks between firings";
              };
              PowerUsage = lib.mkOption {
                type = lib.types.int;
                default = 5000;
                description = "RF used per shot";
              };
              Range = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "Turret range, in blocks";
              };
            };
          };
        };
        turretteleporter = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Accuracy = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Value between 0 - 100, where 0 will miss 0% of the time over a distance of 10 blocks, subject to standard deviation.";
              };
              Damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Measured in half-hearts";
              };
              Enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enabled?";
              };
              FireRateCooldown = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Number of ticks between firings";
              };
              PowerUsage = lib.mkOption {
                type = lib.types.int;
                default = 15000;
                description = "RF used per shot";
              };
              Range = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Turret range, in blocks";
              };
            };
          };
        };
        upgrades = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              accuracy = lib.mkOption {
                type = lib.types.float;
                default = 0.2;
                description = "Increases accuracy linearly";
              };
              efficiency = lib.mkOption {
                type = lib.types.float;
                default = 0.08;
                description = "Reduces power consumption linearly";
              };
              range = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Increases range in blocks linearly";
              };
              rateOfFire = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
                description = "It's a double for some reason, reduces cooldown";
              };
            };
          };
        };
      };
    };
  };
}
