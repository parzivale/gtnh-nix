{lib, ...}: {
  AWWayofTime = lib.mkOption {
    description = "AWWayofTime configuration (./config/ThaumcraftMobAspects/AWWayofTime.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/AWWayofTime.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  Automagy = lib.mkOption {
    description = "Automagy configuration (./config/ThaumcraftMobAspects/Automagy.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/Automagy.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  Avaritia = lib.mkOption {
    description = "Avaritia configuration (./config/ThaumcraftMobAspects/Avaritia.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/Avaritia.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  BiblioCraft = lib.mkOption {
    description = "BiblioCraft configuration (./config/ThaumcraftMobAspects/BiblioCraft.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/BiblioCraft.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  BiomesOPlenty = lib.mkOption {
    description = "BiomesOPlenty configuration (./config/ThaumcraftMobAspects/BiomesOPlenty.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/BiomesOPlenty.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  Botania = lib.mkOption {
    description = "Botania configuration (./config/ThaumcraftMobAspects/Botania.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/Botania.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  BuildCraftRobotics = lib.mkOption {
    description = "BuildCraftRobotics configuration (./config/ThaumcraftMobAspects/BuildCraftRobotics.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/BuildCraftRobotics.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  BuildCraftSilicon = lib.mkOption {
    description = "BuildCraftSilicon configuration (./config/ThaumcraftMobAspects/BuildCraftSilicon.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/BuildCraftSilicon.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  CarpentersBlocks = lib.mkOption {
    description = "CarpentersBlocks configuration (./config/ThaumcraftMobAspects/CarpentersBlocks.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/CarpentersBlocks.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  DraconicEvolution = lib.mkOption {
    description = "DraconicEvolution configuration (./config/ThaumcraftMobAspects/DraconicEvolution.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/DraconicEvolution.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  EMT = lib.mkOption {
    description = "EMT configuration (./config/ThaumcraftMobAspects/EMT.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/EMT.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  EnderIO = lib.mkOption {
    description = "EnderIO configuration (./config/ThaumcraftMobAspects/EnderIO.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/EnderIO.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  Forestry = lib.mkOption {
    description = "Forestry configuration (./config/ThaumcraftMobAspects/Forestry.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/Forestry.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  GalacticraftAmunRa = lib.mkOption {
    description = "GalacticraftAmunRa configuration (./config/ThaumcraftMobAspects/GalacticraftAmunRa.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/GalacticraftAmunRa.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  GalacticraftCore = lib.mkOption {
    description = "GalacticraftCore configuration (./config/ThaumcraftMobAspects/GalacticraftCore.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/GalacticraftCore.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  GalacticraftMars = lib.mkOption {
    description = "GalacticraftMars configuration (./config/ThaumcraftMobAspects/GalacticraftMars.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/GalacticraftMars.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  GalaxySpace = lib.mkOption {
    description = "GalaxySpace configuration (./config/ThaumcraftMobAspects/GalaxySpace.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/GalaxySpace.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  GraviSuite = lib.mkOption {
    description = "GraviSuite configuration (./config/ThaumcraftMobAspects/GraviSuite.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/GraviSuite.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  HardcoreEnderExpansion = lib.mkOption {
    description = "HardcoreEnderExpansion configuration (./config/ThaumcraftMobAspects/HardcoreEnderExpansion.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/HardcoreEnderExpansion.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  IC2 = lib.mkOption {
    description = "IC2 configuration (./config/ThaumcraftMobAspects/IC2.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/IC2.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  LavaMonsters = lib.mkOption {
    description = "LavaMonsters configuration (./config/ThaumcraftMobAspects/LavaMonsters.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/LavaMonsters.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  Natura = lib.mkOption {
    description = "Natura configuration (./config/ThaumcraftMobAspects/Natura.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/Natura.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  OpenBlocks = lib.mkOption {
    description = "OpenBlocks configuration (./config/ThaumcraftMobAspects/OpenBlocks.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/OpenBlocks.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  OpenComputers = lib.mkOption {
    description = "OpenComputers configuration (./config/ThaumcraftMobAspects/OpenComputers.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/OpenComputers.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  OpenMods = lib.mkOption {
    description = "OpenMods configuration (./config/ThaumcraftMobAspects/OpenMods.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/OpenMods.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  Railcraft = lib.mkOption {
    description = "Railcraft configuration (./config/ThaumcraftMobAspects/Railcraft.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/Railcraft.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  RandomThings = lib.mkOption {
    description = "RandomThings configuration (./config/ThaumcraftMobAspects/RandomThings.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/RandomThings.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  SGCraft = lib.mkOption {
    description = "SGCraft configuration (./config/ThaumcraftMobAspects/SGCraft.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/SGCraft.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  SpecialMobs = lib.mkOption {
    description = "SpecialMobs configuration (./config/ThaumcraftMobAspects/SpecialMobs.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/SpecialMobs.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  StevesCarts = lib.mkOption {
    description = "StevesCarts configuration (./config/ThaumcraftMobAspects/StevesCarts.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/StevesCarts.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  TConstruct = lib.mkOption {
    description = "TConstruct configuration (./config/ThaumcraftMobAspects/TConstruct.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/TConstruct.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  TaintedMagic = lib.mkOption {
    description = "TaintedMagic configuration (./config/ThaumcraftMobAspects/TaintedMagic.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/TaintedMagic.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  Thaumcraft = lib.mkOption {
    description = "Thaumcraft configuration (./config/ThaumcraftMobAspects/Thaumcraft.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/Thaumcraft.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  ThaumicExploration = lib.mkOption {
    description = "ThaumicExploration configuration (./config/ThaumcraftMobAspects/ThaumicExploration.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/ThaumicExploration.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  ThaumicHorizons = lib.mkOption {
    description = "ThaumicHorizons configuration (./config/ThaumcraftMobAspects/ThaumicHorizons.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/ThaumicHorizons.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  ThaumicTinkerer = lib.mkOption {
    description = "ThaumicTinkerer configuration (./config/ThaumcraftMobAspects/ThaumicTinkerer.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/ThaumicTinkerer.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  TwilightForest = lib.mkOption {
    description = "TwilightForest configuration (./config/ThaumcraftMobAspects/TwilightForest.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/TwilightForest.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  UtilityMobs = lib.mkOption {
    description = "UtilityMobs configuration (./config/ThaumcraftMobAspects/UtilityMobs.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/UtilityMobs.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  WarpTheory = lib.mkOption {
    description = "WarpTheory configuration (./config/ThaumcraftMobAspects/WarpTheory.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/WarpTheory.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  WitchingGadgets = lib.mkOption {
    description = "WitchingGadgets configuration (./config/ThaumcraftMobAspects/WitchingGadgets.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/WitchingGadgets.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  adventurebackpack = lib.mkOption {
    description = "adventurebackpack configuration (./config/ThaumcraftMobAspects/adventurebackpack.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/adventurebackpack.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  appliedenergistics2 = lib.mkOption {
    description = "appliedenergistics2 configuration (./config/ThaumcraftMobAspects/appliedenergistics2.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/appliedenergistics2.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  aquacreeper = lib.mkOption {
    description = "aquacreeper configuration (./config/ThaumcraftMobAspects/aquacreeper.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/aquacreeper.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  betterquesting = lib.mkOption {
    description = "betterquesting configuration (./config/ThaumcraftMobAspects/betterquesting.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/betterquesting.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  chisel = lib.mkOption {
    description = "chisel configuration (./config/ThaumcraftMobAspects/chisel.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/chisel.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  codechicken = lib.mkOption {
    description = "codechicken configuration (./config/ThaumcraftMobAspects/codechicken.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/codechicken.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  com = lib.mkOption {
    description = "com configuration (./config/ThaumcraftMobAspects/com.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/com.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  computronics = lib.mkOption {
    description = "computronics configuration (./config/ThaumcraftMobAspects/computronics.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/computronics.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  crazypants = lib.mkOption {
    description = "crazypants configuration (./config/ThaumcraftMobAspects/crazypants.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/crazypants.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  creativecore = lib.mkOption {
    description = "creativecore configuration (./config/ThaumcraftMobAspects/creativecore.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/creativecore.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  de = lib.mkOption {
    description = "de configuration (./config/ThaumcraftMobAspects/de.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/de.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  enderzoo = lib.mkOption {
    description = "enderzoo configuration (./config/ThaumcraftMobAspects/enderzoo.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/enderzoo.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  etfuturum = lib.mkOption {
    description = "etfuturum configuration (./config/ThaumcraftMobAspects/etfuturum.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/etfuturum.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  gadomancy = lib.mkOption {
    description = "gadomancy configuration (./config/ThaumcraftMobAspects/gadomancy.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/gadomancy.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  gregtech = lib.mkOption {
    description = "gregtech configuration (./config/ThaumcraftMobAspects/gregtech.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/gregtech.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  gtPlusPlus = lib.mkOption {
    description = "gtPlusPlus configuration (./config/ThaumcraftMobAspects/gtPlusPlus.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/gtPlusPlus.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  ironchestminecarts = lib.mkOption {
    description = "ironchestminecarts configuration (./config/ThaumcraftMobAspects/ironchestminecarts.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/ironchestminecarts.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  makeo = lib.mkOption {
    description = "makeo configuration (./config/ThaumcraftMobAspects/makeo.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/makeo.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  mattermanipulator = lib.mkOption {
    description = "mattermanipulator configuration (./config/ThaumcraftMobAspects/mattermanipulator.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/mattermanipulator.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  miscutils = lib.mkOption {
    description = "miscutils configuration (./config/ThaumcraftMobAspects/miscutils.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/miscutils.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  modularui2 = lib.mkOption {
    description = "modularui2 configuration (./config/ThaumcraftMobAspects/modularui2.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/modularui2.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  net = lib.mkOption {
    description = "net configuration (./config/ThaumcraftMobAspects/net.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/net.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  openmodularturrets = lib.mkOption {
    description = "openmodularturrets configuration (./config/ThaumcraftMobAspects/openmodularturrets.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/openmodularturrets.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  opensecurity = lib.mkOption {
    description = "opensecurity configuration (./config/ThaumcraftMobAspects/opensecurity.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/opensecurity.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  personalspace = lib.mkOption {
    description = "personalspace configuration (./config/ThaumcraftMobAspects/personalspace.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/personalspace.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  tectech = lib.mkOption {
    description = "tectech configuration (./config/ThaumcraftMobAspects/tectech.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/tectech.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  thaumicbases = lib.mkOption {
    description = "thaumicbases configuration (./config/ThaumcraftMobAspects/thaumicbases.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/thaumicbases.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  unknown = lib.mkOption {
    description = "unknown configuration (./config/ThaumcraftMobAspects/unknown.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/unknown.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  vanilla = lib.mkOption {
    description = "vanilla configuration (./config/ThaumcraftMobAspects/vanilla.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/vanilla.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  vanillaitem = lib.mkOption {
    description = "vanillaitem configuration (./config/ThaumcraftMobAspects/vanillaitem.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/vanillaitem.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  witchery = lib.mkOption {
    description = "witchery configuration (./config/ThaumcraftMobAspects/witchery.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumcraftMobAspects/witchery.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "[" = lib.mkOption {
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
