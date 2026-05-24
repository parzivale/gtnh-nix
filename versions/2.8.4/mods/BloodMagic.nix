{lib, ...}: {
  meteors_AncientDebrisMeteor_json = lib.mkOption {
    description = "meteors_AncientDebrisMeteor_json configuration (./config/BloodMagic/meteors/AncientDebrisMeteor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/AncientDebrisMeteor.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 6669666;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "minecraft:netherrack:0:90" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 90;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.blockcasings4:7";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "minecraft:soul_sand:0:90" "etfuturum:soul_soil:0:80" "minecraft:obsidian:0:80" "etfuturum:magma:0:80" "gregtech:gt.blockgranites:8:60" "gregtech:gt.blockgranites:0:50" "Railcraft:brick.nether:2:40" "minecraft:nether_brick:0:40" "etfuturum:red_netherbrick:1:10" "etfuturum:red_netherbrick:0:10" "etfuturum:crying_obsidian:0:10" "etfuturum:ancient_debris:0:2" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 3;
      };
      };
    };
  };
  meteors_AsteroidLateGameOres_json = lib.mkOption {
    description = "meteors_AsteroidLateGameOres_json configuration (./config/BloodMagic/meteors/AsteroidLateGameOres.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/AsteroidLateGameOres.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 100000000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.blockmachines:10951";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreEndstoneBlackPlutonium:100" "OREDICT:oreEndstoneCosmicNeutronium:5" "OREDICT:oreEndstoneYttrium:75" "OREDICT:oreEndstoneGallium:75" "OREDICT:oreEndstoneMysteriousCrystal:25" "OREDICT:oreEndstoneDeepIron:150" "OREDICT:oreEndstoneNaquadah:125" "OREDICT:oreEndstoneNaquadahEnriched:75" "OREDICT:oreEndstoneNaquadria:50" "OREDICT:oreEndstoneUranium235:25" "OREDICT:oreEndstonePlutonium241:25" "OREDICT:oreEndstoneUranium:50" "OREDICT:oreEndstonePlutonium:50" "OREDICT:oreEndstoneSamarium:25" "OREDICT:oreEndstoneNetherStar:10" "OREDICT:oreEndstoneNeutronium:10" "OREDICT:oreEndstoneNiobium:75" "OREDICT:oreEndstoneBorax:75" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 22;
      };
      };
    };
  };
  meteors_BeeHive_json = lib.mkOption {
    description = "meteors_BeeHive_json configuration (./config/BloodMagic/meteors/BeeHive.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/BeeHive.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 500666;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "harvestcraft:beehive:0:80" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "MagicBees:item.frenziedFrame";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "ExtraBees:hive:0:40" "ExtraBees:hive:1:40" "Forestry:beehives:1:40" "ExtraBees:hive:3:40" "Forestry:beehives:4:40" "Forestry:beehives:3:40" "Forestry:beehives:2:30" "Forestry:beehives:7:30" "Forestry:beehives:6:30" "ExtraBees:hive:2:25" "MagicBees:hive:2:20" "MagicBees:hive:0:20" "MagicBees:hive:1:20" "BiomesOPlenty:hive:1:95" "etfuturum:honey_block:0:100" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 7;
      };
      };
    };
  };
  meteors_BotGaia_json = lib.mkOption {
    description = "meteors_BotGaia_json configuration (./config/BloodMagic/meteors/BotGaia.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/BotGaia.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 1000000001;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "Botania:prismarine:0:80" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 50;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "Botania:laputaShard:19";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "Botania:customBrick:4:90" "Botania:seaLamp:0:80" "Botania:prismarine:1:80" "Botania:prismarine:2:80" "Botania:livingwood:5:60" "Botania:storage:0:50" "dreamcraft:tile.ManaPearl:0:40" "dreamcraft:tile.ManaPowder:0:40" "Botania:storage:2:10" "dreamcraft:tile.PixieDust:0:10" "dreamcraft:tile.Gaia:0:2" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 7;
      };
      };
    };
  };
  meteors_CallistoMeteor_json = lib.mkOption {
    description = "meteors_CallistoMeteor_json configuration (./config/BloodMagic/meteors/CallistoMeteor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/CallistoMeteor.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 1000000;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:rockCallisto:350" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 27;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.metaitem.01:32464";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreMarbleTopaz:50" "OREDICT:oreMarbleBlueTopaz:50" "OREDICT:oreMarbleChromite:75" "OREDICT:oreMarbleUvarovite:125" "OREDICT:oreMarbleTungstate:45" "OREDICT:oreMarbleScheelite:45" "OREDICT:oreMarbleLithium:30" "OREDICT:oreMarbleAlduorite:10" "OREDICT:oreMarblePalladium:35" "OREDICT:oreMarbleChrome:50" "OREDICT:oreMarblePlatinum:65" "OREDICT:oreMarbleNickel:100" "OREDICT:oreMarbleIridium:50" "OREDICT:oreMarbleLedox:50" "OREDICT:oreMarbleUranium:10" "OREDICT:oreMarblePlutonium:1" "OREDICT:oreMarbleCallistoIce:125" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      };
    };
  };
  meteors_CheatyVeryLowQuantityRawTengam_json = lib.mkOption {
    description = "meteors_CheatyVeryLowQuantityRawTengam_json configuration (./config/BloodMagic/meteors/CheatyVeryLowQuantityRawTengam.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/CheatyVeryLowQuantityRawTengam.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 1000000001;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "gregtech:gt.blockores:817:72" "OREDICT:oreTengamRaw:1" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 10;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "GalacticraftAmunRa:tile.machines2:1";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreMarbleSalt:69" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 16;
      };
      };
    };
  };
  meteors_Chinfinity_json = lib.mkOption {
    description = "meteors_Chinfinity_json configuration (./config/BloodMagic/meteors/Chinfinity.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/Chinfinity.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 80000000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.blockmachines:1186";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreEndstoneElectrum:100" "OREDICT:oreEndstoneAluminium:100" "OREDICT:oreEndstoneTitanium:100" "OREDICT:oreEndstoneTungsten:100" "OREDICT:oreEndstoneNeodymium:100" "OREDICT:oreEndstoneChrome:100" "OREDICT:oreEndstoneBeryllium:100" "OREDICT:oreEndstoneManganese:100" "OREDICT:oreEndstoneGallium:100" "OREDICT:oreEndstoneYttrium:100" "OREDICT:oreEndstoneNiobium:100" "OREDICT:oreEndstoneStrontium:100" "OREDICT:oreEndstoneCadmium:100" "OREDICT:oreEndstoneTellurium:100" "OREDICT:oreEndstoneBarium:100" "OREDICT:oreEndstoneLanthanum:10" "OREDICT:oreEndstoneIndium:5" "OREDICT:oreEndstoneCerium:100" "OREDICT:oreEndstonePraseodymium:100" "OREDICT:oreEndstonePromethium:100" "OREDICT:oreEndstoneSamarium:25" "OREDICT:oreEndstoneEuropium:5" "OREDICT:oreEndstoneTerbium:100" "OREDICT:oreEndstoneDysprosium:100" "OREDICT:oreEndstoneErbium:100" "OREDICT:oreEndstoneThulium:100" "OREDICT:oreEndstoneLutetium:75" "OREDICT:oreEndstoneTantalum:100" "OREDICT:oreEndstoneYtterbium:100" "OREDICT:oreEndstoneGadolinium:100" "OREDICT:oreEndstoneHolmium:100" "OREDICT:oreEndstoneCaesium:100" "OREDICT:oreEndstoneScandium:100" "OREDICT:oreTiberium:100" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 16;
      };
      };
    };
  };
  meteors_ConcentratedLeadEV_json = lib.mkOption {
    description = "meteors_ConcentratedLeadEV_json configuration (./config/BloodMagic/meteors/ConcentratedLeadEV.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/ConcentratedLeadEV.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 2000000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.blockmachines:214";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreEndstoneLead:100" "OREDICT:oreEndstoneGalena:200" "OREDICT:oreEndstoneSilver:100" "OREDICT:oreEndstoneCryolite:100" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 9;
      };
      };
    };
  };
  meteors_EFRAmethyst_json = lib.mkOption {
    description = "meteors_EFRAmethyst_json configuration (./config/BloodMagic/meteors/EFRAmethyst.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/EFRAmethyst.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 234567;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "etfuturum:tuff:0:200" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "etfuturum:amethyst_cluster_2:6";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "etfuturum:amethyst_block:0:95" "etfuturum:calcite:0:90" "etfuturum:deepslate:0:80" "etfuturum:blackstone:0:80" "etfuturum:bone:0:40" "etfuturum:gilded_blackstone:0:20" "BiomesOPlenty:gemOre:0:25" "minecraft:monster_egg:1:10" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 22;
      };
      };
    };
  };
  meteors_ElvenGateway_json = lib.mkOption {
    description = "meteors_ElvenGateway_json configuration (./config/BloodMagic/meteors/ElvenGateway.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/ElvenGateway.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 50000000;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "Botania:livingwood:0:200" "Botania:livingrock:0:200" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "Botania:alfheimPortal";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "etfuturum:smooth_quartz:0:80" "appliedenergistics2:tile.BlockQuartz:0:60" "Botania:quartzTypeSunny:0:100" "Botania:quartzTypeBlaze:0:100" "Botania:quartzTypeRed:0:100" "Botania:quartzTypeDark:0:100" "Botania:quartzTypeLavender:0:100" "Botania:quartzTypeMana:0:75" "Botania:quartzTypeElf:0:50" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 22;
      };
      };
    };
  };
  meteors_EndstoneHEE_json = lib.mkOption {
    description = "meteors_EndstoneHEE_json configuration (./config/BloodMagic/meteors/EndstoneHEE.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/EndstoneHEE.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 500000;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:endstone:799" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 76;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "minecraft:end_stone";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreHeeEndPowder:100" "OREDICT:oreHeeStardust:50" "OREDICT:oreHeeIgneousRock:50" "OREDICT:oreHeeEndium:50" "OREDICT:oreHeeInstabilityOrb:1" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 12;
      };
      };
    };
  };
  meteors_GraphiteMeteor_json = lib.mkOption {
    description = "meteors_GraphiteMeteor_json configuration (./config/BloodMagic/meteors/GraphiteMeteor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/GraphiteMeteor.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 420000;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:stoneGraniteBlack:250" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 25;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.metaitem.02:30500";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreBlackgraniteGraphite:500" "OREDICT:oreBlackgraniteDiamond:50" "OREDICT:oreBlackgraniteCoal:200" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 13;
      };
      };
    };
  };
  meteors_GreaterEndstoneVariant_json = lib.mkOption {
    description = "meteors_GreaterEndstoneVariant_json configuration (./config/BloodMagic/meteors/GreaterEndstoneVariant.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/GreaterEndstoneVariant.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 3250000;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:endstone:150" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 7;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.blockmachines:1182";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreEndstoneMagnetite:115" "OREDICT:oreEndstoneVanadiumMagnetite:75" "OREDICT:oreEndstoneGold:75" "OREDICT:oreEndstoneChalcopyrite:85" "OREDICT:oreEndstoneIron:60" "OREDICT:oreEndstonePyrite:75" "OREDICT:oreEndstoneCopper:95" "OREDICT:oreEndstoneTetrahedrite:115" "OREDICT:oreEndstoneStibnite:75" "OREDICT:oreEndstoneGrossular:55" "OREDICT:oreEndstoneSpessartine:55" "OREDICT:oreEndstonePyrolusite:45" "OREDICT:oreEndstoneTantalite:45" "OREDICT:oreEndstoneBeryllium:65" "OREDICT:oreEndstoneEmerald:40" "OREDICT:oreEndstoneThorium:50" "OREDICT:oreEndstoneWulfenite:25" "OREDICT:oreEndstoneMolybdenite:25" "OREDICT:oreEndstoneMolybdenum:25" "OREDICT:oreEndstonePowellite:25" "OREDICT:oreEndstoneBentonite:55" "OREDICT:oreEndstoneMagnesite:55" "OREDICT:oreEndstoneOlivine:55" "OREDICT:oreEndstoneGlauconite:45" "OREDICT:oreEndstoneGarnierite:65" "OREDICT:oreEndstoneNickel:65" "OREDICT:oreEndstoneCobaltite:65" "OREDICT:oreEndstonePentlandite:125" "OREDICT:oreEndstoneScheelite:20" "OREDICT:oreEndstoneTungstate:20" "OREDICT:oreEndstoneLithium:25" "OREDICT:oreEndstoneIridium:25" "OREDICT:oreEndstonePlatinum:25" "OREDICT:oreEndstonePalladium:25" "OREDICT:oreEndstoneNaquadah:15" "OREDICT:oreEndstoneNaquadahEnriched:5" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 18;
      };
      };
    };
  };
  meteors_HoneyWax_json = lib.mkOption {
    description = "meteors_HoneyWax_json configuration (./config/BloodMagic/meteors/HoneyWax.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/HoneyWax.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 800050;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "BiomesOPlenty:hive:2:150" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "etfuturum:honeycomb";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "etfuturum:honey_block:0:95" "BiomesOPlenty:honeyBlock:0:90" "etfuturum:honeycomb_block:0:85" "BiomesOPlenty:hive:3:80" "BiomesOPlenty:hive:0:80" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      };
    };
  };
  meteors_ImpureSuperNiobiumSpaceMix_json = lib.mkOption {
    description = "meteors_ImpureSuperNiobiumSpaceMix_json configuration (./config/BloodMagic/meteors/ImpureSuperNiobiumSpaceMix.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/ImpureSuperNiobiumSpaceMix.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 1000000;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:rockMars:125" "OREDICT:rockPhobos:125" "OREDICT:rockDeimos:125" "OREDICT:rockAsteroids:125" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 50;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.metaitem.01:32672";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreRedgraniteApatite:150" "OREDICT:oreRedgraniteTricalciumPhosphate:150" "OREDICT:oreRedgranitePyrochlore:100" "OREDICT:oreRedgraniteTantalite:100" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 18;
      };
      };
    };
  };
  meteors_IndiumGreaterVariant_json = lib.mkOption {
    description = "meteors_IndiumGreaterVariant_json configuration (./config/BloodMagic/meteors/IndiumGreaterVariant.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/IndiumGreaterVariant.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 50000000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.metaitem.03:32094";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreEndstoneLead:1000" "OREDICT:oreEndstoneGalena:1600" "OREDICT:oreEndstoneSilver:800" "OREDICT:oreEndstoneSphalerite:800" "OREDICT:oreEndstoneIndium:1" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 14;
      };
      };
    };
  };
  meteors_LegacyGemBunch_json = lib.mkOption {
    description = "meteors_LegacyGemBunch_json configuration (./config/BloodMagic/meteors/LegacyGemBunch.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/LegacyGemBunch.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 500000;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:stoneGraniteBlack:499" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 44;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.metaitem.01:24347";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreBlackgraniteDiamond:100" "OREDICT:oreBlackgraniteEmerald:50" "OREDICT:oreBlackgraniteRuby:50" "OREDICT:oreBlackgraniteSapphire:25" "OREDICT:oreBlackgraniteGreenSapphire:25" "OREDICT:oreBlackgraniteOlivine:25" "OREDICT:oreBlackgraniteTopaz:25" "OREDICT:oreBlackgraniteTanzanite:25" "OREDICT:oreBlackgraniteAmethyst:25" "OREDICT:oreBlackgraniteOpal:25" "OREDICT:oreBlackgraniteJasper:25" "OREDICT:oreBlackgraniteBlueTopaz:25" "OREDICT:oreBlackgraniteGarnetRed:25" "OREDICT:oreBlackgraniteGarnetYellow:25" "OREDICT:oreBlackgraniteJade:25" "OREDICT:oreBlackgraniteVinteum:25" "OREDICT:oreBlackgraniteLapis:50" "OREDICT:oreBlackgraniteLazurite:50" "OREDICT:oreBlackgraniteNetherStar:1" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 12;
      };
      };
    };
  };
  meteors_LegacyMarsMeteor_json = lib.mkOption {
    description = "meteors_LegacyMarsMeteor_json configuration (./config/BloodMagic/meteors/LegacyMarsMeteor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/LegacyMarsMeteor.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 500000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.metaitem.01:32692";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreBlackgraniteMeteoricIron:10" "OREDICT:oreBlackgraniteChromite:50" "OREDICT:oreBlackgraniteBastnasite:100" "OREDICT:oreBlackgraniteMonazite:30" "OREDICT:oreBlackgraniteMolybdenum:70" "OREDICT:oreBlackgranitePyrochlore:50" "OREDICT:oreBlackgraniteNeodymium:50" "OREDICT:oreBlackgraniteBarite:50" "OREDICT:oreBlackgraniteCertusQuartz:25" "OREDICT:oreBlackgraniteDesh:60" "OREDICT:oreBlackgraniteThorium:50" "OREDICT:oreBlackgraniteUraninite:50" "OREDICT:oreBlackgraniteUranium:30" "OREDICT:oreBlackgranitePitchblende:50" "OREDICT:oreBlackgraniteDraconium:50" "OREDICT:oreBlackgraniteElectrotine:50" "OREDICT:oreBlackgraniteOriharukon:50" "OREDICT:oreBlackgraniteArsenic:50" "OREDICT:oreBlackgraniteBismuth:50" "OREDICT:oreBlackgraniteAntimony:50" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 13;
      };
      };
    };
  };
  meteors_LegacyOWMeteor_json = lib.mkOption {
    description = "meteors_LegacyOWMeteor_json configuration (./config/BloodMagic/meteors/LegacyOWMeteor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/LegacyOWMeteor.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 300000;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:stoneGraniteBlack:200" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 18;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.metaitem.01:32680";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreBlackgraniteTantalite:60" "OREDICT:oreBlackgraniteMica:60" "OREDICT:oreBlackgraniteAsbestos:20" "OREDICT:oreBlackgraniteCalcite:60" "OREDICT:oreBlackgraniteSoapstone:20" "OREDICT:oreBlackgraniteVanadiumMagnetite:60" "OREDICT:oreBlackgraniteSalt:50" "OREDICT:oreBlackgraniteRockSalt:50" "OREDICT:oreBlackgraniteSphalerite:50" "OREDICT:oreBlackgraniteIron:5" "OREDICT:oreBlackgraniteNickel:15" "OREDICT:oreBlackgraniteCopper:200" "OREDICT:oreBlackgraniteTin:20" "OREDICT:oreBlackgraniteLead:40" "OREDICT:oreBlackgraniteSilver:50" "OREDICT:oreBlackgraniteGold:50" "OREDICT:oreBlackgraniteCassiterite:70" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 16;
      };
      };
    };
  };
  meteors_LegacyVariousOreBunch_json = lib.mkOption {
    description = "meteors_LegacyVariousOreBunch_json configuration (./config/BloodMagic/meteors/LegacyVariousOreBunch.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/LegacyVariousOreBunch.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 750000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "minecraft:nether_star";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreBlackgraniteRutile:100" "OREDICT:oreBlackgraniteTungstate:100" "OREDICT:oreBlackgraniteCopper:300" "OREDICT:oreBlackgraniteSalt:200" "OREDICT:oreBlackgraniteRockSalt:200" "OREDICT:oreBlackgraniteMica:60" "OREDICT:oreBlackgraniteAsbestos:20" "OREDICT:oreBlackgraniteSoapstone:20" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 9;
      };
      };
    };
  };
  meteors_MASTER1_GemMaster_json = lib.mkOption {
    description = "meteors_MASTER1_GemMaster_json configuration (./config/BloodMagic/meteors/MASTER1_GemMaster.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/MASTER1_GemMaster.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 90000000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "kubatech:defc.casing:8";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreEndstoneDiamond:5" "OREDICT:oreEndstoneEmerald:5" "OREDICT:oreEndstoneRuby:5" "OREDICT:oreEndstoneSapphire:5" "OREDICT:oreEndstoneGreenSapphire:5" "OREDICT:oreEndstoneOlivine:5" "OREDICT:oreEndstoneTopaz:5" "OREDICT:oreEndstoneTanzanite:5" "OREDICT:oreEndstoneAmethyst:5" "OREDICT:oreEndstoneOpal:5" "OREDICT:oreEndstoneJasper:5" "OREDICT:oreEndstoneBlueTopaz:5" "OREDICT:oreEndstoneGarnetRed:5" "OREDICT:oreEndstoneGarnetYellow:5" "OREDICT:oreEndstoneJade:5" "OREDICT:oreEndstoneVinteum:5" "OREDICT:oreEndstoneLapis:5" "OREDICT:oreEndstoneLazurite:5" "OREDICT:oreEndstoneMysteriousCrystal:5" "OREDICT:oreEndstoneInfusedFire:5" "OREDICT:oreEndstoneInfusedAir:5" "OREDICT:oreEndstoneInfusedWater:5" "OREDICT:oreEndstoneInfusedEarth:5" "OREDICT:oreEndstoneInfusedOrder:5" "OREDICT:oreEndstoneInfusedEntropy:5" "OREDICT:oreEndstoneNetherStar:5" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 32;
      };
      };
    };
  };
  meteors_MagicalOres_json = lib.mkOption {
    description = "meteors_MagicalOres_json configuration (./config/BloodMagic/meteors/MagicalOres.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/MagicalOres.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 800000;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:stoneMarble:110" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 11;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "Thaumcraft:ItemSanitySoap";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreMarbleInfusedAir:75" "OREDICT:oreMarbleInfusedFire:75" "OREDICT:oreMarbleInfusedWater:75" "OREDICT:oreMarbleInfusedEarth:75" "OREDICT:oreMarbleInfusedOrder:75" "OREDICT:oreMarbleInfusedEntropy:75" "OREDICT:oreMarbleAmber:150" "OREDICT:oreMarbleCinnabar:250" "OREDICT:oreMarbleVinteum:10" "OREDICT:oreMarbleShadowIron:10" "OREDICT:oreMarbleInfusedGold:10" "OREDICT:oreMarbleShadow:10" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 15;
      };
      };
    };
  };
  meteors_Marimorphosis_json = lib.mkOption {
    description = "meteors_Marimorphosis_json configuration (./config/BloodMagic/meteors/Marimorphosis.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/Marimorphosis.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 600000;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "BiomesOPlenty:mud:1:200" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "BloodArsenal:amorphic_catalyst";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "Botania:biomeStoneA:2:100" "Botania:biomeStoneA:3:100" "Botania:biomeStoneA:0:100" "Botania:biomeStoneA:1:100" "Botania:biomeStoneA:4:100" "Botania:biomeStoneA:5:100" "Botania:biomeStoneA:6:100" "Botania:biomeStoneA:7:100" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 22;
      };
      };
    };
  };
  meteors_MysteriousMeteor_json = lib.mkOption {
    description = "meteors_MysteriousMeteor_json configuration (./config/BloodMagic/meteors/MysteriousMeteor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/MysteriousMeteor.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 44000000;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:rockEnceladus:600" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 60;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.blockmachines:10990";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreEndstoneMysteriousCrystal:400" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 16;
      };
      };
    };
  };
  meteors_NaquadahPure_json = lib.mkOption {
    description = "meteors_NaquadahPure_json configuration (./config/BloodMagic/meteors/NaquadahPure.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/NaquadahPure.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 25000000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.metaitem.03:32091";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreEndstoneNaquadah:75" "OREDICT:oreEndstoneNaquadahEnriched:50" "OREDICT:oreEndstoneNaquadria:15" "OREDICT:oreTiberium:100" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 16;
      };
      };
    };
  };
  meteors_Netherite_json = lib.mkOption {
    description = "meteors_Netherite_json configuration (./config/BloodMagic/meteors/Netherite.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/Netherite.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 9876543;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "minecraft:netherrack:0:200" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "etfuturum:netherite_scrap";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "Railcraft:brick.nether:2:100" "minecraft:nether_brick:0:80" "etfuturum:red_netherbrick:1:50" "etfuturum:red_netherbrick:0:50" "etfuturum:soul_soil:0:50" "minecraft:soul_sand:0:50" "miscutils:blockCompressedObsidian:11:20" "miscutils:blockCompressedObsidian:12:10" "miscutils:blockCompressedObsidian:13:5" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 22;
      };
      };
    };
  };
  meteors_OWMeteorVersionTwo_json = lib.mkOption {
    description = "meteors_OWMeteorVersionTwo_json configuration (./config/BloodMagic/meteors/OWMeteorVersionTwo.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/OWMeteorVersionTwo.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 300000;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:stoneGraniteBlack:200" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 17;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.metaitem.01:32690";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreBlackgraniteOilsands:120" "OREDICT:oreBlackgraniteMica:50" "OREDICT:oreBlackgraniteAsbestos:50" "OREDICT:oreBlackgraniteCalcite:80" "OREDICT:oreBlackgraniteLepidolite:70" "OREDICT:oreBlackgraniteVanadiumMagnetite:80" "OREDICT:oreBlackgraniteSalt:20" "OREDICT:oreBlackgraniteRockSalt:20" "OREDICT:oreBlackgraniteSphalerite:70" "OREDICT:oreBlackgranitePollucite:25" "OREDICT:oreBlackgraniteNickel:55" "OREDICT:oreBlackgraniteCopper:75" "OREDICT:oreBlackgraniteRedstone:80" "OREDICT:oreBlackgraniteCinnabar:120" "OREDICT:oreBlackgraniteSilver:90" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 18;
      };
      };
    };
  };
  meteors_OWMoonrockMix_json = lib.mkOption {
    description = "meteors_OWMoonrockMix_json configuration (./config/BloodMagic/meteors/OWMoonrockMix.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/OWMoonrockMix.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 650000;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:rockMoon:250" "OREDICT:stoneMarble:250" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 50;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "harvestcraft:cheeseItem";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreMarbleCassiteriteSand:50" "OREDICT:oreMarbleCassiterite:50" "OREDICT:oreMarbleTin:25" "OREDICT:oreMarbleGarnetSand:50" "OREDICT:oreMarbleAsbestos:25" "OREDICT:oreMarbleDiatomite:25" "OREDICT:oreMarbleBasalticMineralSand:50" "OREDICT:oreMarbleGraniticMineralSand:50" "OREDICT:oreMarbleFullersEarth:50" "OREDICT:oreMarbleGypsum:50" "OREDICT:oreMarbleCheese:25" "OREDICT:oreMarbleMica:25" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 15;
      };
      };
    };
  };
  meteors_Pufferfish_json = lib.mkOption {
    description = "meteors_Pufferfish_json configuration (./config/BloodMagic/meteors/Pufferfish.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/Pufferfish.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 6666666;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:stoneBasalt:100" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "minecraft:fish:3";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreBasaltSalt:75" "OREDICT:oreBasaltRockSalt:75" "OREDICT:oreBasaltSaltpeter:200" "OREDICT:oreBasaltBasalticMineralSand:25" "OREDICT:oreBasaltGraniticMineralSand:25" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 16;
      };
      };
    };
  };
  meteors_PureMarsRelatedOres_json = lib.mkOption {
    description = "meteors_PureMarsRelatedOres_json configuration (./config/BloodMagic/meteors/PureMarsRelatedOres.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/PureMarsRelatedOres.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 6000000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.blockmachines:463";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreMarbleBauxite:135" "OREDICT:oreMarbleIlmenite:105" "OREDICT:oreMarbleAluminium:55" "OREDICT:oreMarbleChromite:35" "OREDICT:oreMarbleUvarovite:55" "OREDICT:oreMarblePerlite:35" "OREDICT:oreMarbleBastnasite:85" "OREDICT:oreMarbleNeodymium:75" "OREDICT:oreMarbleMonazite:65" "OREDICT:oreBasaltGalena:85" "OREDICT:oreBasaltSphalerite:45" "OREDICT:oreBasaltSilver:35" "OREDICT:oreBasaltCinnabar:45" "OREDICT:oreBasaltLead:35" "OREDICT:oreBasaltCobaltite:35" "OREDICT:oreBasaltNickel:45" "OREDICT:oreBasaltArsenic:35" "OREDICT:oreBasaltDesh:50" "OREDICT:oreBasaltTungstate:75" "OREDICT:oreBasaltScheelite:75" "OREDICT:oreBasaltUraninite:75" "OREDICT:oreBasaltPitchblende:75" "OREDICT:oreBasaltUranium:65" "OREDICT:oreBasaltOriharukon:35" "OREDICT:oreEndstoneMeteoricIron:75" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 24;
      };
      };
    };
  };
  meteors_PureMoonOreMeteor_json = lib.mkOption {
    description = "meteors_PureMoonOreMeteor_json configuration (./config/BloodMagic/meteors/PureMoonOreMeteor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/PureMoonOreMeteor.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 2000000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.metaitem.01:32682";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreMarbleBauxite:175" "OREDICT:oreMarbleIlmenite:125" "OREDICT:oreMarbleAluminium:75" "OREDICT:oreMarbleChromite:50" "OREDICT:oreMarbleUvarovite:75" "OREDICT:oreMarblePerlite:50" "OREDICT:oreMarbleBastnasite:100" "OREDICT:oreMarbleNeodymium:75" "OREDICT:oreMarbleMonazite:75" "OREDICT:oreMarbleMeteoricIron:75" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 16;
      };
      };
    };
  };
  meteors_PureNetherOreVariant_json = lib.mkOption {
    description = "meteors_PureNetherOreVariant_json configuration (./config/BloodMagic/meteors/PureNetherOreVariant.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/PureNetherOreVariant.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 1200000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.blockmachines:482";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreNetherrackNetherQuartz:150" "OREDICT:oreNetherrackSulfur:100" "OREDICT:oreNetherrackSphalerite:100" "OREDICT:oreNetherrackThorium:100" "OREDICT:oreNetherrackEmerald:50" "OREDICT:oreNetherrackBeryllium:100" "OREDICT:oreNetherrackIron:75" "OREDICT:oreNetherrackChalcopyrite:75" "OREDICT:oreNetherrackPyrite:75" "OREDICT:oreNetherrackCopper:100" "OREDICT:oreNetherrackTetrahedrite:125" "OREDICT:oreNetherrackStibnite:75" "OREDICT:oreNetherrackTantalite:75" "OREDICT:oreNetherrackPyrolusite:75" "OREDICT:oreNetherrackGrossular:50" "OREDICT:oreNetherrackSpessartine:50" "OREDICT:oreNetherrackQuartzite:75" "OREDICT:oreNetherrackBarite:75" "OREDICT:oreNetherrackRedstone:100" "OREDICT:oreNetherrackRuby:75" "OREDICT:oreNetherrackCinnabar:70" "OREDICT:oreNetherrackCertusQuartz:100" "OREDICT:oreNetherrackFirestone:20" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 18;
      };
      };
    };
  };
  meteors_PureOWOreMeteor_json = lib.mkOption {
    description = "meteors_PureOWOreMeteor_json configuration (./config/BloodMagic/meteors/PureOWOreMeteor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/PureOWOreMeteor.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 600000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.metaitem.01:32670";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreBlackgraniteOilsands:100" "OREDICT:oreBlackgraniteMica:80" "OREDICT:oreBlackgraniteAsbestos:60" "OREDICT:oreBlackgraniteCalcite:80" "OREDICT:oreBlackgraniteLepidolite:80" "OREDICT:oreBlackgraniteVanadiumMagnetite:60" "OREDICT:oreBlackgraniteSalt:80" "OREDICT:oreBlackgraniteRockSalt:80" "OREDICT:oreBlackgraniteSphalerite:80" "OREDICT:oreBlackgranitePollucite:40" "OREDICT:oreBlackgraniteNickel:80" "OREDICT:oreBlackgraniteCopper:100" "OREDICT:oreBlackgraniteRedstone:100" "OREDICT:oreBlackgraniteCinnabar:80" "OREDICT:oreBlackgraniteGarnetSand:40" "OREDICT:oreBlackgraniteGypsum:40" "OREDICT:oreBlackgraniteLapis:100" "OREDICT:oreBlackgraniteLazurite:60" "OREDICT:oreBlackgraniteSodalite:60" "OREDICT:oreBlackgraniteCassiterite:80" "OREDICT:oreBlackgraniteApatite:80" "OREDICT:oreBlackgraniteRuby:80" "OREDICT:oreBlackgraniteSilver:80" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      };
    };
  };
  meteors_RadioactivePure_json = lib.mkOption {
    description = "meteors_RadioactivePure_json configuration (./config/BloodMagic/meteors/RadioactivePure.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/RadioactivePure.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 2500000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.blockmachines:465";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreEndstoneUranium:60" "OREDICT:oreEndstoneUranium235:25" "OREDICT:oreEndstoneUraninite:60" "OREDICT:oreEndstonePitchblende:60" "OREDICT:oreEndstoneThorium:150" "OREDICT:oreEndstonePlutonium:25" "OREDICT:oreEndstonePlutonium241:1" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 12;
      };
      };
    };
  };
  meteors_RainbowCaelestis_json = lib.mkOption {
    description = "meteors_RainbowCaelestis_json configuration (./config/BloodMagic/meteors/RainbowCaelestis.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/RainbowCaelestis.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 5000200;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "ExtraUtilities:etherealglass:2:200" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "universalsingularities:universal.extraUtilities.singularity";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "ExtraUtilities:greenscreen:0:100" "ExtraUtilities:greenscreen:1:100" "ExtraUtilities:greenscreen:2:100" "ExtraUtilities:greenscreen:3:100" "ExtraUtilities:greenscreen:4:100" "ExtraUtilities:greenscreen:5:100" "ExtraUtilities:greenscreen:6:100" "ExtraUtilities:greenscreen:7:100" "ExtraUtilities:greenscreen:8:100" "ExtraUtilities:greenscreen:9:100" "ExtraUtilities:greenscreen:10:100" "ExtraUtilities:greenscreen:11:100" "ExtraUtilities:greenscreen:12:100" "ExtraUtilities:greenscreen:13:100" "ExtraUtilities:greenscreen:14:100" "ExtraUtilities:greenscreen:15:100" "Ztones:tile.laveBlock:12:50" "TwilightForest:tile.CastleBrick:3:50" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 22;
      };
      };
    };
  };
  meteors_RainbowGlassMeteor_json = lib.mkOption {
    description = "meteors_RainbowGlassMeteor_json configuration (./config/BloodMagic/meteors/RainbowGlassMeteor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/RainbowGlassMeteor.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 123456;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "minecraft:melon_block";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:stainedGlassWhite:1" "OREDICT:stainedGlassOrange:1" "OREDICT:stainedGlassMagenta:1" "OREDICT:stainedGlassLightBlue:1" "OREDICT:stainedGlassYellow:1" "OREDICT:stainedGlassLime:1" "OREDICT:stainedGlassPink:1" "OREDICT:stainedGlassGray:1" "OREDICT:stainedGlassLightGray:1" "OREDICT:stainedGlassCyan:1" "OREDICT:stainedGlassPurple:1" "OREDICT:stainedGlassBlue:1" "OREDICT:stainedGlassBrown:1" "OREDICT:stainedGlassGreen:1" "OREDICT:stainedGlassRed:1" "OREDICT:stainedGlassBlack:1" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 8;
      };
      };
    };
  };
  meteors_SkyStoneMeteor_json = lib.mkOption {
    description = "meteors_SkyStoneMeteor_json configuration (./config/BloodMagic/meteors/SkyStoneMeteor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/SkyStoneMeteor.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 600002;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "chisel:futura:2:200" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "appliedenergistics2:tile.BlockSkyChest:1";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "appliedenergistics2:tile.BlockSkyStone:0:95" "appliedenergistics2:tile.BlockSkyStone:1:90" "ExtraUtilities:color_lightgem:15:80" "ExtraUtilities:color_obsidian:15:80" "chisel:grimstone:14:40" "appliedenergistics2:tile.OreQuartz:0:20" "appliedenergistics2:tile.OreQuartzCharged:0:25" "GalacticraftAmunRa:tile.baseBlockRock:0:10" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 22;
      };
      };
    };
  };
  meteors_SomeBartOres_json = lib.mkOption {
    description = "meteors_SomeBartOres_json configuration (./config/BloodMagic/meteors/SomeBartOres.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/SomeBartOres.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 10000000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.blockmachines:406";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreBismutite:1" "OREDICT:oreFluor-Buergerite:1" "OREDICT:oreOrangeDescloizite:1" "OREDICT:oreRedDescloizite:1" "OREDICT:oreFluor-Buergerite:1" "OREDICT:oreFayalite:1" "OREDICT:oreForsterite:1" "OREDICT:oreRedFuchsite:1" "OREDICT:oreGreenFuchsite:1" "OREDICT:oreDjurleite:1" "OREDICT:oreBornite:1" "OREDICT:oreWittichenite:1" "OREDICT:oreChromo-Alumino-Povondraite:1" "OREDICT:oreVanadio-Oxy-Dravite:1" "OREDICT:oreOlenite:1" "OREDICT:oreRedZircon:1" "OREDICT:oreHedenbergite:1" "OREDICT:orePrasiolite:1" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 18;
      };
      };
    };
  };
  meteors_SoulInducedMeteor_json = lib.mkOption {
    description = "meteors_SoulInducedMeteor_json configuration (./config/BloodMagic/meteors/SoulInducedMeteor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/SoulInducedMeteor.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 5000000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "minecraft:soul_sand";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:soulSand:1000" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 16;
      };
      };
    };
  };
  meteors_SpaceyOres_json = lib.mkOption {
    description = "meteors_SpaceyOres_json configuration (./config/BloodMagic/meteors/SpaceyOres.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/SpaceyOres.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 1500000;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:stoneGraniteBlack:250" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 28;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.metaitem.01:32674";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreBlackgraniteNaquadah:100" "OREDICT:oreBlackgraniteNaquadahEnriched:25" "OREDICT:oreBlackgraniteDeepIron:50" "OREDICT:oreBlackgraniteQuantium:50" "OREDICT:oreBlackgraniteArdite:50" "OREDICT:oreBlackgraniteDraconium:50" "OREDICT:oreBlackgraniteAdamantium:25" "OREDICT:oreBlackgraniteNeodymium:75" "OREDICT:oreBlackgraniteMonazite:75" "OREDICT:oreBlackgraniteMeteoricIron:125" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 16;
      };
      };
    };
  };
  meteors_SuperGTStones_json = lib.mkOption {
    description = "meteors_SuperGTStones_json configuration (./config/BloodMagic/meteors/SuperGTStones.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/SuperGTStones.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 775000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "minecraft:tnt";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "gregtech:gt.blockstones:0:250" "gregtech:gt.blockstones:8:250" "gregtech:gt.blockgranites:0:250" "gregtech:gt.blockgranites:8:250" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      };
    };
  };
  meteors_SuperPlatinumGroupMetals_json = lib.mkOption {
    description = "meteors_SuperPlatinumGroupMetals_json configuration (./config/BloodMagic/meteors/SuperPlatinumGroupMetals.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/SuperPlatinumGroupMetals.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 12500000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.blockmachines:345";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreEndstonePlatinum:150" "OREDICT:oreEndstoneIridium:75" "OREDICT:oreEndstonePalladium:75" "OREDICT:oreEndstoneOsmium:50" "OREDICT:oreCrudeRhodiumMetal:200" "OREDICT:oreLeachResidue:200" "OREDICT:oreRarestMetalResidue:100" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 14;
      };
      };
    };
  };
  meteors_T1RocketStones_json = lib.mkOption {
    description = "meteors_T1RocketStones_json configuration (./config/BloodMagic/meteors/T1RocketStones.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/T1RocketStones.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 500000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.metaitem.01:32462";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "GalacticraftCore:tile.moonBlock:4:850" "GalacticraftCore:tile.moonBlock:3:100" "GalacticraftCore:tile.moonBlock:5:50" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      };
    };
  };
  meteors_T2RocketStones_json = lib.mkOption {
    description = "meteors_T2RocketStones_json configuration (./config/BloodMagic/meteors/T2RocketStones.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/T2RocketStones.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 750000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.metaitem.01:32463";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "GalacticraftMars:tile.mars:9:850" "GalacticraftMars:tile.mars:6:100" "GalacticraftMars:tile.mars:5:50" "GalaxySpace:phobosblocks:2:850" "GalaxySpace:phobosblocks:1:100" "GalaxySpace:phobosblocks:0:50" "GalaxySpace:deimosblocks:1:950" "GalaxySpace:deimosblocks:0:50" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      };
    };
  };
  meteors_T3RocketStones_json = lib.mkOption {
    description = "meteors_T3RocketStones_json configuration (./config/BloodMagic/meteors/T3RocketStones.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/T3RocketStones.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 1000000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "GalacticraftMars:item.itemBasicAsteroids";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "GalaxySpace:ceresblocks:1:950" "GalaxySpace:ceresblocks:0:50" "GalaxySpace:callistoblocks:1:950" "GalaxySpace:callistoblocks:0:50" "GalaxySpace:europagrunt:1:950" "GalaxySpace:europagrunt:0:50" "GalaxySpace:ganymedeblocks:1:950" "GalaxySpace:ganymedeblocks:0:50" "GalacticraftMars:tile.asteroidsBlock:0:320" "GalacticraftMars:tile.asteroidsBlock:1:320" "GalacticraftMars:tile.asteroidsBlock:2:320" "GalacticraftMars:tile.denseIce:0:40" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      };
    };
  };
  meteors_T4RocketStones_json = lib.mkOption {
    description = "meteors_T4RocketStones_json configuration (./config/BloodMagic/meteors/T4RocketStones.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/T4RocketStones.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 7500000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "dreamcraft:item.HeavyDutyPlateTier4";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "GalaxySpace:ioblocks:2:900" "GalaxySpace:ioblocks:0:50" "GalaxySpace:ioblocks:1:50" "GalaxySpace:mercuryblocks:2:850" "GalaxySpace:mercuryblocks:1:100" "GalaxySpace:mercuryblocks:0:50" "GalaxySpace:venusblocks:1:950" "GalaxySpace:venusblocks:0:50" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      };
    };
  };
  meteors_T5RocketStones_json = lib.mkOption {
    description = "meteors_T5RocketStones_json configuration (./config/BloodMagic/meteors/T5RocketStones.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/T5RocketStones.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 10000000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "dreamcraft:item.HeavyDutyPlateTier5";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "GalaxySpace:titanblocks:2:750" "GalaxySpace:titanblocks:1:100" "GalaxySpace:titanblocks:0:50" "minecraft:packed_ice:0:100" "GalaxySpace:enceladusblocks:1:850" "GalaxySpace:enceladusblocks:3:100" "GalaxySpace:enceladusblocks:0:50" "GalaxySpace:oberonblocks:2:850" "GalaxySpace:oberonblocks:1:100" "GalaxySpace:oberonblocks:0:50" "GalaxySpace:mirandablocks:2:850" "GalaxySpace:mirandablocks:1:100" "GalaxySpace:mirandablocks:0:50" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      };
    };
  };
  meteors_T6RocketStones_json = lib.mkOption {
    description = "meteors_T6RocketStones_json configuration (./config/BloodMagic/meteors/T6RocketStones.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/T6RocketStones.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 15000000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "dreamcraft:item.HeavyDutyPlateTier6";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "GalaxySpace:tritonblocks:2:850" "GalaxySpace:tritonblocks:1:100" "GalaxySpace:tritonblocks:0:50" "GalaxySpace:proteusblocks:2:850" "GalaxySpace:proteusblocks:1:100" "GalaxySpace:proteusblocks:0:50" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      };
    };
  };
  meteors_T7RocketStones_json = lib.mkOption {
    description = "meteors_T7RocketStones_json configuration (./config/BloodMagic/meteors/T7RocketStones.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/T7RocketStones.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 30000000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "dreamcraft:item.HeavyDutyPlateTier7";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "GalaxySpace:plutoblocks:5:840" "GalaxySpace:plutoblocks:4:100" "GalaxySpace:plutoblocks:0:15" "GalaxySpace:plutoblocks:1:15" "GalaxySpace:plutoblocks:2:15" "GalaxySpace:plutoblocks:3:15" "GalaxySpace:makemakegrunt:1:950" "GalaxySpace:makemakegrunt:0:50" "GalaxySpace:haumeablocks:0:1000" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      };
    };
  };
  meteors_T8RocketStones_json = lib.mkOption {
    description = "meteors_T8RocketStones_json configuration (./config/BloodMagic/meteors/T8RocketStones.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/T8RocketStones.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 50000000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "dreamcraft:item.HeavyDutyPlateTier8";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "GalaxySpace:barnardaEsubgrunt:0:950" "GalaxySpace:barnardaEgrunt:0:50" "GalaxySpace:barnardaFsubgrunt:0:950" "GalaxySpace:barnardaFgrunt:0:50" "GalaxySpace:barnardaCdirt:0:100" "GalaxySpace:barnardaCgrass:0:20" "GalaxySpace:vegabsubgrunt:0:950" "GalaxySpace:vegabgrunt:0:50" "GalaxySpace:tcetieblocks:2:850" "GalaxySpace:tcetieblocks:1:100" "GalaxySpace:tcetieblocks:0:50" "GalaxySpace:acentauribbsubgrunt:0:950" "GalaxySpace:acentauribbgrunt:0:50" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      };
    };
  };
  meteors_T9Ores_json = lib.mkOption {
    description = "meteors_T9Ores_json configuration (./config/BloodMagic/meteors/T9Ores.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/T9Ores.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 1000000001;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.blockmachines:14009";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreDraconiumAwakened:1000" "OREDICT:oreNeodymium:500" "OREDICT:oreSamarium:300" "OREDICT:oreNetherStar:250" "OREDICT:oreTartarite:60" "OREDICT:oreTengamRaw:1" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 16;
      };
      };
    };
  };
  meteors_TnTMeteor_json = lib.mkOption {
    description = "meteors_TnTMeteor_json configuration (./config/BloodMagic/meteors/TnTMeteor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/TnTMeteor.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 6667666;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "chisel:redstone_block:14:10" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "BloodArsenal:blood_tnt:0";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "IC2:blockITNT:0:90" "BloodArsenal:blood_tnt:0:80" "minecraft:tnt:0:80" "minecraft:redstone_lamp:0:30" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 16;
      };
      };
    };
  };
  meteors_Water_json = lib.mkOption {
    description = "meteors_Water_json configuration (./config/BloodMagic/meteors/Water.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/Water.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 275000;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "etfuturum:magma:0:100" ];
      };
      fillerChance = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "etfuturum:blue_ice";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "minecraft:ice:0:90" "minecraft:packed_ice:0:85" "BiomesOPlenty:hardIce:0:80" "etfuturum:blue_ice:0:75" "minecraft:snow:0:50" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      };
    };
  };
  meteors_YourResourcesHandItOver_json = lib.mkOption {
    description = "meteors_YourResourcesHandItOver_json configuration (./config/BloodMagic/meteors/YourResourcesHandItOver.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/YourResourcesHandItOver.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      cost = lib.mkOption {
        type = lib.types.int;
        default = 125000000;
      };
      focusItem = lib.mkOption {
        type = lib.types.str;
        default = "gregtech:gt.blockmachines:12526";
      };
      ores = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "OREDICT:oreEndstoneBlackPlutonium:50" "OREDICT:oreEndstoneCosmicNeutronium:10" "OREDICT:oreEndstoneNaquadah:50" "OREDICT:oreEndstoneNaquadahEnriched:55" "OREDICT:oreEndstoneNaquadria:40" "OREDICT:oreEndstoneNeutronium:25" "OREDICT:oreEndstoneElectrumFlux:10" "OREDICT:oreEndstoneIndium:5" "OREDICT:oreEndstoneAmericium:10" "OREDICT:oreEndstoneEuropium:25" "OREDICT:oreEndstoneLutetium:50" "OREDICT:oreEndstoneInfinityCatalyst:50" ];
      };
      radius = lib.mkOption {
        type = lib.types.int;
        default = 18;
      };
      };
    };
  };
  meteors_reagents_crystallos_json = lib.mkOption {
    description = "meteors_reagents_crystallos_json configuration (./config/BloodMagic/meteors/reagents/crystallos.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/reagents/crystallos.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "minecraft:ice:0:180" ];
      };
      };
    };
  };
  meteors_reagents_incendium_json = lib.mkOption {
    description = "meteors_reagents_incendium_json configuration (./config/BloodMagic/meteors/reagents/incendium.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/reagents/incendium.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "minecraft:netherrack:0:60" "minecraft:glowstone:0:60" "minecraft:soul_sand:0:60" ];
      };
      };
    };
  };
  meteors_reagents_orbisTerrae_json = lib.mkOption {
    description = "meteors_reagents_orbisTerrae_json configuration (./config/BloodMagic/meteors/reagents/orbisTerrae.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/reagents/orbisTerrae.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      fillerChanceChange = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      radiusChange = lib.mkOption {
        type = lib.types.int;
        default = 2;
      };
      };
    };
  };
  meteors_reagents_tenebrae_json = lib.mkOption {
    description = "meteors_reagents_tenebrae_json configuration (./config/BloodMagic/meteors/reagents/tenebrae.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/reagents/tenebrae.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      filler = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ "minecraft:obsidian:0:180" ];
      };
      };
    };
  };
  meteors_reagents_terrae_json = lib.mkOption {
    description = "meteors_reagents_terrae_json configuration (./config/BloodMagic/meteors/reagents/terrae.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodMagic/meteors/reagents/terrae.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      fillerChanceChange = lib.mkOption {
        type = lib.types.int;
        default = 10;
      };
      radiusChange = lib.mkOption {
        type = lib.types.int;
        default = 1;
      };
      };
    };
  };
}
