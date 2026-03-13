{lib, ...}: {
  AppliedEnergistics2_cfg = lib.mkOption {
    description = "AppliedEnergistics2_cfg configuration (./config/AppliedEnergistics2/AppliedEnergistics2.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/AppliedEnergistics2/AppliedEnergistics2.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        automation = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              formationPlaneEntityLimit = lib.mkOption {
                type = lib.types.int;
                default = 128;
              };
            };
          };
        };
        battery = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              chargedStaff = lib.mkOption {
                type = lib.types.int;
                default = 8000;
              };
              colorApplicator = lib.mkOption {
                type = lib.types.int;
                default = 20000;
              };
              entropyManipulator = lib.mkOption {
                type = lib.types.int;
                default = 200000;
              };
              matterCannon = lib.mkOption {
                type = lib.types.int;
                default = 200000;
              };
              portableCell = lib.mkOption {
                type = lib.types.int;
                default = 200000;
              };
              wirelessTerminal = lib.mkOption {
                type = lib.types.int;
                default = 1600000;
              };
            };
          };
        };
        client = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              PowerUnit = lib.mkOption {
                type = lib.types.str;
                default = "AE";
                description = "Possible Values: AE, EU, WA, RF, MK";
              };
              SEARCH_MODE = lib.mkOption {
                type = lib.types.str;
                default = "AUTOSEARCH";
                description = "Possible Values: AUTOSEARCH, MANUAL_SEARCH, NEI_AUTOSEARCH, NEI_MANUAL_SEARCH";
              };
              SEARCH_TOOLTIPS = lib.mkOption {
                type = lib.types.str;
                default = "YES";
                description = "Possible Values: YES, NO, UNDECIDED";
              };
              TERMINAL_STYLE = lib.mkOption {
                type = lib.types.str;
                default = "TALL";
                description = "Possible Values: TALL, FULL, SMALL";
              };
              craftAmtButton1 = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Controls buttons on Crafting Screen : Capped at 9";
              };
              craftAmtButton2 = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Controls buttons on Crafting Screen : Capped at 99";
              };
              craftAmtButton3 = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Controls buttons on Crafting Screen : Capped at 999";
              };
              craftAmtButton4 = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "Controls buttons on Crafting Screen : Capped at 9999";
              };
              disableColoredCableRecipesInNEI = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableEffects = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              levelAmtButton1 = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Controls buttons on Level Emitter Screen : Capped at 9";
              };
              levelAmtButton2 = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Controls buttons on Level Emitter Screen : Capped at 99";
              };
              levelAmtButton3 = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Controls buttons on Level Emitter Screen : Capped at 999";
              };
              levelAmtButton4 = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "Controls buttons on Level Emitter Screen : Capped at 9999";
              };
              priorityAmtButton1 = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Controls buttons on Priority Screen : Capped at 9";
              };
              priorityAmtButton2 = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Controls buttons on Priority Screen : Capped at 99";
              };
              priorityAmtButton3 = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Controls buttons on Priority Screen : Capped at 999";
              };
              priorityAmtButton4 = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "Controls buttons on Priority Screen : Capped at 9999";
              };
              useColoredCraftingStatus = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              useTerminalUseLargeFont = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        condenser = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              MatterBalls = lib.mkOption {
                type = lib.types.int;
                default = 512;
              };
              Singularity = lib.mkOption {
                type = lib.types.int;
                default = 512000;
              };
            };
          };
        };
        craftingcpu = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              craftingCalculationTimePerTick = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
            };
          };
        };
        features = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              world = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    CertusQuartzWorldGen = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    ChestLoot = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    DecorativeLights = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    DecorativeQuartzBlocks = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    Flour = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    GrindStone = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    Inscriber = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    MeteoriteWorldGen = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    SkyStoneChests = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    SpawnPressesInMeteorites = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    TinyTNT = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    VillagerTrading = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              toolsclassifications = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    CertusQuartzTools = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    NetherQuartzTools = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    PoweredTools = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              tools = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    ChargedStaff = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    ColorApplicator = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    EntropyManipulator = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    MatterCannon = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    MeteoriteCompass = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    PaintBalls = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    QuartzAxe = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    QuartzHoe = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    QuartzKnife = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    QuartzPickaxe = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    QuartzSpade = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    QuartzSword = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    QuartzWrench = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    WirelessAccessTerminal = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              networkfeatures = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Channels = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    PowerGen = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    QuantumNetworkBridge = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    Security = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    SpatialIO = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              networkbuses = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    AnnihilationPlane = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    CraftingTerminal = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    ExportBus = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    FormationPlane = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    IdentityAnnihilationPlane = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    ImportBus = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    LevelEmitter = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    P2PTunnel = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    PartConversionMonitor = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    StorageBus = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    StorageMonitor = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              portablecell = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    PortableCell = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              storage = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    IOPort = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    MEChest = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    MEDrive = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    StorageCells = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              networktool = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    NetworkTool = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              highercapacity = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    DenseCables = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    DenseEnergyCells = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              p2ptunnels = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    P2PTunnelEU = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    P2PTunnelItems = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    P2PTunnelLight = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    P2PTunnelLiquids = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    P2PTunnelME = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    P2PTunnelOpenComputers = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    P2PTunnelPressure = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    P2PTunnelRF = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    P2PTunnelRedstone = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              blockfeatures = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    MassCannonBlockDamage = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    TinyTNTBlockDamage = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              facades = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Facades = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              misc = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Achievements = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    CraftingLog = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    Creative = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    DebugLogging = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    GrinderLogging = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    IntegrationLogging = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    LightDetector = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    LogSecurityAudits = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    Logging = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    PacketLogging = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    UnsupportedDeveloperTools = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    UpdateLogging = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    WebsiteRecipes = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                  };
                };
              };
              crafting = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    CustomRecipes = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    EnableDisassemblyCrafting = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    EnableFacadeCrafting = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    InWorldFluix = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    InWorldPurification = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    InWorldSingularity = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    InterfaceTerminal = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              rendering = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    AlphaPass = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              craftingfeatures = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    CraftingCPU = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    MolecularAssembler = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    Patterns = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              commands = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    ChunkLoggerTrace = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                  };
                };
              };
            };
          };
        };
        grindstone = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              grinderOres = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
              };
              oreDoublePercentage = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
              };
            };
          };
        };
        modintegration = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BetterStorage = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              BuildCraftBuilders = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              BuildCraftCore = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              BuildCraftTransport = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              Chisel = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              ColoredLightsCore = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              CraftGuide = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              DeepStorageUnit = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              Factorization = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              ForgeMultiPart = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              GregTech = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              ImmibisMicroblocks = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              IndustrialCraft2 = lib.mkOption {
                type = lib.types.str;
                default = "OFF";
              };
              InventoryTweaks = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              Jabba = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              Mekanism = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              MineFactoryReloaded = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              NotEnoughItems = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              OpenComputers = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              PneumaticCraft = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              Railcraft = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              RedstoneFluxPower-Items = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              RedstoneFluxPower-Tiles = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              RotaryCraft = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              RotatableBlocks = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
              Waila = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
              };
            };
          };
        };
        orecamouflage = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              CertusQuartzCrystal = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "OreDictionary Names: crystalCertusQuartz";
              };
              CertusQuartzDust = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "OreDictionary Names: dustCertusQuartz";
              };
              EnderDust = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "OreDictionary Names: dustEnder,dustEnderPearl";
              };
              Flour = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "OreDictionary Names: dustWheat";
              };
              GoldDust = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "OreDictionary Names: dustGold";
              };
              IronDust = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "OreDictionary Names: dustIron";
              };
              IronNugget = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "OreDictionary Names: nuggetIron";
              };
              NetherQuartzDust = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "OreDictionary Names: dustNetherQuartz";
              };
              Silicon = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "OreDictionary Names: itemSilicon";
              };
              WoodenGear = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        powerratios = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              IC2 = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
              };
              Mekanism = lib.mkOption {
                type = lib.types.float;
                default = 0.2;
              };
              RotaryCraft = lib.mkOption {
                type = lib.types.float;
                default = 8.884150675195451E-5;
              };
              ThermalExpansion = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
              };
              UsageMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
            };
          };
        };
        spatialio = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              spatialPowerExponent = lib.mkOption {
                type = lib.types.float;
                default = 1.35;
              };
              spatialPowerMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 1250.0;
              };
              storageBiomeID = lib.mkOption {
                type = lib.types.int;
                default = 135;
              };
              storageProviderID = lib.mkOption {
                type = lib.types.int;
                default = -11;
              };
            };
          };
        };
        tickrates = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "AnnihilationPlane.max" = lib.mkOption {
                type = lib.types.int;
                default = 120;
              };
              "AnnihilationPlane.min" = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              "ExportBus.max" = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              "ExportBus.min" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "IOPort.max" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "IOPort.min" = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              "ImportBus.max" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ImportBus.min" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "Inscriber.max" = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              "Inscriber.min" = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              "Interface.max" = lib.mkOption {
                type = lib.types.int;
                default = 120;
              };
              "Interface.min" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "ItemTunnel.max" = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              "ItemTunnel.min" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "LightTunnel.max" = lib.mkOption {
                type = lib.types.int;
                default = 120;
              };
              "LightTunnel.min" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "METunnel.max" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "METunnel.min" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "OpenComputersTunnel.max" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "OpenComputersTunnel.min" = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              "PressureTunnel.max" = lib.mkOption {
                type = lib.types.int;
                default = 120;
              };
              "PressureTunnel.min" = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              "StorageBus.max" = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              "StorageBus.min" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "VibrationChamber.max" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "VibrationChamber.min" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
            };
          };
        };
        wireless = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              WirelessBaseCost = lib.mkOption {
                type = lib.types.float;
                default = 8.0;
              };
              WirelessBaseRange = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
              };
              WirelessBoosterExp = lib.mkOption {
                type = lib.types.float;
                default = 1.5;
              };
              WirelessBoosterRangeMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              WirelessCostMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              WirelessTerminalDrainMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
            };
          };
        };
        worldgen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              meteoriteClusterChance = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              meteoriteDimensionWhitelist = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 0 ];
              };
              meteoriteSpawnChance = lib.mkOption {
                type = lib.types.float;
                default = 0.3;
              };
              minMeteoriteDistance = lib.mkOption {
                type = lib.types.int;
                default = 707;
              };
              quartzOresClusterAmount = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              quartzOresPerCluster = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              spawnChargedChance = lib.mkOption {
                type = lib.types.float;
                default = 0.07999998331069946;
              };
            };
          };
        };
      };
    };
  };
  extracells_cfg = lib.mkOption {
    description = "extracells_cfg configuration (./config/AppliedEnergistics2/extracells.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/AppliedEnergistics2/extracells.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        integration = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "enableAE2 Wireless Crafting Terminal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable AE2 Wireless Crafting Terminal Integration.";
              };
              enableBuildCraftFuel = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable BuildCraftFuel Integration.";
              };
              enableIngameWikiMod = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable IngameWikiMod Integration.";
              };
              enableMekanism = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Mekanism Integration.";
              };
              enableMekanismGas = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable MekanismGas Integration.";
              };
              enableNotEnoughItems = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable NotEnoughItems Integration.";
              };
              enableOpenComputers = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable OpenComputers Integration.";
              };
              "enableThaumatic Energistics" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Thaumatic Energistics Integration.";
              };
              enableWaila = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Waila Integration.";
              };
            };
          };
        };
        "storage cells" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              dynamicTypes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should the mount of bytes needed for a new type depend on the cellsize?";
              };
            };
          };
        };
        tooltips = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              shortenedBuckets = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Shall the guis shorten large mB values?";
              };
            };
          };
        };
      };
    };
  };
}
