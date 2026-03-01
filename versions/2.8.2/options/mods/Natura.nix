{lib, ...}: {
  Natura = lib.mkOption {
    description = "Natura configuration (./config/Natura.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/Natura.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        disabler = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Drop barley seeds from grass" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Drop cotton seeds from grass" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Heatscar Spiders" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Imps" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Nitro Creepers" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable wheat to flour recipe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Generate Amaranth Trees" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Ash Clouds" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Barley Crops" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Blackberry Bushes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Blightberry Bushes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Bloodwood Trees" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Blue Glowshroom" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Bluebell Flowers" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Blueberry Bushes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Cotton Crops" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Dark Clouds" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Darkwood Trees" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Duskberry Bushes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Fusewood Trees" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Ghost Trees" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Glowshroom Trees" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Green Glowshroom" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Hopseed Trees" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Maloberry Bushes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Maple Trees" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Overworld Clouds" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Generate Purple Glowshroom" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Raspberry Bushes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Redwood Trees" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Saguaro Cactus" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Sakura Trees" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Silverbell Trees" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Skyberry Bushes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Small Eucalyptus Trees" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Stingberry Bushes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Sulfur Clouds" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Thornvines" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Tigerwood Trees" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Willow Trees" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Obelisks let players respawn in the Nether" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Override Nether" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Sea level" = lib.mkOption {
                type = lib.types.int;
                default = 64;
              };
            };
          };
        };
        "mob changes" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Maximum Baby Heatscar Spiders on Spider Death" = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              "Minimum Baby Heatscar Spiders on Spider Death" = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        "nether products" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable Blaze Hoppers" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Blaze Rails" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Flint And Blaze" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Nether Berries and Berry Bushes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Nether Glass" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Nether Wart Bags" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Nether Wood Tools" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Netherack Buttons" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Netherack Furnaces" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Netherack Levers" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Netherack Pressure Plates" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Obelisks" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Quartz Tools" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        "overworld products" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable Berries and Berry Bushes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Bonemeal Bags" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Cactus Juice" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Seed Bags" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        retrogen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Retroactive Generation" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        "wood products" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable Wooden Bookshevles" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Wooden Buttons" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Wooden Doors" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Wooden Fence Gates" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Wooden Fences" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Wooden Pressure Plates" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Wooden Slabs" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Wooden Stairs" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Wooden Trapdoors" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Wooden Workbenches" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        worldgen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Amaranth Tree Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              "Ash Cloud Spawn Height" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Ash Cloud Spawn Range" = lib.mkOption {
                type = lib.types.int;
                default = 78;
              };
              "Ash Cloud Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              "Blackberry Spawn Range" = lib.mkOption {
                type = lib.types.int;
                default = 64;
              };
              "Blackberry Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 48;
              };
              "Blightberry Spawn Range" = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              "Blightberry Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 18;
              };
              "Blood Tree Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 14;
              };
              "Blueberry Spawn Range" = lib.mkOption {
                type = lib.types.int;
                default = 64;
              };
              "Blueberry Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 34;
              };
              "Bush Tree Spawn Range" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "Bush Tree Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Cloud Spawn Height" = lib.mkOption {
                type = lib.types.int;
                default = 192;
              };
              "Cloud Spawn Range" = lib.mkOption {
                type = lib.types.int;
                default = 48;
              };
              "Cloud Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Dark Cloud Spawn Density" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Dark Cloud Spawn MinX" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Dark Cloud Spawn Range" = lib.mkOption {
                type = lib.types.int;
                default = 256;
              };
              "Darkwood Tree Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Duskberry Spawn Range" = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              "Duskberry Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 18;
              };
              "Fusewood Tree Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 50;
              };
              "Ghostwood Tree Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Maloberry Spawn Range" = lib.mkOption {
                type = lib.types.int;
                default = 64;
              };
              "Maloberry Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Maple Tree Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 34;
              };
              "Raspberry Spawn Range" = lib.mkOption {
                type = lib.types.int;
                default = 64;
              };
              "Raspberry Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              "Redwood Tree Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              "Saguaro Cactus Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Sakura Tree Spawn Range" = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
              "Sakura Tree Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Silverbell Tree Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 70;
              };
              "Skyberry Spawn Range" = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              "Skyberry Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 18;
              };
              "Small Eucalyptus Tree Spawn Range" = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
              "Small Eucalyptus Tree Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              "Stingberry Spawn Range" = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              "Stingberry Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 18;
              };
              "Sulfur Cloud Spawn Height" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Sulfur Cloud Spawn Range" = lib.mkOption {
                type = lib.types.int;
                default = 78;
              };
              "Sulfur Cloud Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              "Thornvines Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Tigerwood Tree Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              "Willow Tree Spawn Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "dimension blacklist(clouds)" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ ];
              };
              "dimension blacklist(dark clouds)" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ ];
              };
              "dimension blacklist(sulfur clouds)" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ ];
              };
            };
          };
        };
      };
    };
  };
}
