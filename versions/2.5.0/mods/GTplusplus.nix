{lib, ...}: {
  Australia_cfg = lib.mkOption {
    description = "Australia_cfg configuration (./config/GTplusplus/Australia.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GTplusplus/Australia.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
      };
      };
    };
  };
  GTplusplus_cfg = lib.mkOption {
    description = "GTplusplus_cfg configuration (./config/GTplusplus/GTplusplus.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GTplusplus/GTplusplus.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
      };
      blockdrops = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          chanceToDropDrainedShard = lib.mkOption {
            type = lib.types.int;
            default = 196;
            description = "Drained shards have a 1 in X chance to drop. [range: 0 ~ 10000, default: 196]";
          };
          chanceToDropFluoriteOre = lib.mkOption {
            type = lib.types.int;
            default = 32;
            description = "Fluorite Ore has a 1 in X chance to drop from Limestone and a 1 in X*20 from Sandstone.. [range: 0 ~ 10000, default: 32]";
          };
          };
        };
      };
      configurables = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          rfUsedPerEUForUniversalBatteries = lib.mkOption {
            type = lib.types.int;
            default = 4;
            description = "How much RF is a single unit of EU worth? (Most mods use 4:1 ratio) [range: 1 ~ 1000, default: 4]";
          };
          };
        };
      };
      debug = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          debugMode = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          disableEnderIO = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Disables EnderIO Integration. [default: false]";
          };
          disableEnderIOIngotTooltips = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Disables EnderIO Ingot Tooltips. These apparently may cause issues for a very small number of users. [default: false]";
          };
          dumpItemAndBlockData = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Dumps all GT++ and Toxic Everglade Data to en_US.lang in the config folder. This config option can be used by foreign players to generate blank .lang files, which they can populate with their language of choice. [default: false]";
          };
          enableMachineInfoLogging = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Makes many machines display lots of debug logging. [default: false]";
          };
          enableUpdateChecker = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          machineInfo = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          showHiddenNEIItems = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Makes all items hidden from NEI display. [default: false]";
          };
          };
        };
      };
      features = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          disableZombieReinforcement = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Disables Zombie Reinforcement on hard difficutly. [default: false]";
          };
          enableCustomAlvearyBlocks = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          enableSupporterCape = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enables Custom GT++ Cape. [default: true]";
          };
          enableWatchdogBGM = lib.mkOption {
            type = lib.types.int;
            default = 0;
            description = "Set to a value greater than 0 to reduce the ticks taken to delay between BGM tracks. Acceptable Values are 1-32767, where 0 is disabled. Vanilla Uses 12,000 & 24,000. 200 is 10s. [range: 0 ~ 32767, default: 0]";
          };
          hideUniversalCells = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Hides every filled IC2 Universal Cell from NEI. [default: true]";
          };
          };
        };
      };
      gregtech = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          BlacklistedTileEntiyClassNames = lib.mkOption {
            type = lib.types.listOf lib.types.str;
            default = [ "com.rwtema.extrautils.tileentity.enderquarry.TileEntityEnderQuarry" ];
            description = "The Canonical Class-Names of TileEntities that should be ignored by the WorldAccelerator [default: [com.rwtema.extrautils.tileentity.enderquarry.TileEntityEnderQuarry]]";
          };
          enableAnimatedTurbines = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableComponentAssemblers = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "These construct machine components. [default: true]";
          };
          enableCustomCircuits = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Adds custom circuits to expand past the Master Tier. Only really recommended to enable if enableOldGTcircuits is enabled. [default: false]";
          };
          enableCustom_Cables = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Adds Custom GT Cables. [default: true]";
          };
          enableCustom_Pipes = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Adds Custom GT Fluid Pipes. [default: true]";
          };
          enableHarderRecipesForHighTierCasings = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Makes LuV+ Casings and Hulls more difficult to craft. [default: false]";
          };
          enableMachineDehydrators = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "These dehydrate stuff. [default: true]";
          };
          enableMachineFluidTanks = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Portable fluid tanks. [default: true]";
          };
          enableMachineGeothermalEngines = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "These may be overpowered, Consult a local geologist. [default: true]";
          };
          enableMachinePollution = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Pollution Detector & Scrubbers. [default: true]";
          };
          enableMachineRFConvetor = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Converts RF to GTEU. Requires COFH-Core to be installed. [default: true]";
          };
          enableMachineRocketEngines = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Diesel egines with different internals, they consume less fuel overall. [default: true]";
          };
          enableMachineSafes = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "These protect your goodies/rare stuff. [default: true]";
          };
          enableMachineSimpleWasher = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Very basic automated cauldron for dust washing. [default: true]";
          };
          enableMachineSteamConverter = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Converts IC2 steam -> Railcraft steam. [default: true]";
          };
          enableMachineTesseracts = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Tesseracts for wireless item/fluid movement. [default: true]";
          };
          enableMachineThermalBoiler = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Thermal Boiler from GT4. Can Filter Lava for resources. [default: true]";
          };
          enableMachineWorldAccelerators = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "These allow boosting Block/TileEntity Tick times [OP]. [default: true]";
          };
          enableMultiSizeTools = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Adds Custom GT Shovels and Pickaxes which mine in a 3x3 style. One of each whill be generated for each Gregtech Material which has Dense Plates and Long Rods available. [default: true]";
          };
          enableMultiblockAlloyBlastSmelter = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Required to smelt most high tier materials from GT++. Also smelts everything else to molten metal. [default: true]";
          };
          enableMultiblockIndustrialCentrifuge = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Spin, Spin, Spiiiin. [default: true]";
          };
          enableMultiblockIndustrialCokeOven = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Pyro Oven Alternative, older, more realistic, better. [default: true]";
          };
          enableMultiblockIndustrialElectrolyzer = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Electrolyzes things with extra bling factor. [default: true]";
          };
          enableMultiblockIndustrialMacerationStack = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "A hyper efficient maceration tower, nets more bonus outputs. [default: true]";
          };
          enableMultiblockIndustrialPlatePress = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Industrial bendering machine thingo. [default: true]";
          };
          enableMultiblockIndustrialWireMill = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Produces fine wire and exotic cables. [default: true]";
          };
          enableMultiblockIronBlastFurnace = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Skip the Bronze age, very slowly. [default: true]";
          };
          enableMultiblockLiquidFluorideThoriumReactor = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "For supplying large power grids. [default: true]";
          };
          enableMultiblockMatterFabricator = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "?FAB?RIC?ATE MA?TT?ER. [default: true]";
          };
          enableMultiblockMultiTank = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Tall tanks, each layer adds extra fluid storage. [default: true]";
          };
          enableMultiblockPowerSubstation = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "For managing large power grids. [default: true]";
          };
          enableMultiblock_Cyclotron = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "COMET - Scientific Cyclotron. [default: true]";
          };
          enableMultiblock_IndustrialCuttingMachine = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Very fast and efficient Cutting Machine. [default: true]";
          };
          enableMultiblock_IndustrialExtrudingMachine = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Very fast and efficient Extruding Machine. [default: true]";
          };
          enableMultiblock_IndustrialFishingPort = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Fish the seas, except on land. [default: true]";
          };
          enableMultiblock_IndustrialMultiMachine = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Can run recipes for 9 different types of machines. [default: true]";
          };
          enableMultiblock_IndustrialSifter = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Large scale sifting. [default: true]";
          };
          enableMultiblock_IndustrialThermalCentrifuge = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Your warm spin for the ore thing. [default: true]";
          };
          enableMultiblock_IndustrialWashPlant = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Used to wash the dirt, riiiiight offff.. [default: true]";
          };
          enableMultiblock_LargeAutoCrafter = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Can Assemble, Disassemble and Craft Project data from Data Sticks. [default: true]";
          };
          enableMultiblock_NuclearFuelRefinery = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Refines molten chemicals into nuclear fuels. [default: true]";
          };
          enableNitroFix = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Restores the old Nitro-Diesel recipes. [default: false]";
          };
          enableOldGTcircuits = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Restores circuits and their recipes from Pre-5.09.28 times. [default: false]";
          };
          enableSkookumChoochers = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Adds Custom GT Tools, called Skookum Choochers, functioning as a hard hammer and a wrench. [default: true]";
          };
          enableSolarGenerators = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "These may be overpowered, Consult a local electrician. [default: false]";
          };
          enableSulfuricAcidFix = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Adds GT6 recipes for Sulfuric Acid. Should remove all pre-existing recipes. [default: false]";
          };
          turbineCutoffBase = lib.mkOption {
            type = lib.types.int;
            default = 25500;
            description = "Rotors below this durability will be removed, prevents NEI clutter. Minimum Durability is N * x, where N is the new value set and x is the turbine size, where 1 is Tiny and 4 is Huge. Set to 0 to disable. [range: 0 ~ 2147483647, default: 75000]";
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
            description = "Sets the steam per second value in LV,MV,HV boilers (respectively 1x,2x,3x this number for the tiers) [range: 0 ~ 10000, default: 750]";
          };
          disableIC2Recipes = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Alkaluscraft Related - Removes IC2 Cables Except glass fibre. Few other Misc Tweaks. [default: false]";
          };
          enableAlternativeBatteryAlloy = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Adds a non-Antimony using Battery Alloy. Not Balanced at all.. [default: false]";
          };
          enableAlternativeDivisionSigilRecipe = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Utilizes Neutronium instead. [default: false]";
          };
          enableThaumcraftShardUnification = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Allows the use of TC shards across many recipes by oreDicting them into a common group. [default: false]";
          };
          requireControlCores = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Multiblocks Require Control Cores [default: true]";
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
            description = "maximum base pollution rate in gibbl/s for the single block rocket engines";
          };
          baseMinPollutionPerSecondRocketFuelGenerator = lib.mkOption {
            type = lib.types.int;
            default = 250;
            description = "minimum base pollution rate in gibbl/s for the single block rocket engines";
          };
          basePollutionPerSecondBoiler = lib.mkOption {
            type = lib.types.int;
            default = 35;
            description = "base pollution rate in gibbl/s for the single block boilers";
          };
          basePollutionPerSecondGeothermalGenerator = lib.mkOption {
            type = lib.types.int;
            default = 100;
            description = "base pollution rate in gibbl/s for the geothermal engines";
          };
          basePollutionPerSecondSemiFluidGenerator = lib.mkOption {
            type = lib.types.int;
            default = 40;
            description = "base pollution rate in gibbl/s for the single block semi fluid generators";
          };
          pollutionPerSecondMultiABS = lib.mkOption {
            type = lib.types.int;
            default = 200;
            description = "pollution rate in gibbl/s for the Alloy blast furnace";
          };
          pollutionPerSecondMultiAdvDistillationTower_ModeDT = lib.mkOption {
            type = lib.types.int;
            default = 480;
            description = "pollution rate in gibbl/s for the Dangote distillus in distillation tower mode";
          };
          pollutionPerSecondMultiAdvDistillationTower_ModeDistillery = lib.mkOption {
            type = lib.types.int;
            default = 240;
            description = "pollution rate in gibbl/s for the Dangote distillus in distillery mode";
          };
          pollutionPerSecondMultiAdvEBF = lib.mkOption {
            type = lib.types.int;
            default = 500;
            description = "pollution rate in gibbl/s for the Volcanus";
          };
          pollutionPerSecondMultiAdvImplosion = lib.mkOption {
            type = lib.types.int;
            default = 5000;
            description = "pollution rate in gibbl/s for the Density^2";
          };
          pollutionPerSecondMultiAlgaePond = lib.mkOption {
            type = lib.types.int;
            default = 0;
            description = "pollution rate in gibbl/s for the Algae farm";
          };
          pollutionPerSecondMultiAutoCrafter = lib.mkOption {
            type = lib.types.int;
            default = 500;
            description = "pollution rate in gibbl/s for the Large-Scale auto assembler v1.01";
          };
          pollutionPerSecondMultiCyclotron = lib.mkOption {
            type = lib.types.int;
            default = 200;
            description = "pollution rate in gibbl/s for the Cyclotron";
          };
          pollutionPerSecondMultiFrothFlotationCell = lib.mkOption {
            type = lib.types.int;
            default = 0;
            description = "pollution rate in gibbl/s for the Flotation cell regulator";
          };
          pollutionPerSecondMultiIndustrialAlloySmelter = lib.mkOption {
            type = lib.types.int;
            default = 300;
            description = "pollution rate in gibbl/s for the Alloy blast smelter";
          };
          pollutionPerSecondMultiIndustrialArcFurnace = lib.mkOption {
            type = lib.types.int;
            default = 2400;
            description = "pollution rate in gibbl/s for the High current arc furnace";
          };
          pollutionPerSecondMultiIndustrialCentrifuge = lib.mkOption {
            type = lib.types.int;
            default = 300;
            description = "pollution rate in gibbl/s for the Industrial centrifuge";
          };
          pollutionPerSecondMultiIndustrialChisel = lib.mkOption {
            type = lib.types.int;
            default = 50;
            description = "pollution rate in gibbl/s for the Industrial Chisel";
          };
          pollutionPerSecondMultiIndustrialCokeOven = lib.mkOption {
            type = lib.types.int;
            default = 80;
            description = "pollution rate in gibbl/s for the Industrial coke oven";
          };
          pollutionPerSecondMultiIndustrialCuttingMachine = lib.mkOption {
            type = lib.types.int;
            default = 160;
            description = "pollution rate in gibbl/s for the Cutting factory";
          };
          pollutionPerSecondMultiIndustrialDehydrator = lib.mkOption {
            type = lib.types.int;
            default = 500;
            description = "pollution rate in gibbl/s for the Utupu-Tanuri";
          };
          pollutionPerSecondMultiIndustrialElectrolyzer = lib.mkOption {
            type = lib.types.int;
            default = 300;
            description = "pollution rate in gibbl/s for the Industrial electrolyzer";
          };
          pollutionPerSecondMultiIndustrialExtruder = lib.mkOption {
            type = lib.types.int;
            default = 1000;
            description = "pollution rate in gibbl/s for the Industrial extrusion machine";
          };
          pollutionPerSecondMultiIndustrialFishingPond = lib.mkOption {
            type = lib.types.int;
            default = 20;
            description = "pollution rate in gibbl/s for the Zuhai - fishing port";
          };
          pollutionPerSecondMultiIndustrialForgeHammer = lib.mkOption {
            type = lib.types.int;
            default = 250;
            description = "pollution rate in gibbl/s for the Industrial Forge Hammer";
          };
          pollutionPerSecondMultiIndustrialMacerator = lib.mkOption {
            type = lib.types.int;
            default = 400;
            description = "pollution rate in gibbl/s for the Maceration stack";
          };
          pollutionPerSecondMultiIndustrialMixer = lib.mkOption {
            type = lib.types.int;
            default = 800;
            description = "pollution rate in gibbl/s for the Industrial mixing machine";
          };
          pollutionPerSecondMultiIndustrialMultiMachine_ModeFluid = lib.mkOption {
            type = lib.types.int;
            default = 400;
            description = "pollution rate in gibbl/s for the Large processing factory in fluid mode";
          };
          pollutionPerSecondMultiIndustrialMultiMachine_ModeMetal = lib.mkOption {
            type = lib.types.int;
            default = 400;
            description = "pollution rate in gibbl/s for the Large processing factory in metal mode";
          };
          pollutionPerSecondMultiIndustrialMultiMachine_ModeMisc = lib.mkOption {
            type = lib.types.int;
            default = 600;
            description = "pollution rate in gibbl/s for the Large processing factory in misc mode";
          };
          pollutionPerSecondMultiIndustrialPlatePress_ModeBending = lib.mkOption {
            type = lib.types.int;
            default = 480;
            description = "pollution rate in gibbl/s for the Industrial material press in bending mode";
          };
          pollutionPerSecondMultiIndustrialPlatePress_ModeForming = lib.mkOption {
            type = lib.types.int;
            default = 240;
            description = "pollution rate in gibbl/s for the Industrial material press in forming mode";
          };
          pollutionPerSecondMultiIndustrialRockBreaker = lib.mkOption {
            type = lib.types.int;
            default = 100;
            description = "pollution rate in gibbl/s for the Industrial Rock Breaker";
          };
          pollutionPerSecondMultiIndustrialSifter = lib.mkOption {
            type = lib.types.int;
            default = 40;
            description = "pollution rate in gibbl/s for the Large Sifter";
          };
          pollutionPerSecondMultiIndustrialThermalCentrifuge = lib.mkOption {
            type = lib.types.int;
            default = 1000;
            description = "pollution rate in gibbl/s for the Large thermal refinery";
          };
          pollutionPerSecondMultiIndustrialVacuumFreezer = lib.mkOption {
            type = lib.types.int;
            default = 500;
            description = "pollution rate in gibbl/s for the Cryogenic freezer";
          };
          pollutionPerSecondMultiIndustrialWashPlant_ModeChemBath = lib.mkOption {
            type = lib.types.int;
            default = 400;
            description = "pollution rate in gibbl/s for the Ore washing plant in chemical bath mode";
          };
          pollutionPerSecondMultiIndustrialWashPlant_ModeWasher = lib.mkOption {
            type = lib.types.int;
            default = 100;
            description = "pollution rate in gibbl/s for the Ore washing plant in ore washer mode";
          };
          pollutionPerSecondMultiIndustrialWireMill = lib.mkOption {
            type = lib.types.int;
            default = 100;
            description = "pollution rate in gibbl/s for the Wire factory";
          };
          pollutionPerSecondMultiIsaMill = lib.mkOption {
            type = lib.types.int;
            default = 1280;
            description = "pollution rate in gibbl/s for the IsaMill grinding machine";
          };
          pollutionPerSecondMultiLargeSemiFluidGenerator = lib.mkOption {
            type = lib.types.int;
            default = 1280;
            description = "pollution rate in gibbl/s for the Large semifluid burner";
          };
          pollutionPerSecondMultiMassFabricator = lib.mkOption {
            type = lib.types.int;
            default = 40;
            description = "pollution rate in gibbl/s for the Matter fabrication CPU";
          };
          pollutionPerSecondMultiMolecularTransformer = lib.mkOption {
            type = lib.types.int;
            default = 1000;
            description = "pollution rate in gibbl/s for the Multiblock Molecular Transformer";
          };
          pollutionPerSecondMultiNuclearReactor_ModeBoosted = lib.mkOption {
            type = lib.types.int;
            default = 160;
          };
          pollutionPerSecondMultiNuclearReactor_ModeNormal = lib.mkOption {
            type = lib.types.int;
            default = 80;
          };
          pollutionPerSecondMultiPackager = lib.mkOption {
            type = lib.types.int;
            default = 40;
            description = "pollution rate in gibbl/s for the Amazon warehousing depot";
          };
          pollutionPerSecondMultiRefinery = lib.mkOption {
            type = lib.types.int;
            default = 4000;
            description = "pollution rate in gibbl/s for the Reactor fuel processing plant";
          };
          pollutionPerSecondMultiThermalBoiler = lib.mkOption {
            type = lib.types.int;
            default = 700;
            description = "pollution rate in gibbl/s for the Thermal boiler";
          };
          pollutionPerSecondMultiTreeFarm = lib.mkOption {
            type = lib.types.int;
            default = 100;
            description = "pollution rate in gibbl/s for the Tree growth simulator";
          };
          pollutionReleasedByTierBoiler = lib.mkOption {
            type = lib.types.listOf lib.types.float;
            default = [ 0.0 1.0 1.43 1.86 ];
            description = "coefficient applied to the base rate of the single block semi fluid generators based on its tier (first is tier 0 aka ULV)";
          };
          pollutionReleasedByTierGeothermalGenerator = lib.mkOption {
            type = lib.types.listOf lib.types.float;
            default = [ 0.0 0.0 0.0 0.0 1.0 1.0 1.0 ];
            description = "coefficient applied to the base rate of the single block geothermal engines based on its tier (first is tier 0 aka ULV)";
          };
          pollutionReleasedByTierRocketFuelGenerator = lib.mkOption {
            type = lib.types.listOf lib.types.float;
            default = [ 0.0 0.0 0.0 0.0 1.0 2.0 3.0 ];
            description = "coefficient applied to the base rate of the single block rocket engines based on its tier (first is tier 0 aka ULV)";
          };
          pollutionReleasedByTierSemiFluidGenerator = lib.mkOption {
            type = lib.types.listOf lib.types.float;
            default = [ 0.0 2.0 4.0 8.0 12.0 16.0 ];
            description = "coefficient applied to the base rate of the single block semi fluid generators based on its tier (first is tier 0 aka ULV)";
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
            description = "Enables Animated GT++ Textures, Requires Restart [default: true]";
          };
          };
        };
      };
      worldgen = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          darkbiome_ID = lib.mkOption {
            type = lib.types.int;
            default = 199;
            description = "The biome within the Dark Dimension. [range: 1 ~ 254, default: 238]";
          };
          darkworld_ID = lib.mkOption {
            type = lib.types.int;
            default = 227;
            description = "The ID of the Dark Dimension. [range: 1 ~ 254, default: 227]";
          };
          };
        };
      };
      };
    };
  };
  GliderBlacklist_cfg = lib.mkOption {
    description = "GliderBlacklist_cfg configuration (./config/GTplusplus/GliderBlacklist.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GTplusplus/GliderBlacklist.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
      };
      };
    };
  };
  MaterialProperties_cfg = lib.mkOption {
    description = "MaterialProperties_cfg configuration (./config/GTplusplus/MaterialProperties.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GTplusplus/MaterialProperties.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
      };
      blastfurnacerequirements = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          electricalsteel_true = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          hastelloyx_true = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          inconel690_true = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          inconel792_true = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          maragingsteel300_true = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          maragingsteel350_true = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          potin_true = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          staballoy_true = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          tantalloy60_true = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          tantalloy61_true = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          };
        };
      };
      blastinductionsmelter = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          electricalsteel_true = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          hastelloyx_false = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          inconel690_false = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          inconel792_false = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          maragingsteel300_false = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          maragingsteel350_false = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          potin_false = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          staballoy_false = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          tantalloy60_false = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          tantalloy61_false = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          };
        };
      };
      heatdamage = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "_null_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "bedrockium_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "bloodsteel_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "conductiveiron_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "cryotheum_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "electricalsteel_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "energeticalloy_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "hastelloyx_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "hydrofluoricacid_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "hydrogenchloride_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "inconel690_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "inconel792_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "lithiumhydroxide_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "maragingsteel300_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "maragingsteel350_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "neutronic_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "potin_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "pulsatingiron_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "pyrotheum_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "quantum_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "redstonealloy_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "staballoy_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "sulfurdioxide_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "sulfuricapatite_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "sulfuriclithium_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "sulfurousacid_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "superconductor_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "symbiotic_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "tantalloy60_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "tantalloy61_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "thoriumtetrafluoride_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "uraniumhexafluoride_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "uraniumtetrafluoride_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "vibrantalloy_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          "void_0.0" = lib.mkOption {
            type = lib.types.float;
            default = 0.0;
          };
          };
        };
      };
      };
    };
  };
  WorldGeneration_cfg = lib.mkOption {
    description = "WorldGeneration_cfg configuration (./config/GTplusplus/WorldGeneration.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GTplusplus/WorldGeneration.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
      };
      };
    };
  };
  asm_cfg = lib.mkOption {
    description = "asm_cfg configuration (./config/GTplusplus/asm.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GTplusplus/asm.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
      };
      debug = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          debugMode = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enables all sorts of debug logging. (Don't use unless told to, breaks other things.)";
          };
          disableAllLogging = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Disables ALL logging from GT++.";
          };
          enableChunkDebugging = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enable/Disable Chunk Debugging Features, Must Be enabled on Client and Server.";
          };
          enableCofhPatch = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable COFH OreDictionaryArbiter Patch (Useful for Development)";
          };
          enableGtNbtFix = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable GT NBT Persistency Fix";
          };
          enableOreDictPatch = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enable/Disable Forge OreDictionary Patch (Useful for Development)";
          };
          enableThaumicTinkererRepairFix = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enable/Disable Patch for Thaumic Repairer";
          };
          enabledFixEntitySetHealth = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enable/Disable entity setHealth() fix.";
          };
          };
        };
      };
      general = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          enableGcFuelChanges = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable changes to Galacticraft Rocket Fuels.";
          };
          enableGtCharcoalPitFix = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Makes the Charcoal Pile Igniter work better.";
          };
          enableGtTooltipFix = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Custom GT Tooltips";
          };
          enableRcFlowFix = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Allows Custom max IO rates on RC tanks";
          };
          enableRcItemDupeFix = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Fixes possible negative itemstacks";
          };
          enableTcAspectSafety = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Fixes small oversights in Thaumcraft 4.";
          };
          enableTiConFluidLighting = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Brightness Visuals for Tinkers Fluids, only required on the Client.";
          };
          enabledLwjglKeybindingFix = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Prevents the game crashing from having invalid keybinds. https://github.com/alkcorp/GTplusplus/issues/544";
          };
          maxRailcraftFluidLoaderFlow = lib.mkOption {
            type = lib.types.int;
            default = 200;
            description = "Max Output rate for RC Fluid Loaders";
          };
          maxRailcraftFluidUnloaderFlow = lib.mkOption {
            type = lib.types.int;
            default = 400;
            description = "Max Output rate for RC Fluid Unloaders";
          };
          maxRailcraftTankProcessVolume = lib.mkOption {
            type = lib.types.int;
            default = 8000;
            description = "Max IO for RC fluid tanks (Not Carts). 'enableRcFlowFix' Must be enabled.";
          };
          };
        };
      };
      };
    };
  };
}
