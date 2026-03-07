{lib, ...}: {
  # For some reason the gt files use double nesting

  Pollution = lib.mkOption {
    description = "GregTech Pollution configuration (./config/GregTech/Pollution.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/GregTech/Pollution.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        pollution = lib.mkOption {
          description = "GregTech pollution section settings";
          default = {};
          type = lib.types.submodule {
            options = {
              "Activate Pollution" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "if true, enables pollution in the game. [default: true]";
              };
              advancedCokeOvenPollutionAmount = lib.mkOption {
                type = lib.types.int;
                default = 80;
                description = "Pollution Amount for Advanced Coke Ovens [range: -2147483648 ~ 2147483647, default: 80]";
              };
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
              basePollutionMBFSecond = lib.mkOption {
                type = lib.types.int;
                default = 400;
                description = "How much should the MBF produce pollution per tick per ingot. Then it'll be multiplied by the amount of ingots done in parallel [range: -2147483648 ~ 2147483647, default: 400]";
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
              cokeOvenPollutionAmount = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Pollution Amount for Coke Ovens [range: -2147483648 ~ 2147483647, default: 10]";
              };
              # Stored as S: in the cfg because it's a float that Forge reads as a string
              explosionPollutionAmount = lib.mkOption {
                type = lib.types.str;
                default = "333.34";
                description = "Explosion pollution [range: 1.4E-45 ~ 3.4028235E38, default: 333.34]";
              };
              fireboxPollutionAmount = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Pollution Amount for RC Firebox [range: -2147483648 ~ 2147483647, default: 20]";
              };
              furnacePollutionAmount = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Furnace pollution per second, min 1! [range: -2147483648 ~ 2147483647, default: 20]";
              };
              furnacesPollute = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Make furnaces Pollute [default: true]";
              };
              hobbyistEnginePollutionAmount = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Pollution Amount for hobbyist steam engine [range: -2147483648 ~ 2147483647, default: 20]";
              };
              pollutionBaseDieselGeneratorPerSecond = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "Controls the pollution released per second by the base diesel generator. [range: -2147483648 ~ 2147483647, default: 40]";
              };
              pollutionBaseGasTurbinePerSecond = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "Controls the pollution released per second by the base gas turbine. [range: -2147483648 ~ 2147483647, default: 40]";
              };
              pollutionBlockRecolor = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Changes colors of certain blocks based on pollution levels [default: true]";
              };
              pollutionCharcoalPitPerSecond = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Controls the pollution released per second by the charcoal pile igniter. [range: -2147483648 ~ 2147483647, default: 100]";
              };
              pollutionDieselGeneratorReleasedByTier = lib.mkOption {
                type = lib.types.listOf lib.types.number;
                default = [0.1 1.0 0.9 0.8 0.7 0.6];
                description = "Pollution released by tier for diesel generators. LV is index 1. [default: [0.1, 1.0, 0.9, 0.8, 0.7, 0.6]]";
              };
              pollutionEBFPerSecond = lib.mkOption {
                type = lib.types.int;
                default = 400;
                description = "Controls the pollution released per second by the EBF. [range: -2147483648 ~ 2147483647, default: 400]";
              };
              pollutionExtremeCombustionEnginePerSecond = lib.mkOption {
                type = lib.types.int;
                default = 3840;
                description = "Controls the pollution released per second by the extreme combustion engine. [range: -2147483648 ~ 2147483647, default: 3840]";
              };
              pollutionGasTurbineReleasedByTier = lib.mkOption {
                type = lib.types.listOf lib.types.number;
                default = [0.1 1.0 0.9 0.8 0.7 0.6];
                description = "Pollution released by tier for gas turbines. LV is index 1. [default: [0.1, 1.0, 0.9, 0.8, 0.7, 0.6]]";
              };
              pollutionHeatedWaterPumpSecond = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "How much should the Simple Stirling Water Pump produce pollution per second [range: -2147483648 ~ 2147483647, default: 5]";
              };
              pollutionHighPressureCoalBoilerPerSecond = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "Controls the pollution released per second by the high pressure coil boiler. [range: -2147483648 ~ 2147483647, default: 30]";
              };
              pollutionHighPressureLavaBoilerPerSecond = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Controls the pollution released per second by the high pressure lava boiler. [range: -2147483648 ~ 2147483647, default: 20]";
              };
              pollutionImplosionCompressorPerSecond = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "Controls the pollution released per second by the implosion compressor. [range: -2147483648 ~ 2147483647, default: 10000]";
              };
              pollutionLargeBronzeBoilerPerSecond = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "Controls the pollution released per second by the large bronze boiler. [range: -2147483648 ~ 2147483647, default: 200]";
              };
              pollutionLargeCombustionEnginePerSecond = lib.mkOption {
                type = lib.types.int;
                default = 480;
                description = "Controls the pollution released per second by the large combustion engine. [range: -2147483648 ~ 2147483647, default: 480]";
              };
              pollutionLargeGasTurbinePerSecond = lib.mkOption {
                type = lib.types.int;
                default = 300;
                description = "Controls the pollution released per second by the large gas turbine. [range: -2147483648 ~ 2147483647, default: 300]";
              };
              pollutionLargeSteelBoilerPerSecond = lib.mkOption {
                type = lib.types.int;
                default = 400;
                description = "Controls the pollution released per second by the large steel boiler. [range: -2147483648 ~ 2147483647, default: 400]";
              };
              pollutionLargeTitaniumBoilerPerSecond = lib.mkOption {
                type = lib.types.int;
                default = 800;
                description = "Controls the pollution released per second by the large titanium boiler. [range: -2147483648 ~ 2147483647, default: 800]";
              };
              pollutionLargeTungstenSteelBoilerPerSecond = lib.mkOption {
                type = lib.types.int;
                default = 1600;
                description = "Controls the pollution released per second by the large tungstensteel boiler. [range: -2147483648 ~ 2147483647, default: 1600]";
              };
              pollutionMultiSmelterPerSecond = lib.mkOption {
                type = lib.types.int;
                default = 400;
                description = "Controls the pollution released per second by the multi smelter. [range: -2147483648 ~ 2147483647, default: 400]";
              };
              pollutionOnExplosion = lib.mkOption {
                type = lib.types.int;
                default = 100000;
                description = "Controls the pollution released by an explosion. [range: -2147483648 ~ 2147483647, default: 100000]";
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
              pollutionPoisonLimit = lib.mkOption {
                type = lib.types.int;
                default = 750000;
                description = "Controls the threshold starting from which players get poison effect. [range: -2147483648 ~ 2147483647, default: 750000]";
              };
              pollutionPrimitveBlastFurnacePerSecond = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "Controls the pollution released per second by the bricked blast furnace. [range: -2147483648 ~ 2147483647, default: 200]";
              };
              pollutionPyrolyseOvenPerSecond = lib.mkOption {
                type = lib.types.int;
                default = 300;
                description = "Controls the pollution released per second by the pyrolyse oven. [range: -2147483648 ~ 2147483647, default: 300]";
              };
              # Stored as S: in the cfg because it's a float that Forge reads as a string
              pollutionReleasedByThrottle = lib.mkOption {
                type = lib.types.str;
                default = "0.041666668";
                description = "Controls the pollution reduction obtained with each increment of the circuit when throttling large boilers. [range: 1.4E-45 ~ 3.4028235E38, default: 0.041666668]";
              };
              pollutionReleasedByTierBoiler = lib.mkOption {
                type = lib.types.listOf lib.types.number;
                default = [0.0 1.0 1.43 1.86];
                description = "coefficient applied to base rate of single block boilers by tier (index 0 = ULV) [default: [0.0, 1.0, 1.43, 1.86]]";
              };
              pollutionReleasedByTierGeothermalGenerator = lib.mkOption {
                type = lib.types.listOf lib.types.number;
                default = [0.0 0.0 0.0 0.0 1.0 1.0 1.0];
                description = "coefficient applied to base rate of single block geothermal engines by tier (index 0 = ULV) [default: [0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0]]";
              };
              pollutionReleasedByTierRocketFuelGenerator = lib.mkOption {
                type = lib.types.listOf lib.types.number;
                default = [0.0 0.0 0.0 0.0 1.0 2.0 3.0];
                description = "coefficient applied to base rate of single block rocket engines by tier (index 0 = ULV) [default: [0.0, 0.0, 0.0, 0.0, 1.0, 2.0, 3.0]]";
              };
              pollutionReleasedByTierSemiFluidGenerator = lib.mkOption {
                type = lib.types.listOf lib.types.number;
                default = [0.0 2.0 4.0 8.0 12.0 16.0];
                description = "coefficient applied to base rate of single block semi fluid generators by tier (index 0 = ULV) [default: [0.0, 2.0, 4.0, 8.0, 12.0, 16.0]]";
              };
              pollutionSmallCoalBoilerPerSecond = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Controls the pollution released per second by the small coil boiler. [range: -2147483648 ~ 2147483647, default: 20]";
              };
              pollutionSmogLimit = lib.mkOption {
                type = lib.types.int;
                default = 550000;
                description = "Controls the threshold starting from which you can see fog. [range: -2147483648 ~ 2147483647, default: 550000]";
              };
              pollutionSourRainLimit = lib.mkOption {
                type = lib.types.int;
                default = 2000000;
                description = "Controls the threshold starting from which if it rains, will turn cobblestone into gravel and gravel into sand. [range: -2147483648 ~ 2147483647, default: 2000000]";
              };
              pollutionVegetationLimit = lib.mkOption {
                type = lib.types.int;
                default = 1000000;
                description = "Controls the threshold starting from which vegetation starts to be killed. [range: -2147483648 ~ 2147483647, default: 1000000]";
              };
              railcraftPollutes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Make Railcraft Pollute [default: true]";
              };
              renderBlockDoublePlant = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = ["net.minecraft.block.BlockDoublePlant:FLOWER"];
                description = "Double Plant Blocks - Recolor Block List";
              };
              renderBlockLiquid = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = ["net.minecraft.block.BlockLiquid:LIQUID"];
                description = "Liquid Blocks - Recolor Block List";
              };
              renderCrossedSquares = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "net.minecraft.block.BlockTallGrass:FLOWER"
                  "net.minecraft.block.BlockFlower:FLOWER"
                  "biomesoplenty.common.blocks.BlockBOPFlower:FLOWER"
                  "biomesoplenty.common.blocks.BlockBOPFlower2:FLOWER"
                  "biomesoplenty.common.blocks.BlockBOPFoliage:FLOWER"
                ];
                description = "Crossed Squares - Recolor Block List";
              };
              renderStandardBlock = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "net.minecraft.block.BlockGrass:GRASS"
                  "net.minecraft.block.BlockLeavesBase:LEAVES"
                  "biomesoplenty.common.blocks.BlockOriginGrass:GRASS"
                  "biomesoplenty.common.blocks.BlockLongGrass:GRASS"
                  "biomesoplenty.common.blocks.BlockNewGrass:GRASS"
                  "tconstruct.blocks.slime.SlimeGrass:GRASS"
                  "thaumcraft.common.blocks.BlockMagicalLeaves:LEAVES"
                ];
                description = "Standard Blocks - Recolor Block List";
              };
              renderblockVine = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = ["net.minecraft.block.BlockVine:FLOWER"];
                description = "Block Vine - Recolor Block List";
              };
              rocketPollutionAmount = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "Pollution Amount for Rockets [range: -2147483648 ~ 2147483647, default: 10000]";
              };
              rocketsPollute = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Make rockets Pollute [default: true]";
              };
              tunnelBorePollutionAmount = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Pollution Amount for tunnel bore [range: -2147483648 ~ 2147483647, default: 2]";
              };
            };
          };
        };
      };
    };
  };

  Client = lib.mkOption {
    description = "GregTech Client configuration (./config/GregTech/Client.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/GregTech/Client.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        client = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              colormodulation = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    cableinsulation = lib.mkOption {
                      default = {};
                      description = "RGB values for the cable insulation color modulation.";
                      type = lib.types.submodule {
                        options = {
                          blue = lib.mkOption { type = lib.types.int; default = 64; description = "[range: 0 ~ 255, default: 64]"; };
                          green = lib.mkOption { type = lib.types.int; default = 64; description = "[range: 0 ~ 255, default: 64]"; };
                          red = lib.mkOption { type = lib.types.int; default = 64; description = "[range: 0 ~ 255, default: 64]"; };
                        };
                      };
                    };
                    machinemetal = lib.mkOption {
                      default = {};
                      description = "RGB values for the machine metal color modulation (default GUI color).";
                      type = lib.types.submodule {
                        options = {
                          blue = lib.mkOption { type = lib.types.int; default = 255; description = "[range: 0 ~ 255, default: 255]"; };
                          green = lib.mkOption { type = lib.types.int; default = 220; description = "[range: 0 ~ 255, default: 220]"; };
                          red = lib.mkOption { type = lib.types.int; default = 210; description = "[range: 0 ~ 255, default: 210]"; };
                        };
                      };
                    };
                  };
                };
              };
              iface = lib.mkOption {
                default = {};
                description = "Interface section";
                type = lib.types.submodule {
                  options = {
                    coverTabsFlipped = lib.mkOption { type = lib.types.bool; default = false; description = "if true, puts the cover tabs display on the right of the UI instead of the left. [default: false]"; };
                    coverTabsVisible = lib.mkOption { type = lib.types.bool; default = true; description = "if true, makes cover tabs visible on GregTech machines. [default: true]"; };
                    separatorStyle = lib.mkOption { type = lib.types.int; default = 2; description = "Which style should tooltip separator lines have? 0: empty line, 1: dashed line, 2+: continuous line. [default: 2]"; };
                    titleTabStyle = lib.mkOption { type = lib.types.int; default = 0; description = "Which style to use for title tab on machine GUI? 0: text tab split-dark, 1: text tab unified, 2: item icon tab. [default: 0]"; };
                    tooltipFinisherStyle = lib.mkOption { type = lib.types.int; default = 3; description = "Which style should tooltip finisher separator lines have? 0: no line, 1: empty line, 2: dashed line, 3+: continuous line. [default: 3]"; };
                    tooltipShiftVerbosity = lib.mkOption { type = lib.types.int; default = 3; description = "How verbose should tooltips be when LSHIFT is held? 0: disabled, 1: one-line, 2: normal, 3+: extended. [default: 3]"; };
                    tooltipVerbosity = lib.mkOption { type = lib.types.int; default = 2; description = "How verbose should tooltips be? 0: disabled, 1: one-line, 2: normal, 3+: extended. [default: 2]"; };
                  };
                };
              };
              preference = lib.mkOption {
                default = {};
                description = "Preference section";
                type = lib.types.submodule {
                  options = {
                    inputBusInitialFilter = lib.mkOption { type = lib.types.bool; default = false; description = "if true, input filter will initially be on when input buses are placed in the world. [default: false]"; };
                    inputHatchInitialFilter = lib.mkOption { type = lib.types.bool; default = false; description = "if true, input filter will initially be on when input hatches are placed in the world. [default: false]"; };
                    invertCircuitScrollDirection = lib.mkOption { type = lib.types.bool; default = false; description = "If true, scrolling up while hovering a ghost circuit in a machine UI will increment the circuit number. [default: false]"; };
                    maxNumSounds = lib.mkOption { type = lib.types.int; default = 128; description = "Overrides the MC total playable sounds limit. MC default is 28. [range: 28 ~ 2048, default: 512]"; };
                    singleBlockInitialAllowMultiStack = lib.mkOption { type = lib.types.bool; default = false; description = "if true, allow multistacks on single blocks by default when they are first placed in the world. [default: false]"; };
                    singleBlockInitialFilter = lib.mkOption { type = lib.types.bool; default = false; description = "if true, input filter will initially be on when machines are placed in the world. [default: false]"; };
                  };
                };
              };
              render = lib.mkOption {
                default = {};
                description = "Render section";
                type = lib.types.submodule {
                  options = {
                    "Powerfail Notification Timeout" = lib.mkOption { type = lib.types.int; default = 0; description = "When >0, powerfail notifications will stop rendering after this many seconds. [default: 0]"; };
                    "Render MagLev Tethers" = lib.mkOption { type = lib.types.bool; default = true; description = "Render lines to MagLev Pylons when tethering [default: true]"; };
                    "Render Powerfail Notifications" = lib.mkOption { type = lib.types.bool; default = true; description = "[default: true]"; };
                    "Use Old Coil Textures" = lib.mkOption { type = lib.types.bool; default = false; description = "Disables coil lighting. Requires world reload. [default: false]"; };
                    renderDirtParticles = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables dirt particles when pollution reaches the threshold. [default: true]"; };
                    renderFlippedMachinesFlipped = lib.mkOption { type = lib.types.bool; default = true; description = "if true, render flipped machine with flipped textures. [default: true]"; };
                    renderGlowTextures = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables glowing of the machine controllers. [default: true]"; };
                    renderIndicatorsOnHatch = lib.mkOption { type = lib.types.bool; default = true; description = "if true, render indicators on hatches. [default: true]"; };
                    renderItemChargeBar = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables the blue charge bar for an electric item's charge. [default: true]"; };
                    renderItemDurabilityBar = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables the green -> red durability for an item's damage value. [default: true]"; };
                    renderPollutionFog = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables pollution fog when pollution reaches the threshold. [default: true]"; };
                    renderTileAmbientOcclusion = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables ambient-occlusion smooth lighting on tiles. [default: true]"; };
                    renderTransMetalFancy = lib.mkOption { type = lib.types.bool; default = true; description = "Enables or disables Trans Metal rendering, also impacts motors, pistons etc. Accessibility option. [default: true]"; };
                    useBlockUpdateHandler = lib.mkOption { type = lib.types.bool; default = false; description = "enables BaseMetaTileEntity block updates handled by BlockUpdateHandler. [default: false]"; };
                  };
                };
              };
              waila = lib.mkOption {
                default = {};
                description = "Waila section";
                type = lib.types.submodule {
                  options = {
                    wailaAverageNS = lib.mkOption { type = lib.types.bool; default = false; description = "if true, enables showing voltage tier of transformer for Waila, instead of raw voltage number. [default: false]"; };
                    wailaTransformerVoltageTier = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables showing voltage tier of transformer for Waila, instead of raw voltage number. [default: true]"; };
                  };
                };
              };
              nei = lib.mkOption {
                default = {};
                description = "NEI section";
                type = lib.types.submodule {
                  options = {
                    NEIOriginalVoltage = lib.mkOption { type = lib.types.bool; default = false; description = "if true, show original voltage when overclocked. [default: false]"; };
                    NEIRecipeOwner = lib.mkOption { type = lib.types.bool; default = false; description = "if true, shows the mod which added the recipe. [default: false]"; };
                    NEIRecipeOwnerStackTrace = lib.mkOption { type = lib.types.bool; default = false; description = "if true, show the stacktrace related to the recipe addition. [default: false]"; };
                    NEIRecipeSecondMode = lib.mkOption { type = lib.types.bool; default = true; description = "if true, shows the recipes using seconds (as opposed to ticks). [default: true]"; };
                    recipecategories = lib.mkOption {
                      default = {};
                      description = "Recipe category section. Possible values: ENABLE, MERGE, HIDE.";
                      type = lib.types.submodule {
                        options = {
                          absNonAlloyRecipes = lib.mkOption { type = lib.types.str; default = "ENABLE"; description = "Possible values: [ENABLE, MERGE, HIDE] [default: ENABLE]"; };
                          alloySmelterMolding = lib.mkOption { type = lib.types.str; default = "ENABLE"; description = "Possible values: [ENABLE, MERGE, HIDE] [default: ENABLE]"; };
                          alloySmelterRecycling = lib.mkOption { type = lib.types.str; default = "ENABLE"; description = "Possible values: [ENABLE, MERGE, HIDE] [default: ENABLE]"; };
                          arcFurnaceRecycling = lib.mkOption { type = lib.types.str; default = "ENABLE"; description = "Possible values: [ENABLE, MERGE, HIDE] [default: ENABLE]"; };
                          fluidExtractorRecycling = lib.mkOption { type = lib.types.str; default = "ENABLE"; description = "Possible values: [ENABLE, MERGE, HIDE] [default: ENABLE]"; };
                          forgeHammerRecycling = lib.mkOption { type = lib.types.str; default = "ENABLE"; description = "Possible values: [ENABLE, MERGE, HIDE] [default: ENABLE]"; };
                          maceratorRecycling = lib.mkOption { type = lib.types.str; default = "ENABLE"; description = "Possible values: [ENABLE, MERGE, HIDE] [default: ENABLE]"; };
                          ticBoltMolding = lib.mkOption { type = lib.types.str; default = "ENABLE"; description = "Possible values: [ENABLE, MERGE, HIDE] [default: ENABLE]"; };
                          ticPartExtruding = lib.mkOption { type = lib.types.str; default = "ENABLE"; description = "Possible values: [ENABLE, MERGE, HIDE] [default: ENABLE]"; };
                        };
                      };
                    };
                  };
                };
              };
              blockoverlay = lib.mkOption {
                default = {};
                description = "GT Tool Block Overlay section";
                type = lib.types.submodule {
                  options = {
                    alpha = lib.mkOption { type = lib.types.int; default = 127; description = "The alpha for the color of the block overlay [range: 0 ~ 255, default: 127]"; };
                    blue = lib.mkOption { type = lib.types.int; default = 0; description = "The blue color of the block overlay [range: 0 ~ 255, default: 0]"; };
                    green = lib.mkOption { type = lib.types.int; default = 0; description = "The green color of the block overlay [range: 0 ~ 255, default: 0]"; };
                    lineWidth = lib.mkOption { type = lib.types.str; default = "5"; description = "The line width of the block overlay [range: 0.0 ~ 30.0, default: 5]"; };
                    red = lib.mkOption { type = lib.types.int; default = 0; description = "The red color of the block overlay [range: 0 ~ 255, default: 0]"; };
                  };
                };
              };
              chat = lib.mkOption {
                default = {};
                description = "Chat message section";
                type = lib.types.submodule {
                  options = {
                    "Print Powerfail Help Text" = lib.mkOption { type = lib.types.bool; default = true; description = "Prints the powerfail command help text when receiving a powerfail. Printed once per game session. [default: true]"; };
                    "Print Powerfail Notifications" = lib.mkOption { type = lib.types.bool; default = true; description = "Displays a chat message when a powerfail occurs. [default: true]"; };
                  };
                };
              };
            };
          };
        };
      };
    };
  };

  GregTech = lib.mkOption {
    description = "GregTech main configuration (./config/GregTech/GregTech.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/GregTech/GregTech.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        gregtech = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              debug = lib.mkOption {
                default = {};
                description = "Debug section";
                type = lib.types.submodule {
                  options = {
                    D1 = lib.mkOption { type = lib.types.bool; default = false; description = "enable D1 flag (a set of debug logs) [default: false]"; };
                    D2 = lib.mkOption { type = lib.types.bool; default = false; description = "enable D2 flag (another set of debug logs) [default: false]"; };
                    allowBrokenRecipeMap = lib.mkOption { type = lib.types.bool; default = false; description = "This will prevent NEI from crashing but spams the Log. [default: false]"; };
                    debugBlockMiner = lib.mkOption { type = lib.types.bool; default = false; description = "Debug parameter for single block miner. [default: false]"; };
                    debugBlockPump = lib.mkOption { type = lib.types.bool; default = false; description = "Debug parameter for single block pump. [default: false]"; };
                    debugChunkloaders = lib.mkOption { type = lib.types.bool; default = false; description = "Debug parameter for chunk loaders. [default: false]"; };
                    debugCleanroom = lib.mkOption { type = lib.types.bool; default = false; description = "Debug parameters for cleanroom testing. [default: false]"; };
                    debugDriller = lib.mkOption { type = lib.types.bool; default = false; description = "Debug parameter for driller testing. [default: false]"; };
                    debugEntityCramming = lib.mkOption { type = lib.types.bool; default = false; description = "Debug parameter for entity cramming reduction. [default: false]"; };
                    debugOrevein = lib.mkOption { type = lib.types.bool; default = false; description = "Debug parameter for orevein generation. [default: false]"; };
                    debugSmallOres = lib.mkOption { type = lib.types.bool; default = false; description = "Debug parameter for small ore generation. [default: false]"; };
                    debugStones = lib.mkOption { type = lib.types.bool; default = false; description = "Debug parameter for stones generation. [default: false]"; };
                    debugWorldData = lib.mkOption { type = lib.types.bool; default = false; description = "Debug parameter for gregtech.api.util.GT_ChunkAssociatedData [default: false]"; };
                    debugWorldgen = lib.mkOption { type = lib.types.bool; default = false; description = "Debug parameter for world generation. Tracks chunks added/removed from run queue. [default: false]"; };
                  };
                };
              };
              features = lib.mkOption {
                default = {};
                description = "Features section";
                type = lib.types.submodule {
                  options = {
                    maxLogStackSize = lib.mkOption { type = lib.types.int; default = 64; description = "Controls the stacksize of tree related blocks. [range: -2147483648 ~ 2147483647, default: 64]"; };
                    maxOreStackSize = lib.mkOption { type = lib.types.int; default = 64; description = "Controls the stacksize of oredicted items used in ore treatment. [range: -2147483648 ~ 2147483647, default: 64]"; };
                    maxOtherBlocksStackSize = lib.mkOption { type = lib.types.int; default = 64; description = "Controls the stacksize of every oredicted prefix based items used for blocks. [range: -2147483648 ~ 2147483647, default: 64]"; };
                    maxPlankStackSize = lib.mkOption { type = lib.types.int; default = 64; description = "Controls the stacksize of oredicted planks. [range: -2147483648 ~ 2147483647, default: 64]"; };
                    upgradeStackSize = lib.mkOption { type = lib.types.int; default = 4; description = "Controls the stacksize of IC2 overclocker upgrades. [range: -2147483648 ~ 2147483647, default: 4]"; };
                  };
                };
              };
              general = lib.mkOption {
                default = {};
                description = "General section";
                type = lib.types.submodule {
                  options = {
                    CTMBlacklist = lib.mkOption { type = lib.types.listOf lib.types.str; default = ["team.chisel.block.BlockRoadLine"]; description = "Blacklist of blocks for CTM blocks."; };
                    CTMWhitelist = lib.mkOption { type = lib.types.listOf lib.types.str; default = ["team.chisel.block.BlockCarvable" "team.chisel.block.BlockCarvableGlass"]; description = "Whitelist of blocks for CTM blocks."; };
                    GTBees = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables GT5U and GT++ bees. [default: true]"; };
                    achievements = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables GT5U achievements. [default: true]"; };
                    allowSmallBoilerAutomation = lib.mkOption { type = lib.types.bool; default = false; description = "If true, allows small boiler automation. [default: false]"; };
                    autoMaintenaceHatchesInteraction = lib.mkOption { type = lib.types.bool; default = true; description = "if yes, allows the automatic interactions with the maintenance hatches. [default: true]"; };
                    axeWhenAdventure = lib.mkOption { type = lib.types.bool; default = true; description = "If true, spawns an axe at the start in adventure mode. [default: true]"; };
                    changedWoodenVanillaTools = lib.mkOption { type = lib.types.bool; default = true; description = "if true, change the default durability of wooden vanilla tools to 64 and increase speed to match stone [default: true]"; };
                    costlyCableConnection = lib.mkOption { type = lib.types.bool; default = false; description = "if true, wires will require soldering material to be connected. [default: false]"; };
                    craftingUnification = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables crafting unification. [default: true]"; };
                    crashOnNullRecipeInput = lib.mkOption { type = lib.types.bool; default = true; description = "if true, crashes on null recipe input. [default: true]"; };
                    cropNeedBlock = lib.mkOption { type = lib.types.bool; default = true; description = "if true, crops need a block below to fully grow. [default: true]"; };
                    doShowAllItemsInCreative = lib.mkOption { type = lib.types.bool; default = false; description = "if true, shows all the metaitems in creative and in NEI. [default: false]"; };
                    drinksAlwaysDrinkable = lib.mkOption { type = lib.types.bool; default = true; description = "If true, all the GT5U potions are always drinkable. [default: true]"; };
                    enableAllMaterials = lib.mkOption { type = lib.types.bool; default = false; description = "if true, enables all the materials in GT5U. [default: false]"; };
                    enableCleanroom = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables the cleanroom multi. [default: true]"; };
                    endOreYieldMultiplier = lib.mkOption { type = lib.types.bool; default = true; description = "if true, end ores yield twice as much as normal ores. [default: true]"; };
                    explosionItemDrop = lib.mkOption { type = lib.types.bool; default = false; description = "if true, drops the content of the machine inventory before exploding. [default: false]"; };
                    flintChance = lib.mkOption { type = lib.types.int; default = 30; description = "The chance of success to start a fire from the flint and steel. [range: -2147483648 ~ 2147483647, default: 30]"; };
                    gt6Cable = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables GT6 styled wire connections. [default: true]"; };
                    gt6Pipe = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables GT6 styled pipe connections. [default: true]"; };
                    harderMobSpawner = lib.mkOption { type = lib.types.bool; default = true; description = "if true, sets the hardness of the mobspawners to 500 and blast resistance to 6000000. [default: true]"; };
                    hideUnusedOres = lib.mkOption { type = lib.types.bool; default = false; description = "if true, hides unused ores. [default: false]"; };
                    hungerEffect = lib.mkOption { type = lib.types.bool; default = false; description = "If true, hungers the players based on inventory amount every 6s. [default: false]"; };
                    i18nPlaceholder = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enable placeholder for material names in lang file. [default: true]"; };
                    ic2EnergySourceCompat = lib.mkOption { type = lib.types.bool; default = true; description = "if true, allows GT5U cables to be IC2 power sources. [default: true]"; };
                    increaseDungeonLoot = lib.mkOption { type = lib.types.bool; default = false; description = "If true, increases dungeon loots in vanilla structures. [default: false]"; };
                    inventoryUnification = lib.mkOption { type = lib.types.bool; default = true; description = "If true, enables the item oredification of the items in the inventory. [default: true]"; };
                    itemDespawnTime = lib.mkOption { type = lib.types.int; default = 6000; description = "Entity despawn time. [range: -2147483648 ~ 2147483647, default: 6000]"; };
                    loggingExplosions = lib.mkOption { type = lib.types.bool; default = true; description = "if true, logs all the explosions in logs/Explosion.log. [default: true]"; };
                    loggingOreDict = lib.mkOption { type = lib.types.bool; default = false; description = "if true, logs all the oredict in logs/OreDict.log. [default: false]"; };
                    lowGravProcessing = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables low gravity requirement in some crafts. Forced to false if GalactiCraft not present. [default: true]"; };
                    maxEqualEntitiesAtOneSpot = lib.mkOption { type = lib.types.int; default = 6; description = "Max entity amount in the same block for entity cramming. [range: -2147483648 ~ 2147483647, default: 6]"; };
                    millisecondThesholdUntilLagWarning = lib.mkOption { type = lib.types.int; default = 100; description = "Controls the threshold (in ms) above which a lag warning is issued for a specific tile entity. [range: -2147483648 ~ 2147483647, default: 100]"; };
                    minimalDistancePoints = lib.mkOption { type = lib.types.int; default = 64; description = "Controls the minimum distance allowed for the long distance pipelines to form. [range: -2147483648 ~ 2147483647, default: 64]"; };
                    mixedOreOnlyYieldsTwoThirdsOfPureOre = lib.mkOption { type = lib.types.bool; default = false; description = "if true, mixed ores only yields the equivalent of 2/3 of the pure ores. [default: false]"; };
                    multiThreadedSounds = lib.mkOption { type = lib.types.bool; default = false; description = "if true, makes the GT5U sounds multi-threaded. [default: false]"; };
                    nerfedWoodPlank = lib.mkOption { type = lib.types.bool; default = true; description = "If true, nerfs planks recipes. [default: true]"; };
                    netherOreYieldMultiplier = lib.mkOption { type = lib.types.bool; default = true; description = "if true, nether ores yield twice as much as normal ores. [default: true]"; };
                    oreveinAttempts = lib.mkOption { type = lib.types.int; default = 64; description = "Control number of attempts to find a valid orevein. [range: -2147483648 ~ 2147483647, default: 64]"; };
                    oreveinMaxPlacementAttempts = lib.mkOption { type = lib.types.int; default = 8; description = "Control number of attempts to place a valid ore vein. [range: -2147483648 ~ 2147483647, default: 8]"; };
                    oreveinPercentage = lib.mkOption { type = lib.types.int; default = 100; description = "Control percentage of filled 3x3 chunks. Lower means less oreveins spawn. [range: -2147483648 ~ 2147483647, default: 100]"; };
                    oreveinPlacerOres = lib.mkOption { type = lib.types.bool; default = true; description = "Whether to place small ores as placer ores for an orevein. [default: true]"; };
                    oreveinPlacerOresMultiplier = lib.mkOption { type = lib.types.int; default = 2; description = "Multiplier to control how many placer ores get generated. [range: -2147483648 ~ 2147483647, default: 2]"; };
                    richOreYieldMultiplier = lib.mkOption { type = lib.types.bool; default = true; description = "if true, rich ores yield twice as much as normal ores. [default: true]"; };
                    survivalIntoAdventure = lib.mkOption { type = lib.types.bool; default = false; description = "If true, forces the survival map into adventure mode. [default: false]"; };
                    ticksForLagAveraging = lib.mkOption { type = lib.types.int; default = 25; description = "Controls the amount of tick over the lag averaging is done with the scanner. [range: -2147483648 ~ 2147483647, default: 25]"; };
                    timber = lib.mkOption { type = lib.types.bool; default = false; description = "If true, enables the timber axe (cuts down whole tree in a single hit). [default: false]"; };
                  };
                };
              };
              harvestlevel = lib.mkOption {
                default = {};
                description = "Harvest level section";
                type = lib.types.submodule {
                  options = {
                    activateHarvestLevelChange = lib.mkOption { type = lib.types.bool; default = false; description = "Activate Harvest Level Change [default: false]"; };
                    graniteHarvestLevel = lib.mkOption { type = lib.types.int; default = 3; description = "GraniteHarvestLevel harvest level [range: -2147483648 ~ 2147483647, default: 3]"; };
                    maxHarvestLevel = lib.mkOption { type = lib.types.int; default = 7; description = "Maximum harvest level [range: -2147483648 ~ 2147483647, default: 7]"; };
                  };
                };
              };
              machines = lib.mkOption {
                default = {};
                description = "Machines section";
                type = lib.types.submodule {
                  options = {
                    alwaysReloadChunkloaders = lib.mkOption { type = lib.types.bool; default = false; description = "This will make all chunkloading machines act as World Anchors (true) or Passive Anchors (false). [default: false]"; };
                    blacklistedTileEntiyClassNamesForWA = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      description = "Blacklist for the world accelerator in TE mode.";
                      default = [
                        "com.rwtema.extrautils.tileentity.enderquarry.TileEntityEnderQuarry"
                        "advsolar.common.tiles.TileEntityUltimateSolarPanel"
                        "advsolar.common.tiles.TileEntitySolarPanel"
                        "advsolar.common.tiles.TileEntityQuantumSolarPanel"
                        "advsolar.common.tiles.TileEntityHybridSolarPanel"
                        "advsolar.common.tiles.TileEntityAdvancedSolarPanel"
                        "com.supsolpans.tiles.TileAdminSolarPanel"
                        "com.supsolpans.tiles.TilePhotonicSolarPanel"
                        "com.supsolpans.tiles.TileSingularSolarPanel"
                        "com.supsolpans.tiles.TileSpectralSolarPanel"
                        "emt.tile.solar.air.TileEntityAirSolar"
                        "emt.tile.solar.air.TileEntityDoubleAirSolar"
                        "emt.tile.solar.air.TileEntityTripleAirSolar"
                        "emt.tile.solar.air.TileEntityQuadrupleAirSolar"
                        "emt.tile.solar.air.TileEntityQuintupleAirSolar"
                        "emt.tile.solar.air.TileEntitySextupleAirSolar"
                        "emt.tile.solar.air.TileEntitySeptupleAirSolar"
                        "emt.tile.solar.air.TileEntityOctupleAirSolar"
                        "emt.tile.solar.compressed.TileEntityCompressedSolar"
                        "emt.tile.solar.compressed.TileEntityDoubleCompressedSolar"
                        "emt.tile.solar.compressed.TileEntityTripleCompressedSolar"
                        "emt.tile.solar.compressed.TileEntityQuadrupleAirSolar"
                        "emt.tile.solar.compressed.TileEntityQuintupleAirSolar"
                        "emt.tile.solar.compressed.TileEntitySextupleAirSolar"
                        "emt.tile.solar.compressed.TileEntitySeptupleAirSolar"
                        "emt.tile.solar.compressed.TileEntityOctupleAirSolar"
                        "emt.tile.solar.dark.TileEntityDarkSolar"
                        "emt.tile.solar.dark.TileEntityDoubleDarkSolar"
                        "emt.tile.solar.dark.TileEntityTripleDarkSolar"
                        "emt.tile.solar.dark.TileEntityQuadrupleAirSolar"
                        "emt.tile.solar.dark.TileEntityQuintupleAirSolar"
                        "emt.tile.solar.dark.TileEntitySextupleAirSolar"
                        "emt.tile.solar.dark.TileEntitySeptupleAirSolar"
                        "emt.tile.solar.dark.TileEntityOctupleAirSolar"
                        "emt.tile.solar.earth.TileEntityDoubleEarthSolar"
                        "emt.tile.solar.earth.TileEntityEarthSolar"
                        "emt.tile.solar.earth.TileEntityTripleEarthSolar"
                        "emt.tile.solar.earth.TileEntityQuadrupleAirSolar"
                        "emt.tile.solar.earth.TileEntityQuintupleAirSolar"
                        "emt.tile.solar.earth.TileEntitySextupleAirSolar"
                        "emt.tile.solar.earth.TileEntitySeptupleAirSolar"
                        "emt.tile.solar.earth.TileEntityOctupleAirSolar"
                        "emt.tile.solar.fire.TileEntityDoubleFireSolar"
                        "emt.tile.solar.fire.TileEntityFireSolar"
                        "emt.tile.solar.fire.TileEntityTripleFireSolar"
                        "emt.tile.solar.fire.TileEntityQuadrupleAirSolar"
                        "emt.tile.solar.fire.TileEntityQuintupleAirSolar"
                        "emt.tile.solar.fire.TileEntitySextupleAirSolar"
                        "emt.tile.solar.fire.TileEntitySeptupleAirSolar"
                        "emt.tile.solar.fire.TileEntityOctupleAirSolar"
                        "emt.tile.solar.order.TileEntityDoubleOrderSolar"
                        "emt.tile.solar.order.TileEntityOrderSolar"
                        "emt.tile.solar.order.TileEntityTripleOrderSolar"
                        "emt.tile.solar.order.TileEntityQuadrupleAirSolar"
                        "emt.tile.solar.order.TileEntityQuintupleAirSolar"
                        "emt.tile.solar.order.TileEntitySextupleAirSolar"
                        "emt.tile.solar.order.TileEntitySeptupleAirSolar"
                        "emt.tile.solar.order.TileEntityOctupleAirSolar"
                        "emt.tile.solar.water.TileEntityDoubleWaterSolar"
                        "emt.tile.solar.water.TileEntityTripleWaterSolar"
                        "emt.tile.solar.water.TileEntityWaterSolar"
                        "emt.tile.solar.water.TileEntityQuadrupleAirSolar"
                        "emt.tile.solar.water.TileEntityQuintupleAirSolar"
                        "emt.tile.solar.water.TileEntitySextupleAirSolar"
                        "emt.tile.solar.water.TileEntitySeptupleAirSolar"
                        "emt.tile.solar.water.TileEntityOctupleAirSolar"
                        "com.lulan.compactkineticgenerators.tileentity.TileCkgE"
                        "com.lulan.compactkineticgenerators.tileentity.TileCkgH"
                        "com.lulan.compactkineticgenerators.tileentity.TileCkgL"
                        "com.lulan.compactkineticgenerators.tileentity.TileCkgM"
                        "com.lulan.compactkineticgenerators.tileentity.TileCkwaE"
                        "com.lulan.compactkineticgenerators.tileentity.TileCkwaH"
                        "com.lulan.compactkineticgenerators.tileentity.TileCkwaL"
                        "com.lulan.compactkineticgenerators.tileentity.TileCkwaM"
                        "com.lulan.compactkineticgenerators.tileentity.TileCkwmE"
                        "com.lulan.compactkineticgenerators.tileentity.TileCkwmH"
                        "com.lulan.compactkineticgenerators.tileentity.TileCkwmL"
                        "com.lulan.compactkineticgenerators.tileentity.TileCkwmM"
                        "gtPlusPlus.core.tileentities.general.TileEntityFishTrap"
                        "gtPlusPlus.core.tileentities.general.TileEntityDecayablesChest"
                        "net.bdew.gendustry.machines.apiary.TileApiary"
                        "goodgenerator.blocks.tileEntity.EssentiaHatch"
                        "magicbees.tileentity.TileEntityApimancersDrainerCommon"
                        "magicbees.tileentity.TileEntityApimancersDrainerGT"
                      ];
                    };
                    cleanroomGlass = lib.mkOption { type = lib.types.str; default = "5.0"; description = "Percentage how much ReinforcedGlass is Allowed in Cleanroom Walls. [range: 1.4E-45 ~ 3.4028235E38, default: 5.0]"; };
                    coloredGUI = lib.mkOption { type = lib.types.bool; default = true; description = "If true, enable the guis of the machines to get a tint of the color of the dye applied to the machine. [default: true]"; };
                    disableDigitalChestsExternalAccess = lib.mkOption { type = lib.types.bool; default = false; description = "If true, then digital chest with AE2 storage bus will be accessible only through AE2 [default: false]"; };
                    enableChunkloaders = lib.mkOption { type = lib.types.bool; default = true; description = "This will let machines such as drills and pumps chunkload their work area. [default: true]"; };
                    machineExplosions = lib.mkOption { type = lib.types.bool; default = true; description = "If true, machines can explode. [default: true]"; };
                    machineFireExplosions = lib.mkOption { type = lib.types.bool; default = true; description = "If true, machine will randomly explode if there is fire on adjacent blocks. [default: true]"; };
                    machineFlammable = lib.mkOption { type = lib.types.bool; default = true; description = "If true, machine can take fire. [default: true]"; };
                    machineMetalGUI = lib.mkOption { type = lib.types.bool; default = false; description = "If true and machine tint is activated, guis will have a uniform metallic tint no matter what color. [default: false]"; };
                    machineNonWrenchExplosions = lib.mkOption { type = lib.types.bool; default = true; description = "If true, explodes if the machine is dismantled without a wrench. [default: true]"; };
                    machineRainExplosions = lib.mkOption { type = lib.types.bool; default = true; description = "If true, will randomly explode if it is raining. [default: true]"; };
                    machineThunderExplosions = lib.mkOption { type = lib.types.bool; default = true; description = "If true, will randomly explode during thunderstorm if the machine can be exposed to rain. [default: true]"; };
                    machineWireFire = lib.mkOption { type = lib.types.bool; default = true; description = "If true, burn the wires on explosion. [default: true]"; };
                    ticksBetweenSounds = lib.mkOption { type = lib.types.int; default = 30; description = "Number of ticks between sending sound packets to clients for electric machines. [range: -2147483648 ~ 2147483647, default: 30]"; };
                    useMachineMetal = lib.mkOption { type = lib.types.bool; default = true; description = "If true, use the definition of the metallic tint in GT5U. [default: true]"; };
                  };
                };
              };
              oredropbehavior = lib.mkOption {
                default = {};
                description = "Ore drop behavior section";
                type = lib.types.submodule {
                  options = {
                    setting = lib.mkOption {
                      type = lib.types.str;
                      default = "FortuneItem";
                      description = "Ore drop behavior. Possible values: [Block, PerDimBlock, UnifiedBlock, FortuneItem, Item] [default: FortuneItem]";
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

  MachineStats = lib.mkOption {
    description = "GregTech MachineStats configuration (./config/GregTech/MachineStats.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/GregTech/MachineStats.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        machine_stats = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              bronzesolarboiler = lib.mkOption {
                default = {};
                description = "Bronze solar boiler section";
                type = lib.types.submodule {
                  options = {
                    calcificationTicks = lib.mkOption { type = lib.types.int; default = 1080000; description = "Number of run-time ticks before boiler starts calcification. 100% calcification reached at 2x this. [range: -2147483648 ~ 2147483647, default: 1080000]"; };
                    cooldownTicks = lib.mkOption { type = lib.types.int; default = 45; description = "Number of ticks it takes to lose 1°C. [range: -2147483648 ~ 2147483647, default: 45]"; };
                    maxOutputPerSecond = lib.mkOption { type = lib.types.int; default = 120; description = "[range: -2147483648 ~ 2147483647, default: 120]"; };
                    minOutputPerSecond = lib.mkOption { type = lib.types.int; default = 40; description = "[range: -2147483648 ~ 2147483647, default: 40]"; };
                  };
                };
              };
              steelsolarboiler = lib.mkOption {
                default = {};
                description = "Steel solar boiler section";
                type = lib.types.submodule {
                  options = {
                    calcificationTicks = lib.mkOption { type = lib.types.int; default = 1080000; description = "Number of run-time ticks before boiler starts calcification. 100% calcification reached at 2x this. [range: -2147483648 ~ 2147483647, default: 1080000]"; };
                    cooldownTicks = lib.mkOption { type = lib.types.int; default = 75; description = "Number of ticks it takes to lose 1°C. [range: -2147483648 ~ 2147483647, default: 75]"; };
                    maxOutputPerSecond = lib.mkOption { type = lib.types.int; default = 360; description = "[range: -2147483648 ~ 2147483647, default: 360]"; };
                    minOutputPerSecond = lib.mkOption { type = lib.types.int; default = 120; description = "[range: -2147483648 ~ 2147483647, default: 120]"; };
                  };
                };
              };
              machines = lib.mkOption {
                default = {};
                description = "Machines section";
                type = lib.types.submodule {
                  options = {
                    allowMultipleEggs = lib.mkOption { type = lib.types.bool; default = true; description = "If true, allows for multiple eggs on the magical energy absorber. [default: true]"; };
                    damageFactorHigh = lib.mkOption { type = lib.types.str; default = "0.6"; description = "Controls the damageFactorHigh variable in the maintenance damage equation. [range: 1.4E-45 ~ 3.4028235E38, default: 0.6]"; };
                    damageFactorLow = lib.mkOption { type = lib.types.int; default = 5; description = "Controls the damageFactorLow variable in the maintenance damage equation. [range: -2147483648 ~ 2147483647, default: 5]"; };
                    disableMaintenanceChecks = lib.mkOption { type = lib.types.bool; default = false; description = "if true, disable maintenance checks. [default: false]"; };
                    forceFreeFace = lib.mkOption { type = lib.types.bool; default = false; description = "If true, requires at least a free face to open a machine gui. [default: false]"; };
                  };
                };
              };
              massfabricator = lib.mkOption {
                default = {};
                description = "Mass fabricator section";
                type = lib.types.submodule {
                  options = {
                    UUAPerUUM = lib.mkOption { type = lib.types.int; default = 1; description = "mb of UUA per UUM. [range: -2147483648 ~ 2147483647, default: 1]"; };
                    UUASpeedBonus = lib.mkOption { type = lib.types.int; default = 4; description = "Speed bonus delivered by the UUA. [range: -2147483648 ~ 2147483647, default: 4]"; };
                    durationMultiplier = lib.mkOption { type = lib.types.int; default = 3215; description = "Duration multiplier. [range: -2147483648 ~ 2147483647, default: 3215]"; };
                    requiresUUA = lib.mkOption { type = lib.types.bool; default = false; description = "if true, requires UUA to run the mass fab. [default: false]"; };
                  };
                };
              };
              microwaveenergytransmitter = lib.mkOption {
                default = {};
                description = "Microwave energy transmitter section";
                type = lib.types.submodule {
                  options = {
                    maxLoss = lib.mkOption { type = lib.types.int; default = 50; description = "max loss. [range: -2147483648 ~ 2147483647, default: 50]"; };
                    maxLossDistance = lib.mkOption { type = lib.types.int; default = 10000; description = "max loss distance. [range: -2147483648 ~ 2147483647, default: 10000]"; };
                    passiveEnergyUse = lib.mkOption { type = lib.types.bool; default = true; description = "if true, it has a passive energy loss. [default: true]"; };
                  };
                };
              };
              teleporter = lib.mkOption {
                default = {};
                description = "Teleporter section";
                type = lib.types.submodule {
                  options = {
                    interDimensionalTPAllowed = lib.mkOption { type = lib.types.bool; default = true; description = "if true, allows interdim tp [default: true]"; };
                    passiveEnergyDrain = lib.mkOption { type = lib.types.int; default = 2048; description = "passive energy loss. [range: -2147483648 ~ 2147483647, default: 2048]"; };
                    powerMultiplier = lib.mkOption { type = lib.types.int; default = 100; description = "power multiplier. [range: -2147483648 ~ 2147483647, default: 100]"; };
                  };
                };
              };
              cleanroom = lib.mkOption {
                default = {};
                description = "Cleanroom section";
                type = lib.types.submodule {
                  options = {
                    allowedBlocks = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [
                        "BW_GlasBlocks"
                        "tile.openblocks.elevator"
                        "tile.openblocks.elevator_rotating"
                        "tile.blockTravelAnchor"
                        "tile.blockCosmeticOpaque:2"
                        "tile.extrautils:etherealglass"
                      ];
                      description = "List of other blocks allowed as a part of the cleanroom. Format: <block name> or <block name>:<meta>.";
                    };
                    maxReplacementPercentage = lib.mkOption { type = lib.types.int; default = 30; description = "Maximum percentage of plascrete blocks which can be replaced by other valid blocks. [range: 0 ~ 100, default: 30]"; };
                    minCasingCount = lib.mkOption { type = lib.types.int; default = 20; description = "Minimum number of plascrete blocks in a valid cleanroom. [range: 0 ~ 2147483647, default: 20]"; };
                  };
                };
              };
            };
          };
        };
      };
    };
  };

  Other = lib.mkOption {
    description = "GregTech Other configuration (./config/GregTech/Other.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/GregTech/Other.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        other = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              pipeWrenchingChainRange = lib.mkOption { type = lib.types.int; default = 64; description = "How much pipes you can chain wrench to disable their input. [range: -2147483648 ~ 2147483647, default: 64]"; };
              sprayCanChainRange = lib.mkOption { type = lib.types.int; default = 64; description = "How much blocks you can chain paint with GT spray cans. [range: -2147483648 ~ 2147483647, default: 64]"; };
              sprayCanUses = lib.mkOption { type = lib.types.int; default = 512; description = "How much blocks you can paint with GT spray cans. [range: -2147483648 ~ 2147483647, default: 512]"; };
            };
          };
        };
      };
    };
  };

  OverpoweredStuff = lib.mkOption {
    description = "GregTech OverpoweredStuff configuration (./config/GregTech/OverpoweredStuff.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/GregTech/OverpoweredStuff.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        op_stuff = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              RFExplosions = lib.mkOption { type = lib.types.bool; default = false; description = "If true, machines will explode if RFs injected to a GT machine are above 600 * the max energy they can store. [default: false]"; };
              howMuchEUWith100RFInInput = lib.mkOption { type = lib.types.int; default = 100; description = "How much EU you get with 100 RF in input. [range: -2147483648 ~ 2147483647, default: 100]"; };
              howMuchRFWith100EUInInput = lib.mkOption { type = lib.types.int; default = 360; description = "How much RF you get with 100 EU in input. [range: -2147483648 ~ 2147483647, default: 360]"; };
              ignoreTinkerConstruct = lib.mkOption { type = lib.types.bool; default = true; description = "if true, ignores TinkerConstruct in ore registration. [default: true]"; };
              inputRF = lib.mkOption { type = lib.types.bool; default = false; description = "if true, enables RF -> EU conversion. [default: false]"; };
              outputRF = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables EU -> RF conversion. [default: true]"; };
              # Stored as S: in the cfg because it's a float that Forge reads as a string
              replicatorExponent = lib.mkOption { type = lib.types.str; default = "1.2"; description = "Controls the exponent used in the computation of the UUM required to replicate an element (uum = mass^replicatorExponent). [range: 1.4E-45 ~ 3.4028235E38, default: 1.2]"; };
            };
          };
        };
      };
    };
  };

  WorldGeneration = lib.mkOption {
    description = "GregTech WorldGeneration configuration (./config/GregTech/WorldGeneration.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/GregTech/WorldGeneration.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        worldgen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              general = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    disableVanillaOres = lib.mkOption { type = lib.types.bool; default = true; description = "If true, disables vanilla oregen. [default: true]"; };
                    generateBasaltOres = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables basalt ore gen. [default: true]"; };
                    generateBlackGraniteOres = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables black granite ore gen. [default: true]"; };
                    generateMarbleOres = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables marble ore gen. [default: true]"; };
                    generateRedGraniteOres = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables red granite ore gen. [default: true]"; };
                    generateUndergroundDirtGen = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables underground dirt gen. Does nothing if the vanilla oregen is enabled! [default: true]"; };
                    generateUndergroundGravelGen = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables underground gravel gen. Does nothing if the vanilla oregen is enabled! [default: true]"; };
                  };
                };
              };
              endasteroids = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    EndAsteroidMaxSize = lib.mkOption { type = lib.types.int; default = 200; description = "The maximum size for the end asteroids. [range: -2147483648 ~ 2147483647, default: 200]"; };
                    EndAsteroidMinSize = lib.mkOption { type = lib.types.int; default = 200; description = "The minimum size for the end asteroids. [range: -2147483648 ~ 2147483647, default: 200]"; };
                    EndAsteroidProbability = lib.mkOption { type = lib.types.int; default = 300; description = "The probability weight to generate end asteroids. [range: -2147483648 ~ 2147483647, default: 300]"; };
                    generateEndAsteroids = lib.mkOption { type = lib.types.bool; default = true; description = "if true, enables end asteroids. [default: true]"; };
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
