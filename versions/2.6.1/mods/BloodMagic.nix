{lib, ...}: {
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreEndstoneBlackPlutonium" "100" "oreEndstoneCosmicNeutronium" "5" "oreEndstoneYttrium" "75" "oreEndstoneGallium" "75" "oreEndstoneMysteriousCrystal" "25" "oreEndstoneDeepIron" "150" "oreEndstoneNaquadah" "125" "oreEndstoneNaquadahEnriched" "75" "oreEndstoneNaquadria" "50" "oreEndstoneUranium235" "25" "oreEndstonePlutonium241" "25" "oreEndstoneUranium" "50" "oreEndstonePlutonium" "50" "oreEndstoneSamarium" "25" "oreEndstoneNetherStar" "10" "oreEndstoneNeutronium" "10" "oreEndstoneNiobium" "75" "oreEndstoneBorax" "75" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 22;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 100000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.blockmachines";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 10951;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreMarbleTopaz" "50" "oreMarbleBlueTopaz" "50" "oreMarbleChromite" "75" "oreMarbleUvarovite" "125" "oreMarbleTungstate" "45" "oreMarbleScheelite" "45" "oreMarbleLithium" "30" "oreMarbleAlduorite" "10" "oreMarblePalladium" "35" "oreMarbleChrome" "50" "oreMarblePlatinum" "65" "oreMarbleNickel" "100" "oreMarbleIridium" "50" "oreMarbleLedox" "50" "oreMarbleUranium" "10" "oreMarblePlutonium" "1" "oreMarbleCallistoIce" "125" "rockCallisto" "350" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 20;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 1000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.metaitem.01";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 32464;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreMarbleSalt" "3000" "oreTengamRaw" "4" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 16;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 1000000001;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "GalacticraftAmunRa";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "tile.machines2";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 1;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreEndstoneElectrum" "100" "oreEndstoneAluminium" "100" "oreEndstoneTitanium" "100" "oreEndstoneTungsten" "100" "oreEndstoneNeodymium" "100" "oreEndstoneChrome" "100" "oreEndstoneBeryllium" "100" "oreEndstoneManganese" "100" "oreEndstoneGallium" "100" "oreEndstoneYttrium" "100" "oreEndstoneNiobium" "100" "oreEndstoneStrontium" "100" "oreEndstoneCadmium" "100" "oreEndstoneTellurium" "100" "oreEndstoneBarium" "100" "oreEndstoneLanthanum" "10" "oreEndstoneIndium" "5" "oreEndstoneCerium" "100" "oreEndstonePraseodymium" "100" "oreEndstonePromethium" "100" "oreEndstoneSamarium" "25" "oreEndstoneEuropium" "5" "oreEndstoneTerbium" "100" "oreEndstoneDysprosium" "100" "oreEndstoneErbium" "100" "oreEndstoneThulium" "100" "oreEndstoneLutetium" "75" "oreEndstoneTantalum" "100" "oreEndstoneYtterbium" "100" "oreEndstoneGadolinium" "100" "oreEndstoneHolmium" "100" "oreEndstoneCaesium" "100" "oreEndstoneScandium" "100" "oreTiberium" "100" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 16;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 80000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.blockmachines";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 1186;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreEndstoneLead" "100" "oreEndstoneGalena" "200" "oreEndstoneSilver" "100" "oreEndstoneCryolite" "100" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 9;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 2000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.blockmachines";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 214;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "endstone" "799" "oreHeeEndPowder" "100" "oreHeeStardust" "50" "oreHeeIgneousRock" "50" "oreHeeEndium" "50" "oreHeeInstabilityOrb" "1" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 12;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 500000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "minecraft";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "end_stone";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 0;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreBlackgraniteGraphite" "500" "oreBlackgraniteDiamond" "50" "oreBlackgraniteCoal" "200" "stoneGraniteBlack" "250" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 13;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 420000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.metaitem.02";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 30500;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "endstone" "150" "oreEndstoneMagnetite" "115" "oreEndstoneVanadiumMagnetite" "75" "oreEndstoneGold" "75" "oreEndstoneChalcopyrite" "85" "oreEndstoneIron" "60" "oreEndstonePyrite" "75" "oreEndstoneCopper" "95" "oreEndstoneTetrahedrite" "115" "oreEndstoneStibnite" "75" "oreEndstoneGrossular" "55" "oreEndstoneSpessartine" "55" "oreEndstonePyrolusite" "45" "oreEndstoneTantalite" "45" "oreEndstoneBeryllium" "65" "oreEndstoneEmerald" "40" "oreEndstoneThorium" "50" "oreEndstoneWulfenite" "25" "oreEndstoneMolybdenite" "25" "oreEndstoneMolybdenum" "25" "oreEndstonePowellite" "25" "oreEndstoneBentonite" "55" "oreEndstoneMagnesite" "55" "oreEndstoneOlivine" "55" "oreEndstoneGlauconite" "45" "oreEndstoneGarnierite" "65" "oreEndstoneNickel" "65" "oreEndstoneCobaltite" "65" "oreEndstonePentlandite" "125" "oreEndstoneScheelite" "20" "oreEndstoneTungstate" "20" "oreEndstoneLithium" "25" "oreEndstoneIridium" "25" "oreEndstonePlatinum" "25" "oreEndstonePalladium" "25" "oreEndstoneNaquadah" "15" "oreEndstoneNaquadahEnriched" "5" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 18;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 3250000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.blockmachines";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 1182;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreRedgraniteApatite" "150" "oreRedgraniteTricalciumPhosphate" "150" "oreRedgranitePyrochlore" "100" "oreRedgraniteTantalite" "100" "rockMars" "125" "rockPhobos" "125" "rockDeimos" "125" "rockAsteroids" "125" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 18;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 1000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.metaitem.01";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 32672;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreEndstoneLead" "1000" "oreEndstoneGalena" "1600" "oreEndstoneSilver" "800" "oreEndstoneSphalerite" "800" "oreEndstoneIndium" "1" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 14;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 50000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.metaitem.03";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 32094;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "stoneGraniteBlack" "499" "oreBlackgraniteDiamond" "100" "oreBlackgraniteEmerald" "50" "oreBlackgraniteRuby" "50" "oreBlackgraniteSapphire" "25" "oreBlackgraniteGreenSapphire" "25" "oreBlackgraniteOlivine" "25" "oreBlackgraniteTopaz" "25" "oreBlackgraniteTanzanite" "25" "oreBlackgraniteAmethyst" "25" "oreBlackgraniteOpal" "25" "oreBlackgraniteJasper" "25" "oreBlackgraniteBlueTopaz" "25" "oreBlackgraniteGarnetRed" "25" "oreBlackgraniteGarnetYellow" "25" "oreBlackgraniteJade" "25" "oreBlackgraniteVinteum" "25" "oreBlackgraniteLapis" "50" "oreBlackgraniteLazurite" "50" "oreBlackgraniteNetherStar" "1" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 12;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 500000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.metaitem.01";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 24347;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreBlackgraniteMeteoricIron" "10" "oreBlackgraniteChromite" "50" "oreBlackgraniteBastnasite" "100" "oreBlackgraniteMonazite" "30" "oreBlackgraniteMolybdenum" "70" "oreBlackgranitePyrochlore" "50" "oreBlackgraniteNeodymium" "50" "oreBlackgraniteBarite" "50" "oreBlackgraniteCertusQuartz" "25" "oreBlackgraniteDesh" "60" "oreBlackgraniteThorium" "50" "oreBlackgraniteUraninite" "50" "oreBlackgraniteUranium" "30" "oreBlackgranitePitchblende" "50" "oreBlackgraniteDraconium" "50" "oreBlackgraniteElectrotine" "50" "oreBlackgraniteOriharukon" "50" "oreBlackgraniteArsenic" "50" "oreBlackgraniteBismuth" "50" "oreBlackgraniteAntimony" "50" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 13;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 500000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.metaitem.01";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 32692;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreBlackgraniteTantalite" "60" "oreBlackgraniteMica" "60" "oreBlackgraniteAsbestos" "20" "oreBlackgraniteCalcite" "60" "oreBlackgraniteSoapstone" "20" "oreBlackgraniteVanadiumMagnetite" "60" "oreBlackgraniteSalt" "50" "oreBlackgraniteRockSalt" "50" "oreBlackgraniteSphalerite" "50" "oreBlackgraniteIron" "5" "oreBlackgraniteNickel" "15" "oreBlackgraniteCopper" "200" "oreBlackgraniteTin" "20" "oreBlackgraniteLead" "40" "oreBlackgraniteSilver" "50" "oreBlackgraniteGold" "50" "oreBlackgraniteCassiterite" "70" "stoneGraniteBlack" "200" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 16;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 300000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.metaitem.01";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 32680;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreBlackgraniteRutile" "100" "oreBlackgraniteTungstate" "100" "oreBlackgraniteCopper" "300" "oreBlackgraniteSalt" "200" "oreBlackgraniteRockSalt" "200" "oreBlackgraniteMica" "60" "oreBlackgraniteAsbestos" "20" "oreBlackgraniteSoapstone" "20" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 9;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 750000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "minecraft";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "nether_star";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 0;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreEndstoneDiamond" "5" "oreEndstoneEmerald" "5" "oreEndstoneRuby" "5" "oreEndstoneSapphire" "5" "oreEndstoneGreenSapphire" "5" "oreEndstoneOlivine" "5" "oreEndstoneTopaz" "5" "oreEndstoneTanzanite" "5" "oreEndstoneAmethyst" "5" "oreEndstoneOpal" "5" "oreEndstoneJasper" "5" "oreEndstoneBlueTopaz" "5" "oreEndstoneGarnetRed" "5" "oreEndstoneGarnetYellow" "5" "oreEndstoneJade" "5" "oreEndstoneVinteum" "5" "oreEndstoneLapis" "5" "oreEndstoneLazurite" "5" "oreEndstoneMysteriousCrystal" "5" "oreEndstoneInfusedFire" "5" "oreEndstoneInfusedAir" "5" "oreEndstoneInfusedWater" "5" "oreEndstoneInfusedEarth" "5" "oreEndstoneInfusedOrder" "5" "oreEndstoneInfusedEntropy" "5" "oreEndstoneNetherStar" "5" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 32;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 90000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "EMT";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "EMT_GTBLOCK_CASEING";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 8;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreMarbleInfusedAir" "75" "oreMarbleInfusedFire" "75" "oreMarbleInfusedWater" "75" "oreMarbleInfusedEarth" "75" "oreMarbleInfusedOrder" "75" "oreMarbleInfusedEntropy" "75" "oreMarbleAmber" "150" "oreMarbleCinnabar" "250" "oreMarbleVinteum" "10" "oreMarbleShadowIron" "10" "oreMarbleInfusedGold" "10" "oreMarbleShadow" "10" "stoneMarble" "110" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 15;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 800000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "Thaumcraft";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "ItemSanitySoap";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 0;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "rockEnceladus" "600" "oreEndstoneMysteriousCrystal" "400" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 16;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 44000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.blockmachines";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 10990;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreEndstoneNaquadah" "75" "oreEndstoneNaquadahEnriched" "50" "oreEndstoneNaquadria" "15" "oreTiberium" "100" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 16;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 25000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.metaitem.03";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 32091;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreBlackgraniteOilsands" "120" "oreBlackgraniteMica" "50" "oreBlackgraniteAsbestos" "50" "oreBlackgraniteCalcite" "80" "oreBlackgraniteLepidolite" "70" "oreBlackgraniteVanadiumMagnetite" "80" "oreBlackgraniteSalt" "20" "oreBlackgraniteRockSalt" "20" "oreBlackgraniteSphalerite" "70" "oreBlackgranitePollucite" "25" "oreBlackgraniteNickel" "55" "oreBlackgraniteCopper" "75" "oreBlackgraniteRedstone" "80" "oreBlackgraniteCinnabar" "120" "oreBlackgraniteSilver" "90" "stoneGraniteBlack" "200" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 18;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 300000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.metaitem.01";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 32690;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreMarbleCassiteriteSand" "50" "oreMarbleCassiterite" "50" "oreMarbleTin" "25" "oreMarbleGarnetSand" "50" "oreMarbleAsbestos" "25" "oreMarbleDiatomite" "25" "stoneMarble" "250" "oreMarbleBasalticMineralSand" "50" "oreMarbleGraniticMineralSand" "50" "oreMarbleFullersEarth" "50" "oreMarbleGypsum" "50" "oreMarbleCheese" "25" "oreMarbleMica" "25" "rockMoon" "250" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 15;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 650000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "harvestcraft";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "cheeseItem";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 0;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreBasaltSalt" "75" "oreBasaltRockSalt" "75" "oreBasaltSaltpeter" "200" "oreBasaltBasalticMineralSand" "25" "oreBasaltGraniticMineralSand" "25" "stoneBasalt" "100" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 16;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 6666666;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "minecraft";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "fish";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 3;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreMarbleBauxite" "135" "oreMarbleIlmenite" "105" "oreMarbleAluminium" "55" "oreMarbleChromite" "35" "oreMarbleUvarovite" "55" "oreMarblePerlite" "35" "oreMarbleBastnasite" "85" "oreMarbleNeodymium" "75" "oreMarbleMonazite" "65" "oreBasaltGalena" "85" "oreBasaltSphalerite" "45" "oreBasaltSilver" "35" "oreBasaltCinnabar" "45" "oreBasaltLead" "35" "oreBasaltCobaltite" "35" "oreBasaltNickel" "45" "oreBasaltArsenic" "35" "oreBasaltDesh" "50" "oreBasaltTungstate" "75" "oreBasaltScheelite" "75" "oreBasaltUraninite" "75" "oreBasaltPitchblende" "75" "oreBasaltUranium" "65" "oreBasaltOriharukon" "35" "oreEndstoneMeteoricIron" "75" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 24;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 6000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.blockmachines";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 463;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreMarbleBauxite" "175" "oreMarbleIlmenite" "125" "oreMarbleAluminium" "75" "oreMarbleChromite" "50" "oreMarbleUvarovite" "75" "oreMarblePerlite" "50" "oreMarbleBastnasite" "100" "oreMarbleNeodymium" "75" "oreMarbleMonazite" "75" "oreMarbleMeteoricIron" "75" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 16;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 2000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.metaitem.01";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 32682;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreNetherrackNetherQuartz" "150" "oreNetherrackSulfur" "100" "oreNetherrackSphalerite" "100" "oreNetherrackThorium" "100" "oreNetherrackEmerald" "50" "oreNetherrackBeryllium" "100" "oreNetherrackIron" "75" "oreNetherrackChalcopyrite" "75" "oreNetherrackPyrite" "75" "oreNetherrackCopper" "100" "oreNetherrackTetrahedrite" "125" "oreNetherrackStibnite" "75" "oreNetherrackTantalite" "75" "oreNetherrackPyrolusite" "75" "oreNetherrackGrossular" "50" "oreNetherrackSpessartine" "50" "oreNetherrackQuartzite" "75" "oreNetherrackBarite" "75" "oreNetherrackRedstone" "100" "oreNetherrackRuby" "75" "oreNetherrackCinnabar" "70" "oreNetherrackCertusQuartz" "100" "oreNetherrackFirestone" "20" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 18;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 1200000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.blockmachines";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 482;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreBlackgraniteOilsands" "100" "oreBlackgraniteMica" "80" "oreBlackgraniteAsbestos" "60" "oreBlackgraniteCalcite" "80" "oreBlackgraniteLepidolite" "80" "oreBlackgraniteVanadiumMagnetite" "60" "oreBlackgraniteSalt" "80" "oreBlackgraniteRockSalt" "80" "oreBlackgraniteSphalerite" "80" "oreBlackgranitePollucite" "40" "oreBlackgraniteNickel" "80" "oreBlackgraniteCopper" "100" "oreBlackgraniteRedstone" "100" "oreBlackgraniteCinnabar" "80" "oreBlackgraniteGarnetSand" "40" "oreBlackgraniteGypsum" "40" "oreBlackgraniteLapis" "100" "oreBlackgraniteLazurite" "60" "oreBlackgraniteSodalite" "60" "oreBlackgraniteCassiterite" "80" "oreBlackgraniteApatite" "80" "oreBlackgraniteRuby" "80" "oreBlackgraniteSilver" "80" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 20;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 600000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.metaitem.01";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 32670;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreEndstoneUranium" "60" "oreEndstoneUranium235" "25" "oreEndstoneUraninite" "60" "oreEndstonePitchblende" "60" "oreEndstoneThorium" "150" "oreEndstonePlutonium" "25" "oreEndstonePlutonium241" "1" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 12;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 2500000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.blockmachines";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 465;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "stainedGlassWhite" "1" "stainedGlassOrange" "1" "stainedGlassMagenta" "1" "stainedGlassLightBlue" "1" "stainedGlassYellow" "1" "stainedGlassLime" "1" "stainedGlassPink" "1" "stainedGlassGray" "1" "stainedGlassLightGray" "1" "stainedGlassCyan" "1" "stainedGlassPurple" "1" "stainedGlassBlue" "1" "stainedGlassBrown" "1" "stainedGlassGreen" "1" "stainedGlassRed" "1" "stainedGlassBlack" "1" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 8;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 123456;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "minecraft";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "melon_block";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 0;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreBismutite" "1" "oreFluor-Buergerite" "1" "oreOrangeDescloizite" "1" "oreRedDescloizite" "1" "oreFluor-Buergerite" "1" "oreFayalite" "1" "oreForsterite" "1" "oreRedFuchsite" "1" "oreGreenFuchsite" "1" "oreDjurleite" "1" "oreBornite" "1" "oreWittichenite" "1" "oreChromo-Alumino-Povondraite" "1" "oreVanadio-Oxy-Dravite" "1" "oreOlenite" "1" "oreRedZircon" "1" "oreHedenbergite" "1" "orePrasiolite" "1" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 18;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 10000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.blockmachines";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 406;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "soulSand" "1000" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 16;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 5000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "minecraft";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "soul_sand";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 0;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreBlackgraniteNaquadah" "100" "oreBlackgraniteNaquadahEnriched" "25" "oreBlackgraniteDeepIron" "50" "oreBlackgraniteQuantium" "50" "oreBlackgraniteArdite" "50" "oreBlackgraniteDraconium" "50" "oreBlackgraniteAdamantium" "25" "oreBlackgraniteNeodymium" "75" "oreBlackgraniteMonazite" "75" "oreBlackgraniteMeteoricIron" "125" "stoneGraniteBlack" "250" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 16;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 1500000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.metaitem.01";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 32674;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "gregtech:gt.blockstones:0:250" "gregtech:gt.blockstones:8:250" "gregtech:gt.blockgranites:0:250" "gregtech:gt.blockgranites:8:250" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 20;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 775000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "minecraft";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "tnt";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 0;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreEndstonePlatinum" "150" "oreEndstoneIridium" "75" "oreEndstonePalladium" "75" "oreEndstoneOsmium" "50" "oreCrudeRhodiumMetal" "200" "oreLeachResidue" "200" "oreRarestMetalResidue" "100" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 14;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 12500000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.blockmachines";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 345;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "GalacticraftCore:tile.moonBlock:4:850" "GalacticraftCore:tile.moonBlock:3:100" "GalacticraftCore:tile.moonBlock:5:50" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 20;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 500000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.metaitem.01";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 32462;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "GalacticraftMars:tile.mars:9:850" "GalacticraftMars:tile.mars:6:100" "GalacticraftMars:tile.mars:5:50" "GalaxySpace:phobosblocks:2:850" "GalaxySpace:phobosblocks:1:100" "GalaxySpace:phobosblocks:0:50" "GalaxySpace:deimosblocks:1:950" "GalaxySpace:deimosblocks:0:50" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 20;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 750000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.metaitem.01";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 32463;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "GalaxySpace:ceresblocks:1:950" "GalaxySpace:ceresblocks:0:50" "GalaxySpace:callistoblocks:1:950" "GalaxySpace:callistoblocks:0:50" "GalaxySpace:europagrunt:1:950" "GalaxySpace:europagrunt:0:50" "GalaxySpace:ganymedeblocks:1:950" "GalaxySpace:ganymedeblocks:0:50" "GalacticraftMars:tile.asteroidsBlock:0:320" "GalacticraftMars:tile.asteroidsBlock:1:320" "GalacticraftMars:tile.asteroidsBlock:2:320" "GalacticraftMars:tile.denseIce:0:40" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 20;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 1000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "GalacticraftMars";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "item.itemBasicAsteroids";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 0;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "GalaxySpace:ioblocks:2:900" "GalaxySpace:ioblocks:0:50" "GalaxySpace:ioblocks:1:50" "GalaxySpace:mercuryblocks:2:850" "GalaxySpace:mercuryblocks:1:100" "GalaxySpace:mercuryblocks:0:50" "GalaxySpace:venusblocks:1:950" "GalaxySpace:venusblocks:0:50" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 20;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 7500000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "dreamcraft";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "item.HeavyDutyPlateTier4";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 0;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "GalaxySpace:titanblocks:2:750" "GalaxySpace:titanblocks:1:100" "GalaxySpace:titanblocks:0:50" "minecraft:packed_ice:0:100" "GalaxySpace:enceladusblocks:1:850" "GalaxySpace:enceladusblocks:3:100" "GalaxySpace:enceladusblocks:0:50" "GalaxySpace:oberonblocks:2:850" "GalaxySpace:oberonblocks:1:100" "GalaxySpace:oberonblocks:0:50" "GalaxySpace:mirandablocks:2:850" "GalaxySpace:mirandablocks:1:100" "GalaxySpace:mirandablocks:0:50" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 20;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 10000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "dreamcraft";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "item.HeavyDutyPlateTier5";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 0;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "GalaxySpace:tritonblocks:2:850" "GalaxySpace:tritonblocks:1:100" "GalaxySpace:tritonblocks:0:50" "GalaxySpace:proteusblocks:2:850" "GalaxySpace:proteusblocks:1:100" "GalaxySpace:proteusblocks:0:50" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 20;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 15000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "dreamcraft";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "item.HeavyDutyPlateTier6";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 0;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "GalaxySpace:plutoblocks:5:840" "GalaxySpace:plutoblocks:4:100" "GalaxySpace:plutoblocks:0:15" "GalaxySpace:plutoblocks:1:15" "GalaxySpace:plutoblocks:2:15" "GalaxySpace:plutoblocks:3:15" "GalaxySpace:makemakegrunt:1:950" "GalaxySpace:makemakegrunt:0:50" "GalaxySpace:haumeablocks:0:1000" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 20;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 30000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "dreamcraft";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "item.HeavyDutyPlateTier7";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 0;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "GalaxySpace:barnardaEsubgrunt:0:950" "GalaxySpace:barnardaEgrunt:0:50" "GalaxySpace:barnardaFsubgrunt:0:950" "GalaxySpace:barnardaFgrunt:0:50" "GalaxySpace:barnardaCdirt:0:100" "GalaxySpace:barnardaCgrass:0:20" "GalaxySpace:vegabsubgrunt:0:950" "GalaxySpace:vegabgrunt:0:50" "GalaxySpace:tcetieblocks:2:850" "GalaxySpace:tcetieblocks:1:100" "GalaxySpace:tcetieblocks:0:50" "GalaxySpace:acentauribbsubgrunt:0:950" "GalaxySpace:acentauribbgrunt:0:50" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 20;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 50000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "dreamcraft";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "item.HeavyDutyPlateTier8";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 0;
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
        ores = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "oreEndstoneBlackPlutonium" "50" "oreEndstoneCosmicNeutronium" "10" "oreEndstoneNaquadah" "50" "oreEndstoneNaquadahEnriched" "55" "oreEndstoneNaquadria" "40" "oreEndstoneNeutronium" "25" "oreEndstoneElectrumFlux" "10" "oreEndstoneIndium" "5" "oreEndstoneAmericium" "10" "oreEndstoneEuropium" "25" "oreEndstoneLutetium" "50" "oreEndstoneInfinityCatalyst" "50" ];
        };
        radius = lib.mkOption {
          type = lib.types.int;
          default = 18;
        };
        cost = lib.mkOption {
          type = lib.types.int;
          default = 125000000;
        };
        focusModId = lib.mkOption {
          type = lib.types.str;
          default = "gregtech";
        };
        focusName = lib.mkOption {
          type = lib.types.str;
          default = "gt.blockmachines";
        };
        focusMeta = lib.mkOption {
          type = lib.types.int;
          default = 12526;
        };
      };
    };
  };
}
