{lib, ...}: {
  IC2_ini = lib.mkOption {
    description = "IC2_ini configuration (./config/IC2.ini)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/IC2.ini";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "ini";
        readOnly = true;
        };
        worldgen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              rubberTree = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              copperOre = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              tinOre = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              uraniumOre = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              leadOre = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              oreDensityFactor = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
            };
          };
        };
        protection = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              wrenchLogging = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              nukeExplosionPowerLimit = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              reactorExplosionPowerLimit = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              enableNuke = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        balance = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              minerDischargeTier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              teleporterUseInventoryWeight = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              energyRetainedInStorageBlockDrops = lib.mkOption {
                type = lib.types.float;
                default = 0.8;
              };
              uuEnergyFactor = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              disableEnderChest = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              recyclerBlacklist = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:glass_pane, minecraft:stick, minecraft:snowball, minecraft:snow_layer, minecraft:snow, IC2:blockScaffold";
              };
              recyclerWhitelist = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              ignoreWrenchRequirement = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        "balance / energy / generator" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              generator = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              geothermal = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              water = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              solar = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              wind = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              nuclear = lib.mkOption {
                type = lib.types.float;
                default = 5.0;
              };
              semiFluidOil = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              semiFluidFuel = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              semiFluidBiomass = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              semiFluidBioethanol = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              semiFluidBiogas = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              Stirling = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              Kinetic = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              radioisotope = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
            };
          };
        };
        "balance / energy / heatgenerator" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              semiFluidOil = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              semiFluidFuel = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              semiFluidBiomass = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              semiFluidBioethanol = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              semiFluidBiogas = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              solid = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              radioisotope = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              electric = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
            };
          };
        };
        "balance / energy / kineticgenerator" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              water = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
              wind = lib.mkOption {
                type = lib.types.float;
                default = 5.0;
              };
              manual = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              steam = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              electric = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
            };
          };
        };
        "balance / energy / fluidconversion" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              heatExchangerLava = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              heatExchangerHotCoolant = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              heatExchangerWater = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
            };
          };
        };
        "balance / energy / FluidReactor" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              outputModifier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
            };
          };
        };
        "balance / SteamKineticGenerator" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              rotorlivetime = lib.mkOption {
                type = lib.types.int;
                default = 86400;
              };
            };
          };
        };
        "balance / steamgenerator / calcification" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              maxcalcification = lib.mkOption {
                type = lib.types.int;
                default = 100000;
              };
            };
          };
        };
        "balance / fermenter" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              need_amount_biomass_per_run = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              output_amount_biogas_per_run = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              hU_per_run = lib.mkOption {
                type = lib.types.int;
                default = 8000;
              };
              biomass_per_fertilizier = lib.mkOption {
                type = lib.types.int;
                default = 500;
              };
            };
          };
        };
        "balance / uu-values / predefined" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              IC2 = lib.mkOption {
                type = lib.types.str;
                default = "itemOreIridium = 12000";
              };
            };
          };
        };
        recipes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              disable = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              purge = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              allowCoinCrafting = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              requireIc2Circuits = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              smeltToIc2Items = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              ignoreInvalidRecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        misc = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableIc2Audio = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              maxAudioSourceCount = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
              hideSecretRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              quantumSpeedOnSprint = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              allowBurningScrap = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              additionalValuableOres = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              useLinearTransferModel = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              radiationPotionID = lib.mkOption {
                type = lib.types.int;
                default = 24;
              };
            };
          };
        };
      };
    };
  };
}
