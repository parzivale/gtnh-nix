{lib, ...}: {
  CCDimensions = lib.mkOption {
    description = "CCDimensions configuration (./config/ClimateControl/CCDimensions.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ClimateControl/CCDimensions.cfg";
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
              excludeDimensionIDs = lib.mkOption {
                type = lib.types.str;
                default = "-1,1";
                description = "Comma-separated list of dimension IDs, used only if include list is *";
              };
              includeDimensionIDs = lib.mkOption {
                type = lib.types.str;
                default = "0";
                description = "Comma-separated list of dimension IDs, put * to use exclude list";
              };
            };
          };
        };
      };
    };
  };
  ThaumcraftInCC = lib.mkOption {
    description = "ThaumcraftInCC configuration (./config/ClimateControl/ThaumcraftInCC.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ClimateControl/ThaumcraftInCC.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "assorted parameters" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ThaumcraftBiomesOn = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ThaumcraftInNewDimensons = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        thaumcraftbiomeclimates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Eerie climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Magical Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Tainted climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
            };
          };
        };
        thaumcraftbiomeincidences = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Eerie Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              "Magical Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              "Tainted Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        thaumcraftbiomevillages = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Eerie hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Magical Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Tainted hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
      };
    };
  };
  biomesoplentyInCC = lib.mkOption {
    description = "biomesoplentyInCC configuration (./config/ClimateControl/biomesoplentyInCC.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ClimateControl/biomesoplentyInCC.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "assorted parameters" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BoPBiomesOn = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BoPInNewDimensons = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        bopclimates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Alps Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "Snowy";
              };
              "Alps climate" = lib.mkOption {
                type = lib.types.str;
                default = "Snowy";
              };
              "Arctic climate" = lib.mkOption {
                type = lib.types.str;
                default = "Snowy";
              };
              "Bamboo Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Bayou climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Bog climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Boneyard climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Boreal Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Brushland climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Canyon Ravine (Sub-Biome) climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Canyon Ravine climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Canyon climate" = lib.mkOption {
                type = lib.types.str;
                default = "HOT";
              };
              "Chaparral climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Cherry Blossom Grove climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Coniferous Forest (Snow) climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Coniferous Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Coral Reef climate" = lib.mkOption {
                type = lib.types.str;
                default = "OCEAN";
              };
              "Corrupted Sands (Nether) climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Corrupted Sands climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Crag climate" = lib.mkOption {
                type = lib.types.str;
                default = "MEDIUM";
              };
              "Dead Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Dead Swamp climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Deciduous Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Dense Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Dry River climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Eucalyptus Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Fen climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Flower Field climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Frost Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "SNOWY";
              };
              "Fungi Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Garden climate" = lib.mkOption {
                type = lib.types.str;
                default = "MEDIUM";
              };
              "Glacier climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Grassland climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Gravel Beach climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Grove climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Heathland climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Highland climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Jade Cliffs climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Kelp Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "OCEAN";
              };
              "Land of Lakes Marsh climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Land of Lakes climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Lavender Fields climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Lush Desert climate" = lib.mkOption {
                type = lib.types.str;
                default = "HOT";
              };
              "Lush River climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Lush Swamp climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Mangrove climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Maple Woods climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Marsh climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Meadow Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Meadow climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Moor climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Mountain climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Mystic Grove climate" = lib.mkOption {
                type = lib.types.str;
                default = "MEDIUM";
              };
              "Oasis climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Ominous Woods climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Orchard climate" = lib.mkOption {
                type = lib.types.str;
                default = "MEDIUM";
              };
              "Origin Valley climate" = lib.mkOption {
                type = lib.types.str;
                default = "MEDIUM";
              };
              "Outback climate" = lib.mkOption {
                type = lib.types.str;
                default = "HOT";
              };
              "Phantasmagoric Inferno climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Prairie climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Quagmire climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Rainforest climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Redwood Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Sacred Springs climate" = lib.mkOption {
                type = lib.types.str;
                default = "MEDIUM";
              };
              "Savanna Plateau (Sub-Biome) climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Savanna climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Scrubland climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Seasonal Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Seasonal Spruce Forest (Sub-Biome) climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Shield climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Shore climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Shrubland climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Silkglades climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Sludgepit climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Snowy Coniferous Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "SNOWY";
              };
              "Spruce Woods climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Steppe climate" = lib.mkOption {
                type = lib.types.str;
                default = "Cool";
              };
              "Temperate Rainforest climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Thicket climate" = lib.mkOption {
                type = lib.types.str;
                default = "COOL";
              };
              "Tropical Rainforest climate" = lib.mkOption {
                type = lib.types.str;
                default = "HOT";
              };
              "Tropics climate" = lib.mkOption {
                type = lib.types.str;
                default = "HOT";
              };
              "Tundra climate" = lib.mkOption {
                type = lib.types.str;
                default = "SNOWY";
              };
              "Undergarden climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Visceral Heap climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Volcano climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Wasteland climate" = lib.mkOption {
                type = lib.types.str;
                default = "HOT";
              };
              "Wetland climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Woodland climate" = lib.mkOption {
                type = lib.types.str;
                default = "WARM";
              };
              "Xeric Shrubland climate" = lib.mkOption {
                type = lib.types.str;
                default = "HOT";
              };
            };
          };
        };
        bopincidences = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Alps Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Alps Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Arctic Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Bamboo Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Bayou Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Bog Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Boreal Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Canyon Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Chaparral Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Cherry Blossom Grove Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              "Coniferous Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Coral Reef Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Crag Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              "Dead Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Dead Swamp Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Deciduous Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Dense Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Eucalyptus Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Fen Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Flower Field Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              "Frost Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Fungi Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              "Garden Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              "Grassland Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Grove Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Heathland Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Highland Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Jade Cliffs Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Kelp Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Land of Lakes Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Land of Lakes Marsh Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Lavender Fields Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              "Lush Desert Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              "Lush Swamp Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Mangrove Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Maple Woods Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Marsh Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Meadow Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Moor Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Mountain Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Mystic Grove Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              "Ominous Woods Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              "Orchard Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Origin Valley Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              "Outback Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Prairie Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Rainforest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Redwood Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Sacred Springs Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              "Seasonal Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Shield Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Shrubland Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Silkglades Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Sludgepit Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Snowy Coniferous Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Steppe Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Temperate Rainforest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Thicket Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Tropical Rainforest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Tropics Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Tundra Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Wasteland Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              "Wetland Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              "Woodland Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Xeric Shrubland Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
            };
          };
        };
        bopvillages = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Alps Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Alps hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Arctic hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Bamboo Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Bayou hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Bog hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Boneyard hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Boreal Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Brushland hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Canyon Ravine (Sub-Biome) hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Canyon Ravine hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Canyon hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Chaparral hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Cherry Blossom Grove hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Coniferous Forest (Snow) hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Coniferous Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Coral Reef hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Corrupted Sands (Nether) hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Corrupted Sands hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Crag hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Dead Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Dead Swamp hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Deciduous Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Dense Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Dry River hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Eucalyptus Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Fen hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Flower Field hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Frost Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Fungi Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Garden hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Glacier hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Grassland hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Gravel Beach hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Grove hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Heathland hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Highland hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Jade Cliffs hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Kelp Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Land of Lakes Marsh hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Land of Lakes hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Lavender Fields hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Lush Desert hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Lush River hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Lush Swamp hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mangrove hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Maple Woods hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Marsh hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Meadow Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Meadow hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Moor hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mountain hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mystic Grove hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Oasis hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ominous Woods hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Orchard hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Origin Valley hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Outback hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Phantasmagoric Inferno hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Prairie hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Quagmire hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Rainforest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Redwood Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Sacred Springs hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Savanna Plateau (Sub-Biome) hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Savanna hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Scrubland hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Seasonal Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Seasonal Spruce Forest (Sub-Biome) hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Shield hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Shore hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Shrubland hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Silkglades hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Sludgepit hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Snowy Coniferous Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Spruce Woods hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Steppe hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Temperate Rainforest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thicket hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Tropical Rainforest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Tropics hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Tundra hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Undergarden hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Visceral Heap hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Volcano hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Wasteland hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Wetland hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Woodland hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Xeric Shrubland hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
      };
    };
  };
  climatecontrol = lib.mkOption {
    description = "climatecontrol configuration (./config/climatecontrol.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/climatecontrol.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "assorted parameters" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0.5 generation" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use more random generators, better behaved rivers, and larger rare climates";
              };
              "1.6Compatibility" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Use 1.6 compatibility mode";
              };
              "Allow Derpy Islands" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "place little islands near shore rather than in deep ocean";
              };
              "Biome Size" = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Biome size, exponential: 4 is regular and 6 is large biomes";
              };
              "Mesas for mesa borders" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Use red sand mesa for mesa borders. False uses desert like vanilla";
              };
              "Mushroom Island Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "per thousand; vanilla is 10";
              };
              "No Generation Changes" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "generate as if CC weren't on; for loading pre-existing worlds or just preventing chunk boundaries";
              };
              NoBoPSubBiomes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "suppress Bop sub-biome generation";
              };
              PercentRiverReduction = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Percentage of rivers prevented; changes cause chunk boundaries at some rivers";
              };
              "Smoother Coastlines" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "increase smoothing steps; also shrinks unusual biomes some; changing produces occaisional chunk walls";
              };
              TestingMode = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "add testing routines and crash in suspicious circumstances";
              };
              VanillaBiomesOn = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              VanillaLandAndClimate = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Generate land masses and climate zones similar to vanilla 1.7";
              };
              WiderRivers = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "True for triple-width rivers";
              };
              alterBoPWorlds = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "impose Climate Control generation on the Biomes o' Plenty world type";
              };
              alterHighlandsWorlds = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "impose Climate Control generation on Highlands world types";
              };
              biomeRingsNotSaved = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "biomes not saved on edges; more than 3 has no effect; -1 deactivates saving biomes";
              };
              cacheSize = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Number of Chunk Biome layouts cached. Above 500 is ignored. 0 or below shuts off chunk info caching";
              };
              climateRingsNotSaved = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "climate not saved on edges; -1 deactivates saving climates";
              };
              controlVillageBiomes = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Have Climate Control set the biomes for village generation; may be incompatible with village mods";
              };
              externalBiomeNames = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Comma-delimited list of externalBiome Names. No quotes or line returnsYou will have to reload Minecraft after changing this.Names not in the list aren't removed from the configs but they have no effect";
              };
              forceStartContinent = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "force small continent near origin";
              };
              maxChasm = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
                description = "max height value for allowing rivers; 10.0 allows everything; 0.75 is plains but no hills";
              };
              rescueLimit = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Maximum Number of Rescue attempts. Negative numbers mean no limit";
              };
              subBiomeRingsNotSaved = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "subbiomes not saved on edges, default 3, -1 deactivates saving sub-biomes";
              };
              suppressInStandardWorlds = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "suppress Climate Control generation in default, large biomes, and amplified worlds";
              };
              wideBeaches = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "True for double-width beaches";
              };
            };
          };
        };
        "climate incidences" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Cool Zone Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "relative incidence of cool zones like forest/plains/hills/taiga/roofed forest";
              };
              "Hot Zone Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "relative incidence of hot zones like savanna/desert/plains/mesa";
              };
              "Snowy Zone Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "relative incidence of snowy zones";
              };
              "Warm Zone Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "relative incidence of warm zones like forest/plains/hills/jungle/swamp";
              };
            };
          };
        };
        "climate zone parameters" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Frozen Icecaps" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "True freezes oceans in snowy latitudes. Only used with latitudinal climates.";
              };
              "Half Zone Size" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "half the climate zone size from vanilla, unless quartering";
              };
              "Ice Mountains in Mountain Chains" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use Ice Mountains instead of Ice Plains in mountain chain areas";
              };
              "Mesas in Mountain Chains" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use Mesas as mountains in mountain chain areas";
              };
              "Mountains in Mountain Chains" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Place mountains in chains";
              };
              "Quarter Zone Size" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "quarter the climate zone size from vanilla";
              };
              "Random Biomes" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "ignore climate zones altogether";
              };
              bandedClimateOffset = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Number of climate zones to shift the band from the default of the warm - to - cool transition at 0. Positive numbers shift the bands up.";
              };
              bandedClimateWidth = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Width of banded climates (climate depends on latitude). 0 or less for normal rules. Width is in terms of climate zones, whatever they are";
              };
              xSpawnOffset = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "X offset for initial spawn search in blocks";
              };
              zSpawnOffset = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Z offset for initial spawn search in blocks";
              };
            };
          };
        };
        "ocean control parameters" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Incidence of Continents,Large" = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "frequency of large continent seeds, about 8000x16000";
              };
              "Incidence of Continents,Medium" = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "frequency of medium continent seeds, about 4000x8000";
              };
              "Incidence of Continents,Small" = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "frequency of small continent seeds, about 2000x4000";
              };
              "Incidence of Islands,Large" = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "frequency of large island seeds, about 500x1000";
              };
              "Incidence of Islands,Medium" = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "frequency of medium island seeds, about 250x500, but they tend to break up into archipelagos";
              };
              "Land Expansion Rounds" = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Rounds of continent and large island expansion in oceanic worlds (with separateLandmasses off). More makes continents larger and oceans narrower. Default is 1.";
              };
              SeparateLandmasses = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "True mostly stops landmasses merging.With default settings you will get an oceanic world if true and a continental world if false";
              };
            };
          };
        };
        oceanbiomeclimates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "DeepOcean climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEEP_OCEAN";
              };
              "Ocean climate" = lib.mkOption {
                type = lib.types.str;
                default = "OCEAN";
              };
            };
          };
        };
        oceanbiomeids = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "DeepOcean ID" = lib.mkOption {
                type = lib.types.int;
                default = 24;
              };
              "Ocean ID" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
            };
          };
        };
        oceanbiomeincidences = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "DeepOcean Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              "Ocean Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
            };
          };
        };
        oceanbiomevillages = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "DeepOcean hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ocean hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        vanillabiomeclimates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Birch Forest Hills M climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Birch Forest Hills climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Birch Forest M climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Birch Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "Warm";
              };
              "Cold Taiga Hills climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Cold Taiga M climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Cold Taiga climate" = lib.mkOption {
                type = lib.types.str;
                default = "Snowy";
              };
              "Desert Hills climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Desert M climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Desert climate" = lib.mkOption {
                type = lib.types.str;
                default = "Hot";
              };
              "Extreme Hills M climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Extreme Hills climate" = lib.mkOption {
                type = lib.types.str;
                default = "MEDIUM";
              };
              "Extreme Hills+ M climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Extreme Hills+ climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Flower Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Forest Hills climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "MEDIUM";
              };
              "Ice Mountains climate" = lib.mkOption {
                type = lib.types.str;
                default = "Snowy";
              };
              "Ice Plains Spikes climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Ice Plains climate" = lib.mkOption {
                type = lib.types.str;
                default = "Snowy";
              };
              "Jungle Hills climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Jungle M climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Jungle climate" = lib.mkOption {
                type = lib.types.str;
                default = "Warm";
              };
              "Mega Spruce Taiga climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Mega Taiga Hills climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Mega Taiga climate" = lib.mkOption {
                type = lib.types.str;
                default = "Cool";
              };
              "Mesa (Bryce) climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Mesa Plateau F M climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Mesa Plateau F climate" = lib.mkOption {
                type = lib.types.str;
                default = "Hot";
              };
              "Mesa Plateau M climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Mesa Plateau climate" = lib.mkOption {
                type = lib.types.str;
                default = "Hot";
              };
              "Mesa climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Mushroom Island climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Plains climate" = lib.mkOption {
                type = lib.types.str;
                default = "PLAINS";
              };
              "Roofed Forest M climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Roofed Forest climate" = lib.mkOption {
                type = lib.types.str;
                default = "Cool";
              };
              "Savanna M climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Savanna Plateau M climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Savanna Plateau climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Savanna climate" = lib.mkOption {
                type = lib.types.str;
                default = "Hot";
              };
              "Sunflower Plains climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Swampland M climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Swampland climate" = lib.mkOption {
                type = lib.types.str;
                default = "Warm";
              };
              "Taiga (snowless) M climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
              "Taiga (snowless) climate" = lib.mkOption {
                type = lib.types.str;
                default = "Cool";
              };
              "Taiga Hills climate" = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
              };
            };
          };
        };
        vanillabiomeids = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Birch Forest Hills ID" = lib.mkOption {
                type = lib.types.int;
                default = 28;
              };
              "Birch Forest Hills M ID" = lib.mkOption {
                type = lib.types.int;
                default = 156;
              };
              "Birch Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 27;
              };
              "Birch Forest M ID" = lib.mkOption {
                type = lib.types.int;
                default = 155;
              };
              "Cold Taiga Hills ID" = lib.mkOption {
                type = lib.types.int;
                default = 31;
              };
              "Cold Taiga ID" = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              "Cold Taiga M ID" = lib.mkOption {
                type = lib.types.int;
                default = 158;
              };
              "Desert Hills ID" = lib.mkOption {
                type = lib.types.int;
                default = 17;
              };
              "Desert ID" = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              "Desert M ID" = lib.mkOption {
                type = lib.types.int;
                default = 130;
              };
              "Extreme Hills ID" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              "Extreme Hills M ID" = lib.mkOption {
                type = lib.types.int;
                default = 131;
              };
              "Extreme Hills+ ID" = lib.mkOption {
                type = lib.types.int;
                default = 34;
              };
              "Extreme Hills+ M ID" = lib.mkOption {
                type = lib.types.int;
                default = 162;
              };
              "Flower Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 132;
              };
              "Forest Hills ID" = lib.mkOption {
                type = lib.types.int;
                default = 18;
              };
              "Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              "Ice Mountains ID" = lib.mkOption {
                type = lib.types.int;
                default = 13;
              };
              "Ice Plains ID" = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              "Ice Plains Spikes ID" = lib.mkOption {
                type = lib.types.int;
                default = 140;
              };
              "Jungle Hills ID" = lib.mkOption {
                type = lib.types.int;
                default = 22;
              };
              "Jungle ID" = lib.mkOption {
                type = lib.types.int;
                default = 21;
              };
              "Jungle M ID" = lib.mkOption {
                type = lib.types.int;
                default = 149;
              };
              "Mega Spruce Taiga ID" = lib.mkOption {
                type = lib.types.int;
                default = 160;
              };
              "Mega Taiga Hills ID" = lib.mkOption {
                type = lib.types.int;
                default = 33;
              };
              "Mega Taiga ID" = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
              "Mesa (Bryce) ID" = lib.mkOption {
                type = lib.types.int;
                default = 165;
              };
              "Mesa ID" = lib.mkOption {
                type = lib.types.int;
                default = 37;
              };
              "Mesa Plateau F ID" = lib.mkOption {
                type = lib.types.int;
                default = 38;
              };
              "Mesa Plateau F M ID" = lib.mkOption {
                type = lib.types.int;
                default = 166;
              };
              "Mesa Plateau ID" = lib.mkOption {
                type = lib.types.int;
                default = 39;
              };
              "Mesa Plateau M ID" = lib.mkOption {
                type = lib.types.int;
                default = 167;
              };
              "Mushroom Island ID" = lib.mkOption {
                type = lib.types.int;
                default = 14;
              };
              "Plains ID" = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              "Roofed Forest ID" = lib.mkOption {
                type = lib.types.int;
                default = 29;
              };
              "Roofed Forest M ID" = lib.mkOption {
                type = lib.types.int;
                default = 157;
              };
              "Savanna ID" = lib.mkOption {
                type = lib.types.int;
                default = 35;
              };
              "Savanna M ID" = lib.mkOption {
                type = lib.types.int;
                default = 163;
              };
              "Savanna Plateau ID" = lib.mkOption {
                type = lib.types.int;
                default = 36;
              };
              "Savanna Plateau M ID" = lib.mkOption {
                type = lib.types.int;
                default = 164;
              };
              "Sunflower Plains ID" = lib.mkOption {
                type = lib.types.int;
                default = 129;
              };
              "Swampland ID" = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              "Swampland M ID" = lib.mkOption {
                type = lib.types.int;
                default = 134;
              };
              "Taiga (snowless) ID" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Taiga (snowless) M ID" = lib.mkOption {
                type = lib.types.int;
                default = 133;
              };
              "Taiga Hills ID" = lib.mkOption {
                type = lib.types.int;
                default = 19;
              };
            };
          };
        };
        vanillabiomeincidences = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Birch Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Cold Taiga Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Desert Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              "Extreme Hills Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "Ice Mountains Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Ice Plains Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              "Jungle Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Mega Taiga Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Mesa Plateau F Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              "Mesa Plateau Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              "Plains Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              "Roofed Forest Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Savanna Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "Swampland Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "Taiga (snowless) Incidence" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
            };
          };
        };
        vanillabiomevillages = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Birch Forest Hills M hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Birch Forest Hills hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Birch Forest M hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Birch Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Cold Taiga Hills hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Cold Taiga M hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Cold Taiga hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Desert Hills hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Desert M hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Desert hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Extreme Hills M hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Extreme Hills hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Extreme Hills+ M hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Extreme Hills+ hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Flower Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Forest Hills hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ice Mountains hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ice Plains Spikes hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ice Plains hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Jungle Hills hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Jungle M hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Jungle hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mega Spruce Taiga hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mega Taiga Hills hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mega Taiga hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mesa (Bryce) hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mesa Plateau F M hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mesa Plateau F hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mesa Plateau M hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mesa Plateau hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mesa hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mushroom Island hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Plains hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Roofed Forest M hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Roofed Forest hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Savanna M hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Savanna Plateau M hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Savanna Plateau hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Savanna hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Sunflower Plains hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Swampland M hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Swampland hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Taiga (snowless) M hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Taiga (snowless) hasVillages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Taiga Hills hasVillages" = lib.mkOption {
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
