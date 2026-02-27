{lib, ...}: {
  harvestcraft = lib.mkOption {
    description = "harvestcraft configuration (./config/harvestcraft.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/harvestcraft.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        backports = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enablemeatGrinder = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        beekeeping = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              beehiveRarity = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              enablebeehiveGeneration = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        candles = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              candlelightLevel = lib.mkOption {
                type = lib.types.str;
                default = "0.9375";
              };
              candlerecipeAmount = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        crops = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              cropfoodRestore = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              cropsaturationRestore = lib.mkOption {
                type = lib.types.str;
                default = "0.6000000238418579";
              };
              cropsdropSeeds = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              enablecropspecialplanting = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              mealsaturation = lib.mkOption {
                type = lib.types.str;
                default = "1.2000000476837158";
              };
              meatymealsaturation = lib.mkOption {
                type = lib.types.str;
                default = "1.600000023841858";
              };
              rightclickharvestCrop = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              rightclickmatureshowcropHearts = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              snacksaturation = lib.mkOption {
                type = lib.types.str;
                default = "0.6000000238418579";
              };
            };
          };
        };
        dimensions = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableAroma1997sdimensionalworldfruittreeGen = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              enableAroma1997sdimensionalworldgardenGen = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              enabletwilightforestfruittreeGen = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enabletwilightforestgardenGen = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        "fruit trees" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              almondtreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              appletreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              apricottreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              avocadotreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              bananatreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              cashewtreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              cherrytreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              chestnuttreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              cinnamontreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              coconuttreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              coniferousfruittreeRarity = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              datetreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              dragonfruittreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              duriantreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              figtreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              gooseberrytreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              grapefruittreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              lemontreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              limetreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              mangotreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              mapletreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              nutmegtreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              olivetreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              orangetreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              papayatreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              paperbarktreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              peachtreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              peartreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              pecantreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              peppercorntreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              persimmontreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              pistachiotreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              plumtreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              pomegranatetreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              rightclickharvestFruit = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              rightclickmatureshowfruitHearts = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              starfruittreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              temperatefruittreeRarity = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              tropicalfruittreeRarity = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              vanillabeantreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              walnuttreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        gardens = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableberrygardenGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enabledesertgardenGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enablegardenSpread = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enablegourdgardenGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enablegrassgardenGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enablegroundgardenGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableherbgardenGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableleafygardenGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enablemushroomgardenGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enablestalkgardenGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enabletextilegardenGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enabletropicalgardenGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enablewatergardenGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              gardenRarity = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              gardenSpreadLimit = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              gardendropAmount = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              gardensdropSeeds = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              gardenspreadRate = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enablemrcrayfishcompatibility = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              sheepdropMutton = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              squiddropCalamari = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        "market currency" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ignore = lib.mkOption {
                type = lib.types.str;
                default = "ignore";
                description = "Assign market currency as follows 0:Emerald, 1:Diamond, 2:Gold Ingot, 3:Gold Nugget, 4:Iron Ingot";
              };
              ignore2 = lib.mkOption {
                type = lib.types.str;
                default = "ignore";
                description = "Assign market currency as follows 5:Wheat Seeds (seeds), 5:Oak Sapling (temperate fruit tree), 5:Jungle Sapling (tropical fruit tree), 5:Spruce Sapling (coniferous fruit tree), 5:Egg (animals)";
              };
              ignore3 = lib.mkOption {
                type = lib.types.str;
                default = "ignore";
                description = "Assign market currency as follows 6:Apple (temperate/tropical fruit tree), 7:Cocoa Beans (tropical fruit tree)";
              };
              marketcurrencyBonemeal = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              marketcurrencyChicken = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              marketcurrencyCow = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              marketcurrencyHorse = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              marketcurrencyPig = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              marketcurrencySeeds = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              marketcurrencySheep = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              marketcurrencyconiferousSaplings = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              marketcurrencytemperateSaplings = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              marketcurrencytropicalSaplings = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
            };
          };
        };
        "market prices" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              marketbonemealPrice = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              marketchickenPrice = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              marketcowPrice = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              markethorsePrice = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              marketpigPrice = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              marketsaplingPrice = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              marketseedPrice = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              marketsheepPrice = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        "market sales" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              marketsellBonemeal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              marketsellChicken = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              marketsellCow = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              marketsellHorse = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              marketsellPig = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              marketsellSeeds = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              marketsellSheep = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              marketsellconiferousSaplings = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              marketselltemperateSaplings = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              marketselltropicalSaplings = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        "miscellaneous recipes" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enablecropitemsasseeds = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enablecroptoseedRecipe = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableharvestcraftfish = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enablelistAllwaterfreshwater = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enablelistAllwatervanillawaterbucket = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enablemachinerecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              enablesaltfromwaterbucketrecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              enabletofuasmeatinRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enabletofuasmilkinRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              fishtrapbaitrecipeamount = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              forcecookinginmeatrecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              freshmilkfrombucket = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              freshwaterfrombucket = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              fruitbaitrecipeamount = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              grainbaitrecipeamount = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              marketblockrecipeItem = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              veggiebaitrecipeamount = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        salt = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enablesaltGeneration = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              saltRarity = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
            };
          };
        };
        seeds = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              artichokeseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              asparagusseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              bambooshootseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              barleyseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              beanseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              beetseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              bellpepperseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              blackberryseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              blueberryseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              broccoliseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              brusselsproutseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              cabbageseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              cactusfruitseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              candleberryseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              cantaloupeseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              cauliflowerseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              celeryseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              chilipepperseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              coffeeseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              cornseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              cottonseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              cranberryseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              cucumberseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              curryleafseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              eggplantseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              garlicseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              gingerseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              grapeseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              kiwiseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              leekseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              lettuceseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              mustardseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              oatsseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              okraseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              onionseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              parsnipseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              peanutseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              peasseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              pineappleseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              radishseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              raspberryseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              rhubarbseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              riceseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              rutabagaseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              ryeseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              scallionseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              seaweedseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              seedrarity = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              sesameseedsseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              soybeanseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              spiceleafseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              spinachseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              strawberryseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              sunflowerseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              sweetpotatoseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              teaseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              tomatoseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              turnipseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              waterchestnutseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              whitemushroomseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              wintersquashseeddropfromgrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              zucchiniseeddropfromgrass = lib.mkOption {
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
