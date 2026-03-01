{lib, ...}: {
  biomeweights = lib.mkOption {
    description = "biomeweights configuration (./config/biomesoplenty/biomeweights.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/biomesoplenty/biomeweights.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "end biome weights" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Spectral Garden" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
            };
          };
        };
        "nether biome weights" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Boneyard = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Corrupted Sands" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Phantasmagoric Inferno" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Polar Chasm" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              Undergarden = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Visceral Heap" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
            };
          };
        };
        "overworld biome weights" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Alps = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              Arctic = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              "Bamboo Forest" = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              Bayou = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              Bog = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Boreal Forest" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              Brushland = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              Canyon = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              Chaparral = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Cherry Blossom Grove" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Coniferous Forest" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              Crag = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              "Dead Forest" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Dead Swamp" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Deciduous Forest" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Dense Forest" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Eucalyptus Forest" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              Fen = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Flower Field" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Frost Forest" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Fungi Forest" = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              Garden = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              Grassland = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              Grove = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              Heathland = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              Highland = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Jade Cliffs" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Land of Lakes" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Lavender Fields" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Lush Desert" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Lush Swamp" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Maple Woods" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              Marsh = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              Meadow = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              Moor = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              Mountain = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Mystic Grove" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              "Ominous Woods" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              Orchard = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              "Origin Valley" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              Outback = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              Prairie = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              Rainforest = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Redwood Forest" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Sacred Springs" = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              "Seasonal Forest" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              Shield = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              Shrubland = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              Sludgepit = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Snowy Coniferous Forest" = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              Steppe = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Temperate Rainforest" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              Thicket = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Tropical Rainforest" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              Tundra = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              Wasteland = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              Wetland = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              Woodland = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Xeric Shrubland" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
            };
          };
        };
      };
    };
  };
  ids = lib.mkOption {
    description = "ids configuration (./config/biomesoplenty/ids.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/biomesoplenty/ids.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "biome ids" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Alps Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Alps ID" = lib.mkOption {
                type = lib.types.int;
                default = 41;
              };
              "Arctic ID" = lib.mkOption {
                type = lib.types.int;
                default = 42;
              };
              "Bamboo Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 43;
              };
              "Bayou ID" = lib.mkOption {
                type = lib.types.int;
                default = 44;
              };
              "Bog ID" = lib.mkOption {
                type = lib.types.int;
                default = 45;
              };
              "Boneyard ID" = lib.mkOption {
                type = lib.types.int;
                default = 128;
              };
              "Boreal Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 47;
              };
              "Brushland ID" = lib.mkOption {
                type = lib.types.int;
                default = 48;
              };
              "Canyon ID" = lib.mkOption {
                type = lib.types.int;
                default = 49;
              };
              "Canyon Ravine ID" = lib.mkOption {
                type = lib.types.int;
                default = 50;
              };
              "Chaparral ID" = lib.mkOption {
                type = lib.types.int;
                default = 51;
              };
              "Cherry Blossom Grove ID" = lib.mkOption {
                type = lib.types.int;
                default = 52;
              };
              "Coniferous Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 53;
              };
              "Coral Reef ID" = lib.mkOption {
                type = lib.types.int;
                default = 54;
              };
              "Corrupted Sands ID" = lib.mkOption {
                type = lib.types.int;
                default = 136;
              };
              "Crag ID" = lib.mkOption {
                type = lib.types.int;
                default = 56;
              };
              "Dead Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 57;
              };
              "Dead Swamp ID" = lib.mkOption {
                type = lib.types.int;
                default = 58;
              };
              "Deciduous Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 59;
              };
              "Dense Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 123;
              };
              "Dry River ID" = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              "Eucalyptus Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 61;
              };
              "Fen ID" = lib.mkOption {
                type = lib.types.int;
                default = 62;
              };
              "Flower Field ID" = lib.mkOption {
                type = lib.types.int;
                default = 63;
              };
              "Frost Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 64;
              };
              "Fungi Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 65;
              };
              "Garden ID" = lib.mkOption {
                type = lib.types.int;
                default = 66;
              };
              "Glacier ID" = lib.mkOption {
                type = lib.types.int;
                default = 67;
              };
              "Grassland ID" = lib.mkOption {
                type = lib.types.int;
                default = 68;
              };
              "Grove ID" = lib.mkOption {
                type = lib.types.int;
                default = 69;
              };
              "Heathland ID" = lib.mkOption {
                type = lib.types.int;
                default = 70;
              };
              "Highland ID" = lib.mkOption {
                type = lib.types.int;
                default = 71;
              };
              "Jade Cliffs ID" = lib.mkOption {
                type = lib.types.int;
                default = 72;
              };
              "Kelp Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 73;
              };
              "Land of Lakes ID" = lib.mkOption {
                type = lib.types.int;
                default = 74;
              };
              "Land of Lakes Marsh ID" = lib.mkOption {
                type = lib.types.int;
                default = 75;
              };
              "Lavender Fields ID" = lib.mkOption {
                type = lib.types.int;
                default = 76;
              };
              "Lush Desert ID" = lib.mkOption {
                type = lib.types.int;
                default = 77;
              };
              "Lush River ID" = lib.mkOption {
                type = lib.types.int;
                default = 78;
              };
              "Lush Swamp ID" = lib.mkOption {
                type = lib.types.int;
                default = 79;
              };
              "Mangrove ID" = lib.mkOption {
                type = lib.types.int;
                default = 80;
              };
              "Maple Woods ID" = lib.mkOption {
                type = lib.types.int;
                default = 81;
              };
              "Marsh ID" = lib.mkOption {
                type = lib.types.int;
                default = 82;
              };
              "Meadow Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 83;
              };
              "Meadow ID" = lib.mkOption {
                type = lib.types.int;
                default = 84;
              };
              "Moor ID" = lib.mkOption {
                type = lib.types.int;
                default = 85;
              };
              "Mountain ID" = lib.mkOption {
                type = lib.types.int;
                default = 86;
              };
              "Mystic Grove ID" = lib.mkOption {
                type = lib.types.int;
                default = 87;
              };
              "Oasis ID" = lib.mkOption {
                type = lib.types.int;
                default = 88;
              };
              "Ominous Woods ID" = lib.mkOption {
                type = lib.types.int;
                default = 89;
              };
              "Orchard ID" = lib.mkOption {
                type = lib.types.int;
                default = 90;
              };
              "Origin Valley ID" = lib.mkOption {
                type = lib.types.int;
                default = 91;
              };
              "Outback ID" = lib.mkOption {
                type = lib.types.int;
                default = 92;
              };
              "Phantasmagoric Inferno ID" = lib.mkOption {
                type = lib.types.int;
                default = 137;
              };
              "Polar Chasm ID" = lib.mkOption {
                type = lib.types.int;
                default = 94;
              };
              "Prairie ID" = lib.mkOption {
                type = lib.types.int;
                default = 95;
              };
              "Quagmire ID" = lib.mkOption {
                type = lib.types.int;
                default = 96;
              };
              "Rainforest ID" = lib.mkOption {
                type = lib.types.int;
                default = 97;
              };
              "Redwood Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 98;
              };
              "Sacred Springs ID" = lib.mkOption {
                type = lib.types.int;
                default = 99;
              };
              "Scrubland ID" = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              "Seasonal Forest Clearing ID" = lib.mkOption {
                type = lib.types.int;
                default = 101;
              };
              "Seasonal Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 102;
              };
              "Shield ID" = lib.mkOption {
                type = lib.types.int;
                default = 103;
              };
              "Shrubland ID" = lib.mkOption {
                type = lib.types.int;
                default = 104;
              };
              "Silkglades ID" = lib.mkOption {
                type = lib.types.int;
                default = 105;
              };
              "Sludgepit ID" = lib.mkOption {
                type = lib.types.int;
                default = 106;
              };
              "Snowy Coniferous Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 107;
              };
              "Spectral Garden ID" = lib.mkOption {
                type = lib.types.int;
                default = 108;
              };
              "Spruce Woods ID" = lib.mkOption {
                type = lib.types.int;
                default = 109;
              };
              "Steppe ID" = lib.mkOption {
                type = lib.types.int;
                default = 110;
              };
              "Temperate Rainforest ID" = lib.mkOption {
                type = lib.types.int;
                default = 111;
              };
              "Thicket ID" = lib.mkOption {
                type = lib.types.int;
                default = 112;
              };
              "Tropical Rainforest ID" = lib.mkOption {
                type = lib.types.int;
                default = 113;
              };
              "Tropics ID" = lib.mkOption {
                type = lib.types.int;
                default = 114;
              };
              "Tundra ID" = lib.mkOption {
                type = lib.types.int;
                default = 115;
              };
              "Undergarden ID" = lib.mkOption {
                type = lib.types.int;
                default = 138;
              };
              "Visceral Heap ID" = lib.mkOption {
                type = lib.types.int;
                default = 117;
              };
              "Volcano ID" = lib.mkOption {
                type = lib.types.int;
                default = 118;
              };
              "Wasteland ID" = lib.mkOption {
                type = lib.types.int;
                default = 119;
              };
              "Wetland ID" = lib.mkOption {
                type = lib.types.int;
                default = 120;
              };
              "Woodland ID" = lib.mkOption {
                type = lib.types.int;
                default = 121;
              };
              "Xeric Shrubland ID" = lib.mkOption {
                type = lib.types.int;
                default = 122;
              };
            };
          };
        };
        "potion auto assign" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Potion Auto Assign" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        "potions ids" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Paralysis Potion ID" = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              "Possession Potion ID" = lib.mkOption {
                type = lib.types.int;
                default = 26;
              };
            };
          };
        };
      };
    };
  };
  terraingen = lib.mkOption {
    description = "terraingen configuration (./config/biomesoplenty/terraingen.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/biomesoplenty/terraingen.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "biomes o' plenty world type settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Biome Size" = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Default World Type has 4. Large Biomes World Type has 6.";
              };
              "Landmass Percentage" = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Requires ocean filler to be disabled. In Vanilla it is set to 10. Takes values from 0 to 100.";
              };
              OceanFiller = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fills the ocean with land biomes if there is an excessive amount. This must be disabled to use the landmass percentage";
              };
              OreGeneration = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable or Enable all BoP ore generation.";
              };
              genAmberOre = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "One by one.";
              };
              genAmethystOre = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              genMalachiteOre = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              genPeridotOre = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              genRubyOre = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              genSapphireOre = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              genTanzaniteOre = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              genTopazOre = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              genWaspHives = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable or Enable wasp hives in the Nether.";
              };
            };
          };
        };
      };
    };
  };
}
