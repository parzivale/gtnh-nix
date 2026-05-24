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
      balance = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          disableEnderChest = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Disable the vanilla ender chest, removing existing ones from the world as well.";
          };
          energyRetainedInStorageBlockDrops = lib.mkOption {
            type = lib.types.float;
            default = 0.8;
            description = "Ratio of energy retained inside energy storage block Items when wrenched.
0 (nothing) ... 1 (100%), default 0.8 (80 %)";
          };
          ignoreWrenchRequirement = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Allow to pick blocks up using just a pickaxe instead of needing a wrench.";
          };
          minerDischargeTier = lib.mkOption {
            type = lib.types.int;
            default = 1;
            description = "Maximum battery tier usable by the miner.
1 = batteries, 2 = lead batteries, 3 = energy crystals, 4 = lapotron crystals";
          };
          recyclerBlacklist = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:glass_pane, minecraft:stick, minecraft:snowball, minecraft:snow_layer, minecraft:snow, IC2:blockScaffold";
            description = "Comma separated list of blocks and items which should not be turned into scrap by the recycler.
Format: <name>[@metadata], metadata * matches any.
Ore dictionary entries can be specified with OreDict:<ore dict name> as the name.";
          };
          recyclerWhitelist = lib.mkOption {
            type = lib.types.str;
            default = "";
            description = "Whitelist for blocks/items allowed to be recycled.
The whitelist will be used instead of the blacklist approach if it's non-empty, disallowing everything else.
The format is the same as the blacklist.";
          };
          teleporterUseInventoryWeight = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Increase the energy use by the player's inventory weight when going through a teleporter.";
          };
          uuEnergyFactor = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
            description = "Factor to scale the UU-Matter production energy requirement.";
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
      "balance / energy / fluidconversion" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          heatExchangerHotCoolant = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
            description = "Hot Coolant <-> Cold Coolant";
          };
          heatExchangerLava = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
            description = "Lava -> PahoehoeLava";
          };
          heatExchangerWater = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
            description = "Hot Water <- Water";
          };
          };
        };
      };
      "balance / energy / generator" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          Kinetic = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
          };
          Stirling = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
          };
          generator = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
          };
          geothermal = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
          };
          nuclear = lib.mkOption {
            type = lib.types.float;
            default = 5.0;
          };
          radioisotope = lib.mkOption {
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
          semiFluidBiomass = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
          };
          semiFluidFuel = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
          };
          semiFluidOil = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
          };
          solar = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
          };
          water = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
            description = "Deprecated, because of Kinetic Watermill";
          };
          wind = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
            description = "Deprecated, because of Kinetic Windmill";
          };
          };
        };
      };
      "balance / energy / heatgenerator" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          electric = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
          };
          radioisotope = lib.mkOption {
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
          semiFluidBiomass = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
          };
          semiFluidFuel = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
          };
          semiFluidOil = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
          };
          solid = lib.mkOption {
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
          electric = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
          };
          manual = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
          };
          steam = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
          };
          water = lib.mkOption {
            type = lib.types.float;
            default = 10.0;
          };
          wind = lib.mkOption {
            type = lib.types.float;
            default = 5.0;
          };
          };
        };
      };
      "balance / fermenter" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          biomass_per_fertilizier = lib.mkOption {
            type = lib.types.int;
            default = 500;
          };
          hU_per_run = lib.mkOption {
            type = lib.types.int;
            default = 8000;
          };
          need_amount_biomass_per_run = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          output_amount_biogas_per_run = lib.mkOption {
            type = lib.types.int;
            default = 200;
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
      default = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          };
        };
      };
      misc = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          additionalValuableOres = lib.mkOption {
            type = lib.types.str;
            default = "";
            description = "Comma separated list with ores the miner should harvest.
Format: <name>[@metadata], e.g. minecraft:torch, minecraft:chest
The metadata * will match any, e.g. minecraft:log@*.
Ore dictionary entries can be specified with OreDict:<ore dict name> as the name.";
          };
          allowBurningScrap = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable burning of scrap in a generator.";
          };
          enableIc2Audio = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enable IC2's custom sound system.";
          };
          hideSecretRecipes = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable hiding of secret recipes in CraftGuide/NEI.";
          };
          maxAudioSourceCount = lib.mkOption {
            type = lib.types.int;
            default = 32;
            description = "Maximum number of active audio sources, only change it if you know what you're doing.";
          };
          quantumSpeedOnSprint = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable activation of the quantum leggings' speed boost when sprinting instead of holding the boost key.";
          };
          radiationPotionID = lib.mkOption {
            type = lib.types.int;
            default = 24;
            description = "Potion ID of radiation potion.
Do not change this after you created a world...";
          };
          useLinearTransferModel = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Use the new highly experimental current + voltage energy net model with energy loss.
Only set this to true if you know what you are doing.";
          };
          };
        };
      };
      protection = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          enableNuke = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable the nuke";
          };
          nukeExplosionPowerLimit = lib.mkOption {
            type = lib.types.int;
            default = 100;
            description = "Maximum Explosion power of a nuke, where TNT is 4.";
          };
          reactorExplosionPowerLimit = lib.mkOption {
            type = lib.types.int;
            default = 100;
            description = "Maximum explosion power of a nuclear reactor, where TNT is 4.";
          };
          wrenchLogging = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable logging of players when they remove a machine using a wrench.";
          };
          };
        };
      };
      recipes = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          allowCoinCrafting = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable crafting of IC2 coins, otherwise they have to be spawned in and are thus limited.";
          };
          disable = lib.mkOption {
            type = lib.types.str;
            default = "";
            description = "To modify recipes or add custom recipes, copy the corresponding .ini file to
\"minecraft/config/ic2\" and modify it.

Disable IC2 crafting recipes with the specified output, comma separated list.
Recipes in the additional section below aren't affected.
Format: <name>[@metadata], e.g. minecraft:bucket to disable IC2's bucket recipe from tin.";
          };
          ignoreInvalidRecipes = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Ignore invalid recipes.";
          };
          purge = lib.mkOption {
            type = lib.types.str;
            default = "";
            description = "Purge crafting recipes with the specified output, including vanilla and mod ones, comma separated list.
Recipes in the additional section below aren't affected.
Format: <name>[@metadata], e.g. minecraft:tnt to disable crafting tnt.";
          };
          requireIc2Circuits = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Allow only IC2 circuits to be used in IC2's recipes.";
          };
          smeltToIc2Items = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Adjust smelting recipes to always output IC2 items if available.";
          };
          };
        };
      };
      worldgen = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          copperOre = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enable generation of copper in the world.";
          };
          leadOre = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enable generation of Lead in the world.";
          };
          oreDensityFactor = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
            description = "Factor scaling the IC2 ore generation quantity.";
          };
          rubberTree = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable generation of rubber trees in the world.";
          };
          tinOre = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enable generation of tin in the world.";
          };
          uraniumOre = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enable generation of uranium in the world.";
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
      default = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          };
        };
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
      default = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          };
        };
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
      default = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          };
        };
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
      default = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          };
        };
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
      default = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          };
        };
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
      default = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          };
        };
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
      default = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          };
        };
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
      default = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          };
        };
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
      default = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          };
        };
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
      default = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          };
        };
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
      default = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          };
        };
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
      default = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          };
        };
      };
      };
    };
  };
}
