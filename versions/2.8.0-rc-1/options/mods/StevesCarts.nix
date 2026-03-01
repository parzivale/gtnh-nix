{lib, ...}: {
  StevesCarts = lib.mkOption {
    description = "StevesCarts configuration (./config/StevesCarts.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/StevesCarts.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        enabledmodules = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              AdvancedControlSystem = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AdvancedCrafter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AdvancedShooter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AdvancedSmelter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AdvancedTank = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AdvancedThermalEngine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BasicDrill = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BasicFarmer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BasicSolarEngine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BasicWoodCutter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BrakeHandle = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BridgeBuilder = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Cage = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              CakeServer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ChunkLoader = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              CleaningMachine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              CoalEngine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ColorRandomizer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Colorizer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              CompactSolarEngine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Crafter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              CreativeEngine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              CreativeHull = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              CreativeIncinerator = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              CreativeSupplies = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              CreativeTank = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Crop_Exotic = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Crop_NetherWart = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DivineShield = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DrillIntelligence = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DynamiteCarrier = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Enchanter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityDetector_Animal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityDetector_Monster = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityDetector_Player = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityDetector_Villager = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ExperienceBank = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ExtractingChests = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ExtremeMelter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Fertilizer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Fireworkdisplay = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              FrontChest = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              FrontTank = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GalgadorianDrill = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GalgadorianFarmer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GalgadorianHull = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GalgadorianMinecartHull = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GalgadorianWoodCutter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              HardenedDrill = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              HardenedWoodCutter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              HeightController = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Hydrator = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Incinerator = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              InfinityEngine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              InformationProvider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              InternalStorage = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              InternalTank = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              InvisibilityCore = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              IronDrill = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              LargeRailer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              LawnMower = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              LiquidCleaner = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              LiquidSensors = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              MechanicalPig = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Melter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Milker = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              NoteSequencer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              OpenTank = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              OreExtractor = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              PlanterRangeExtender = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              PowerObserver = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Projectile_Egg = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Projectile_FireCharge = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Projectile_Potion = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              QuantumMinecartHull = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Railer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ReinforcedHull = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ReinforcedMinecartHull = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Seat = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Shooter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SideChests = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SideTanks = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Smelter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SolarEngine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              StandardHull = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              StandardMinecartHull = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Steve'sArcade" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ThermalEngine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TinyCoalEngine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TopChest = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TopTank = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TorchPlacer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TrackRemover = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Tree_Exotic = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              WoodenHull = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              WoodenMinecartHull = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        settings = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              MaximumNumberOfDynamites = lib.mkOption {
                type = lib.types.int;
                default = 50;
              };
              useArcadeSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              useTetrisMobSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
      };
    };
  };
}
