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
              "IC2:itemOreIridium" = lib.mkOption {
                type = lib.types.int;
                default = 12000;
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
  blast_furnace_ini = lib.mkOption {
    description = "blast_furnace_ini configuration (./config/ic2/blast_furnace.ini)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ic2/blast_furnace.ini";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "ini";
        readOnly = true;
        };
      };
    };
  };
  block_cutter_ini = lib.mkOption {
    description = "block_cutter_ini configuration (./config/ic2/block_cutter.ini)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ic2/block_cutter.ini";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "ini";
        readOnly = true;
        };
      };
    };
  };
  compressor_ini = lib.mkOption {
    description = "compressor_ini configuration (./config/ic2/compressor.ini)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ic2/compressor.ini";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "ini";
        readOnly = true;
        };
      };
    };
  };
  extractor_ini = lib.mkOption {
    description = "extractor_ini configuration (./config/ic2/extractor.ini)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ic2/extractor.ini";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "ini";
        readOnly = true;
        };
      };
    };
  };
  macerator_ini = lib.mkOption {
    description = "macerator_ini configuration (./config/ic2/macerator.ini)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ic2/macerator.ini";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "ini";
        readOnly = true;
        };
      };
    };
  };
  metal_former_cutting_ini = lib.mkOption {
    description = "metal_former_cutting_ini configuration (./config/ic2/metal_former_cutting.ini)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ic2/metal_former_cutting.ini";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "ini";
        readOnly = true;
        };
      };
    };
  };
  metal_former_extruding_ini = lib.mkOption {
    description = "metal_former_extruding_ini configuration (./config/ic2/metal_former_extruding.ini)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ic2/metal_former_extruding.ini";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "ini";
        readOnly = true;
        };
      };
    };
  };
  metal_former_rolling_ini = lib.mkOption {
    description = "metal_former_rolling_ini configuration (./config/ic2/metal_former_rolling.ini)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ic2/metal_former_rolling.ini";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "ini";
        readOnly = true;
        };
      };
    };
  };
  ore_washer_ini = lib.mkOption {
    description = "ore_washer_ini configuration (./config/ic2/ore_washer.ini)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ic2/ore_washer.ini";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "ini";
        readOnly = true;
        };
      };
    };
  };
  shaped_recipes_ini = lib.mkOption {
    description = "shaped_recipes_ini configuration (./config/ic2/shaped_recipes.ini)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ic2/shaped_recipes.ini";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "ini";
        readOnly = true;
        };
      };
    };
  };
  shapeless_recipes_ini = lib.mkOption {
    description = "shapeless_recipes_ini configuration (./config/ic2/shapeless_recipes.ini)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ic2/shapeless_recipes.ini";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "ini";
        readOnly = true;
        };
      };
    };
  };
  thermal_centrifuge_ini = lib.mkOption {
    description = "thermal_centrifuge_ini configuration (./config/ic2/thermal_centrifuge.ini)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ic2/thermal_centrifuge.ini";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "ini";
        readOnly = true;
        };
      };
    };
  };
}
