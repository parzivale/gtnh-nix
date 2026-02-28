{lib, ...}: {
  EMT = lib.mkOption {
    description = "EMT configuration (./config/EMT.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/EMT.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "essentia generator outputs" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Aer Output" = lib.mkOption {
                type = lib.types.int;
                default = 15000;
              };
              "Aqua Output" = lib.mkOption {
                type = lib.types.int;
                default = 5000;
              };
              "Ignis Output" = lib.mkOption {
                type = lib.types.int;
                default = 20000;
              };
              "Ordo Output" = lib.mkOption {
                type = lib.types.int;
                default = 16000;
              };
              "Output Cap" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Perditio Output" = lib.mkOption {
                type = lib.types.int;
                default = 10000;
              };
              "Terra Output" = lib.mkOption {
                type = lib.types.int;
                default = 2000;
              };
            };
          };
        };
        "numeric values" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Aer generator" = lib.mkOption {
                type = lib.types.int;
                default = 300;
              };
              "Arbor generator" = lib.mkOption {
                type = lib.types.int;
                default = 450;
              };
              "Armor Charging Ring production" = lib.mkOption {
                type = lib.types.int;
                default = 32;
                description = "Default is 32";
              };
              "Auram generator" = lib.mkOption {
                type = lib.types.int;
                default = 400;
              };
              "Compressed Solar Panel Output" = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "This is the number you have to modify if you want to make the Compressed Solar Panel yield more or less EU per tick. Really, you shouldn't touch that, since it's pretty balanced as it is.";
              };
              "Double Compressed Solar Panel Output" = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "This is the number you have to modify if you want to make the Double Compressed Solar Panel yield more or less EU per tick. Really, you shouldn't touch that, since it's pretty balanced as it is.";
              };
              "Essentia Generator Storage" = lib.mkOption {
                type = lib.types.int;
                default = 1000000;
                description = "This is the number you have to modify if you want to change the size of the internal buffer of the Essentia Generator";
              };
              "Essentia Generators draw rate" = lib.mkOption {
                type = lib.types.int;
                default = 120;
              };
              "Etheral Processor speed" = lib.mkOption {
                type = lib.types.int;
                default = 400;
                description = "Default is 400, the double of a regular furnace";
              };
              "Ethereal Processor Bonus" = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "This number is the chance of getting a Thaumium Ingot as a bonus when processing an item in the machine. It is 1 out of the number you will enter. The default is 1/10 chance.";
              };
              "Ignis generator" = lib.mkOption {
                type = lib.types.int;
                default = 400;
              };
              "Inventory Charging Ring production" = lib.mkOption {
                type = lib.types.int;
                default = 32;
                description = "Default is 32";
              };
              "Nano Boots of the Traveller Speed" = lib.mkOption {
                type = lib.types.float;
                default = 0.25;
                description = "Watch out, that goes up REALLY quickly.";
              };
              "Nano Boots of the Traveller jump" = lib.mkOption {
                type = lib.types.float;
                default = 0.6;
                description = "Watch out, that goes up REALLY quickly.";
              };
              "Nano Boots of the Traveller maximum healthy drop" = lib.mkOption {
                type = lib.types.float;
                default = 35.0;
                description = "Energy amount drained will tripled if player drops more than this amount of blocks";
              };
              "Nano Boots of the Traveller minimum drop" = lib.mkOption {
                type = lib.types.float;
                default = 6.0;
                description = "The distance allowed to fall without any damage";
              };
              "Octtouple Compressed Solar Panel Output" = lib.mkOption {
                type = lib.types.int;
                default = 100000000;
                description = "This is the number you have to modify if you want to make the Octtouple Compressed Solar Panel yield more or less EU per tick. Really, you shouldn't touch that, since it's pretty balanced as it is.";
              };
              "Potentia generator" = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              "Quadruple Compressed Solar Panel Output" = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "This is the number you have to modify if you want to make the Quadruple Compressed Solar Panel yield more or less EU per tick. Really, you shouldn't touch that, since it's pretty balanced as it is.";
              };
              "Quantum Boots of the Traveller Speed" = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
                description = "Watch out, that goes up REALLY quickly.";
              };
              "Quantum Boots of the Traveller jump" = lib.mkOption {
                type = lib.types.float;
                default = 0.9;
                description = "Watch out, that goes up REALLY quickly.";
              };
              "Quantum Boots of the Traveller maximum healthy drop" = lib.mkOption {
                type = lib.types.float;
                default = 100.0;
                description = "Energy amount drained will tripled if player drops more than this amount of blocks";
              };
              "Quantum Boots of the Traveller minimum drop" = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
                description = "The distance allowed to fall without any damage";
              };
              "Quintouple Compressed Solar Panel Output" = lib.mkOption {
                type = lib.types.int;
                default = 100000;
                description = "This is the number you have to modify if you want to make the Quintouple Compressed Solar Panel yield more or less EU per tick. Really, you shouldn't touch that, since it's pretty balanced as it is.";
              };
              "Septouple Compressed Solar Panel Output" = lib.mkOption {
                type = lib.types.int;
                default = 10000000;
                description = "This is the number you have to modify if you want to make the Septouple Compressed Solar Panel yield more or less EU per tick. Really, you shouldn't touch that, since it's pretty balanced as it is.";
              };
              "Sextouple Compressed Solar Panel Output" = lib.mkOption {
                type = lib.types.int;
                default = 1000000;
                description = "This is the number you have to modify if you want to make the Sextouple Compressed Solar Panel yield more or less EU per tick. Really, you shouldn't touch that, since it's pretty balanced as it is.";
              };
              "Triple Compressed Solar Panel Output" = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "This is the number you have to modify if you want to make the Triple Compressed Solar Panel yield more or less EU per tick. Really, you shouldn't touch that, since it's pretty balanced as it is.";
              };
              "Wand Charging Station Consumption" = lib.mkOption {
                type = lib.types.int;
                default = 50000;
                description = "This is the number you have to modify if you want to make the Industrial Wand Charging Station use more or less EU to charge 1 unit of Vis on your wand.";
              };
              "Wand Focus: Charge production" = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "Default is 64";
              };
              "Wand Focus: Wand Charging Cost" = lib.mkOption {
                type = lib.types.int;
                default = 40000;
                description = "Default is 40000";
              };
              "aID offset for Gregetch Machinery" = lib.mkOption {
                type = lib.types.int;
                default = 12983;
                description = "This Mod will use 17 IDs, do not change if you dont know what you are doing!";
              };
            };
          };
        };
        "random configs" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Clear Amber/Cinnabar Macerating" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This is here because of conflicts between mods that add the same input and different outputs";
              };
              "Disable One Ring in dungeon chests" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "There is a recipe to get this item.";
              };
              "Disable nightvision helmets" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "This was added because of mods making you totally blind if using nightvision. For example, enable that when in the Deep Dark.";
              };
              "Disable smoke effect for boots" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "This effect only appears when the player isn't on the ground";
              };
              "Enable capes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This config option is to enable or disable capes for people who have them. Seriously, you shouldn't touch that unless you have another cape and it conflicts with it.";
              };
              "Enable enchanting tools" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Warning: the enchantability is low.";
              };
              "Impact of rain" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "The impact of rain on all wings";
              };
              "One Ring spawning chance" = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "If you have a lot of mods adding dungeon loot, you should definetely increase this";
              };
              "Tainted Mjolnir spawning change" = lib.mkOption {
                type = lib.types.int;
                default = 25;
                description = "If you have a lot of mods adding dungeon loot, you should definetely increase this";
              };
              "Tools for Arcane Bore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "This will augment the durablilty of the tools, and will also decrease the EU cost to 1. The tools should have the same number of uses than before.";
              };
              "White List for Ethereal Processor" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "ore" "cluster" ];
                description = "The allowed ore dictionary prefix for Ethereal Processor.";
              };
            };
          };
        };
        research = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Aer Generator" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Air Solar Panels" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Arbor Generator" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Armor Charging Ring" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Auram Generator" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Chainsaw of the Stream" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Compressed Solars" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Diamond Omnitool" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Drill of the Rockbreaker" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Earth Solar Panels" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Electric Boots of the Traveller" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Electric Googles of Revealing" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Electric Hoe of Growth" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Electric Scribing Tools" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "EnergyBall Focus" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Entropy Solar Panels" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ethereal Processor" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Explosion Focus" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Fire Solar Panels" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ignis Generator" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Industrial Wand Charging Station" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Infused Quantum Chestplate" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory Charging Ring" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Kris-tmas Focus" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Lucrum Generator" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Maintenance Focus" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Mjolnir = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Nano Boots of the Traveller" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Nanosuit Googles of Revealing" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Nanosuit Wings" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Omnitool = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Order Solar Panels" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Portable Node" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Potentia Generator" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Quantum Boots of the Traveller" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Quantum Googles of Revealing" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Quantum Wings" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Saxum Generator" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Shield Block" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Shield Focus" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Solar Helmet of Revealing" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Supercharged Mjolnir" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumium Chainsaw" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumium Drill" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumium Omnitool" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumium Reinforced Wings" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Tiny Piles of Uranium" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UU-Mater Infusion" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Wand Focus: Charging" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Wand Focus: Wand Charging" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Water Solar Panels" = lib.mkOption {
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
