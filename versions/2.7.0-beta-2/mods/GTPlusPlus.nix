{lib, ...}: {
  ASM_cfg = lib.mkOption {
    description = "ASM_cfg configuration (./config/GTPlusPlus/ASM.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GTPlusPlus/ASM.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        asm = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              debug = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    debugMode = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Enables all sorts of debug logging. (Don't use unless told to, breaks other things.) [default: false]";
                    };
                    disableAllLogging = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Disables ALL logging from GT++. [default: true]";
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
  GTPlusPlus_cfg = lib.mkOption {
    description = "GTPlusPlus_cfg configuration (./config/GTPlusPlus/GTPlusPlus.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GTPlusPlus/GTPlusPlus.cfg";
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
              debug = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    MachineInfo = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Makes many machines display lots of debug logging. [default: false]";
                    };
                    dumpItemAndBlockData = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Dumps all GT++ and Toxic Everglade Data to en_US.lang in the config folder. This config option can be used by foreign players to generate blank .lang files, which they can populate with their language of choice. [default: false]";
                    };
                    showHiddenNEIItems = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Makes all items hidden from NEI display. [default: false]";
                    };
                  };
                };
              };
              machines = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    boilerSteamPerSecond = lib.mkOption {
                      type = lib.types.int;
                      default = 750;
                      description = "Sets the steam per second value in LV,MV,HV boilers (respectively 1x,2x,3x this number for the tiers) [range: -2147483648 ~ 2147483647, default: 750]";
                    };
                    disableIC2Recipes = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Alkaluscraft Related - Removes IC2 Cables Except glass fibre. Few other Misc Tweaks. [default: false]";
                    };
                    enableThaumcraftShardUnification = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Allows the use of TC shards across many recipes by oreDicting them into a common group. [default: false]";
                    };
                  };
                };
              };
              gregtech = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    turbineCutoffBase = lib.mkOption {
                      type = lib.types.int;
                      default = 25500;
                      description = "Rotors below this durability will be removed, prevents NEI clutter. Minimum Durability is N * x, where N is the new value set and x is the turbine size, where 1 is Tiny and 4 is Huge. Set to 0 to disable. [range: -2147483648 ~ 2147483647, default: 25500]";
                    };
                  };
                };
              };
              pollution = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    baseMaxPollutionPerSecondRocketFuelGenerator = lib.mkOption {
                      type = lib.types.int;
                      default = 2000;
                      description = "maximum base pollution rate in gibbl/s for the single block rocket engines [range: -2147483648 ~ 2147483647, default: 2000]";
                    };
                    baseMinPollutionPerSecondRocketFuelGenerator = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                      description = "minimum base pollution rate in gibbl/s for the single block rocket engines [range: -2147483648 ~ 2147483647, default: 250]";
                    };
                    basePollutionPerSecondBoiler = lib.mkOption {
                      type = lib.types.int;
                      default = 35;
                      description = "base pollution rate in gibbl/s for the single block boilers [range: -2147483648 ~ 2147483647, default: 35]";
                    };
                    basePollutionPerSecondGeothermalGenerator = lib.mkOption {
                      type = lib.types.int;
                      default = 100;
                      description = "base pollution rate in gibbl/s for the geothermal engines [range: -2147483648 ~ 2147483647, default: 100]";
                    };
                    basePollutionPerSecondSemiFluidGenerator = lib.mkOption {
                      type = lib.types.int;
                      default = 40;
                      description = "base pollution rate in gibbl/s for the single block semi fluid generators [range: -2147483648 ~ 2147483647, default: 40]";
                    };
                    pollutionPerSecondElementalDuplicator = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                      description = "pollution rate in gibbl/s for the Elemental Duplicator [range: -2147483648 ~ 2147483647, default: 1000]";
                    };
                    pollutionPerSecondMultiABS = lib.mkOption {
                      type = lib.types.int;
                      default = 200;
                      description = "pollution rate in gibbl/s for the Alloy blast furnace [range: -2147483648 ~ 2147483647, default: 200]";
                    };
                    pollutionPerSecondMultiAdvDistillationTower_ModeDT = lib.mkOption {
                      type = lib.types.int;
                      default = 480;
                      description = "pollution rate in gibbl/s for the Dangote distillus in distillation tower mode [range: -2147483648 ~ 2147483647, default: 480]";
                    };
                    pollutionPerSecondMultiAdvDistillationTower_ModeDistillery = lib.mkOption {
                      type = lib.types.int;
                      default = 240;
                      description = "pollution rate in gibbl/s for the Dangote distillus in distillery mode [range: -2147483648 ~ 2147483647, default: 240]";
                    };
                    pollutionPerSecondMultiAdvEBF = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                      description = "pollution rate in gibbl/s for the Volcanus [range: -2147483648 ~ 2147483647, default: 500]";
                    };
                    pollutionPerSecondMultiAdvImplosion = lib.mkOption {
                      type = lib.types.int;
                      default = 5000;
                      description = "pollution rate in gibbl/s for the Density^2 [range: -2147483648 ~ 2147483647, default: 5000]";
                    };
                    pollutionPerSecondMultiAlgaePond = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                      description = "pollution rate in gibbl/s for the Algae farm [range: -2147483648 ~ 2147483647, default: 0]";
                    };
                    pollutionPerSecondMultiAutoCrafter = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                      description = "pollution rate in gibbl/s for the Large-Scale auto assembler v1.01 [range: -2147483648 ~ 2147483647, default: 500]";
                    };
                    pollutionPerSecondMultiCyclotron = lib.mkOption {
                      type = lib.types.int;
                      default = 200;
                      description = "pollution rate in gibbl/s for the Cyclotron [range: -2147483648 ~ 2147483647, default: 200]";
                    };
                    pollutionPerSecondMultiFrothFlotationCell = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                      description = "pollution rate in gibbl/s for the Flotation cell regulator [range: -2147483648 ~ 2147483647, default: 0]";
                    };
                    pollutionPerSecondMultiIndustrialAlloySmelter = lib.mkOption {
                      type = lib.types.int;
                      default = 300;
                      description = "pollution rate in gibbl/s for the Alloy blast smelter [range: -2147483648 ~ 2147483647, default: 300]";
                    };
                    pollutionPerSecondMultiIndustrialArcFurnace = lib.mkOption {
                      type = lib.types.int;
                      default = 2400;
                      description = "pollution rate in gibbl/s for the High current arc furnace [range: -2147483648 ~ 2147483647, default: 2400]";
                    };
                    pollutionPerSecondMultiIndustrialCentrifuge = lib.mkOption {
                      type = lib.types.int;
                      default = 300;
                      description = "pollution rate in gibbl/s for the Industrial centrifuge [range: -2147483648 ~ 2147483647, default: 300]";
                    };
                    pollutionPerSecondMultiIndustrialChisel = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                      description = "pollution rate in gibbl/s for the Industrial Chisel [range: -2147483648 ~ 2147483647, default: 50]";
                    };
                    pollutionPerSecondMultiIndustrialCokeOven = lib.mkOption {
                      type = lib.types.int;
                      default = 80;
                      description = "pollution rate in gibbl/s for the Industrial coke oven [range: -2147483648 ~ 2147483647, default: 80]";
                    };
                    pollutionPerSecondMultiIndustrialCuttingMachine = lib.mkOption {
                      type = lib.types.int;
                      default = 160;
                      description = "pollution rate in gibbl/s for the Cutting factory [range: -2147483648 ~ 2147483647, default: 160]";
                    };
                    pollutionPerSecondMultiIndustrialDehydrator = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                      description = "pollution rate in gibbl/s for the Utupu-Tanuri [range: -2147483648 ~ 2147483647, default: 500]";
                    };
                    pollutionPerSecondMultiIndustrialElectrolyzer = lib.mkOption {
                      type = lib.types.int;
                      default = 300;
                      description = "pollution rate in gibbl/s for the Industrial electrolyzer [range: -2147483648 ~ 2147483647, default: 300]";
                    };
                    pollutionPerSecondMultiIndustrialExtruder = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                      description = "pollution rate in gibbl/s for the Industrial extrusion machine [range: -2147483648 ~ 2147483647, default: 1000]";
                    };
                    pollutionPerSecondMultiIndustrialFishingPond = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                      description = "pollution rate in gibbl/s for the Zuhai - fishing port [range: -2147483648 ~ 2147483647, default: 20]";
                    };
                    pollutionPerSecondMultiIndustrialFluidHeater = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                      description = "pollution rate in gibbl/s for the Industrial fluid heater [range: -2147483648 ~ 2147483647, default: 1000]";
                    };
                    pollutionPerSecondMultiIndustrialForgeHammer = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                      description = "pollution rate in gibbl/s for the Industrial Forge Hammer [range: -2147483648 ~ 2147483647, default: 250]";
                    };
                    pollutionPerSecondMultiIndustrialMacerator = lib.mkOption {
                      type = lib.types.int;
                      default = 400;
                      description = "pollution rate in gibbl/s for the Maceration stack [range: -2147483648 ~ 2147483647, default: 400]";
                    };
                    pollutionPerSecondMultiIndustrialMixer = lib.mkOption {
                      type = lib.types.int;
                      default = 800;
                      description = "pollution rate in gibbl/s for the Industrial mixing machine [range: -2147483648 ~ 2147483647, default: 800]";
                    };
                    pollutionPerSecondMultiIndustrialMultiMachine_ModeFluid = lib.mkOption {
                      type = lib.types.int;
                      default = 400;
                      description = "pollution rate in gibbl/s for the Large processing factory in fluid mode [range: -2147483648 ~ 2147483647, default: 400]";
                    };
                    pollutionPerSecondMultiIndustrialMultiMachine_ModeMetal = lib.mkOption {
                      type = lib.types.int;
                      default = 400;
                      description = "pollution rate in gibbl/s for the Large processing factory in metal mode [range: -2147483648 ~ 2147483647, default: 400]";
                    };
                    pollutionPerSecondMultiIndustrialMultiMachine_ModeMisc = lib.mkOption {
                      type = lib.types.int;
                      default = 600;
                      description = "pollution rate in gibbl/s for the Large processing factory in misc mode [range: -2147483648 ~ 2147483647, default: 600]";
                    };
                    pollutionPerSecondMultiIndustrialPlatePress_ModeBending = lib.mkOption {
                      type = lib.types.int;
                      default = 480;
                      description = "pollution rate in gibbl/s for the Industrial material press in bending mode [range: -2147483648 ~ 2147483647, default: 480]";
                    };
                    pollutionPerSecondMultiIndustrialPlatePress_ModeForming = lib.mkOption {
                      type = lib.types.int;
                      default = 240;
                      description = "pollution rate in gibbl/s for the Industrial material press in forming mode [range: -2147483648 ~ 2147483647, default: 240]";
                    };
                    pollutionPerSecondMultiIndustrialRockBreaker = lib.mkOption {
                      type = lib.types.int;
                      default = 100;
                      description = "pollution rate in gibbl/s for the Industrial Rock Breaker [range: -2147483648 ~ 2147483647, default: 100]";
                    };
                    pollutionPerSecondMultiIndustrialSifter = lib.mkOption {
                      type = lib.types.int;
                      default = 40;
                      description = "pollution rate in gibbl/s for the Large Sifter [range: -2147483648 ~ 2147483647, default: 40]";
                    };
                    pollutionPerSecondMultiIndustrialThermalCentrifuge = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                      description = "pollution rate in gibbl/s for the Large thermal refinery [range: -2147483648 ~ 2147483647, default: 1000]";
                    };
                    pollutionPerSecondMultiIndustrialVacuumFreezer = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                      description = "pollution rate in gibbl/s for the Cryogenic freezer [range: -2147483648 ~ 2147483647, default: 500]";
                    };
                    pollutionPerSecondMultiIndustrialWashPlant_ModeChemBath = lib.mkOption {
                      type = lib.types.int;
                      default = 400;
                      description = "pollution rate in gibbl/s for the Ore washing plant in chemical bath mode [range: -2147483648 ~ 2147483647, default: 400]";
                    };
                    pollutionPerSecondMultiIndustrialWashPlant_ModeWasher = lib.mkOption {
                      type = lib.types.int;
                      default = 100;
                      description = "pollution rate in gibbl/s for the Ore washing plant in ore washer mode [range: -2147483648 ~ 2147483647, default: 100]";
                    };
                    pollutionPerSecondMultiIndustrialWireMill = lib.mkOption {
                      type = lib.types.int;
                      default = 100;
                      description = "pollution rate in gibbl/s for the Wire factory [range: -2147483648 ~ 2147483647, default: 100]";
                    };
                    pollutionPerSecondMultiIsaMill = lib.mkOption {
                      type = lib.types.int;
                      default = 1280;
                      description = "pollution rate in gibbl/s for the IsaMill grinding machine [range: -2147483648 ~ 2147483647, default: 1280]";
                    };
                    pollutionPerSecondMultiLargeSemiFluidGenerator = lib.mkOption {
                      type = lib.types.int;
                      default = 1280;
                      description = "pollution rate in gibbl/s for the Large semifluid burner [range: -2147483648 ~ 2147483647, default: 1280]";
                    };
                    pollutionPerSecondMultiMassFabricator = lib.mkOption {
                      type = lib.types.int;
                      default = 40;
                      description = "pollution rate in gibbl/s for the Matter fabrication CPU [range: -2147483648 ~ 2147483647, default: 40]";
                    };
                    pollutionPerSecondMultiMolecularTransformer = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                      description = "pollution rate in gibbl/s for the Multiblock Molecular Transformer [range: -2147483648 ~ 2147483647, default: 1000]";
                    };
                    pollutionPerSecondMultiPackager = lib.mkOption {
                      type = lib.types.int;
                      default = 40;
                      description = "pollution rate in gibbl/s for the Amazon warehousing depot [range: -2147483648 ~ 2147483647, default: 40]";
                    };
                    pollutionPerSecondMultiRefinery = lib.mkOption {
                      type = lib.types.int;
                      default = 4000;
                      description = "pollution rate in gibbl/s for the Reactor fuel processing plant [range: -2147483648 ~ 2147483647, default: 4000]";
                    };
                    pollutionPerSecondMultiThermalBoiler = lib.mkOption {
                      type = lib.types.int;
                      default = 700;
                      description = "pollution rate in gibbl/s for the Thermal boiler [range: -2147483648 ~ 2147483647, default: 700]";
                    };
                    pollutionPerSecondMultiTreeFarm = lib.mkOption {
                      type = lib.types.int;
                      default = 100;
                      description = "pollution rate in gibbl/s for the Tree growth simulator [range: -2147483648 ~ 2147483647, default: 100]";
                    };
                    pollutionPerSecondNuclearSaltProcessingPlant = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                      description = "pollution rate in gibbl/s for the Nuclear salt processing plant [range: -2147483648 ~ 2147483647, default: 500]";
                    };
                    pollutionReleasedByTierBoiler = lib.mkOption {
                      type = lib.types.listOf lib.types.float;
                      default = [ 0.0 1.0 1.43 1.86 ];
                      description = "coefficient applied to the base rate of the single block boilers based on its tier (first is tier 0 aka ULV) [default: [0.0, 1.0, 1.43, 1.86]]";
                    };
                    pollutionReleasedByTierGeothermalGenerator = lib.mkOption {
                      type = lib.types.listOf lib.types.float;
                      default = [ 0.0 0.0 0.0 0.0 1.0 1.0 1.0 ];
                      description = "coefficient applied to the base rate of the single block geothermal engines based on its tier (first is tier 0 aka ULV) [default: [0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0]]";
                    };
                    pollutionReleasedByTierRocketFuelGenerator = lib.mkOption {
                      type = lib.types.listOf lib.types.float;
                      default = [ 0.0 0.0 0.0 0.0 1.0 2.0 3.0 ];
                      description = "coefficient applied to the base rate of the single block rocket engines based on its tier (first is tier 0 aka ULV) [default: [0.0, 0.0, 0.0, 0.0, 1.0, 2.0, 3.0]]";
                    };
                    pollutionReleasedByTierSemiFluidGenerator = lib.mkOption {
                      type = lib.types.listOf lib.types.float;
                      default = [ 0.0 2.0 4.0 8.0 12.0 16.0 ];
                      description = "coefficient applied to the base rate of the single block semi fluid generators based on its tier (first is tier 0 aka ULV) [default: [0.0, 2.0, 4.0, 8.0, 12.0, 16.0]]";
                    };
                  };
                };
              };
              features = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    hideUniversalCells = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Hides every filled IC2 Universal Cell from NEI. [default: true]";
                    };
                  };
                };
              };
              visual = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    enableAnimatedTextures = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Enables Animated GT++ Textures [default: true]";
                    };
                    useGregtechTextures = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Use GT textures [default: true]";
                    };
                  };
                };
              };
              worldgen = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    EVERGLADESBIOME_ID = lib.mkOption {
                      type = lib.types.int;
                      default = 199;
                      description = "The biome within the Toxic Everglades. [range: -2147483648 ~ 2147483647, default: 199]";
                    };
                    EVERGLADES_ID = lib.mkOption {
                      type = lib.types.int;
                      default = 227;
                      description = "The ID of the Toxic Everglades. [range: -2147483648 ~ 2147483647, default: 227]";
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
