{lib, ...}: {
  RandomThings = lib.mkOption {
    description = "RandomThings configuration (./config/RandomThings.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/RandomThings.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        blocks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BloodmoonSensor = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DyeingMachine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EnderEnergyDistributor = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EnergyDistributor = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              FertilizedDirt = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              FluidDisplay = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ItemCollector = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              LapisLamp = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              MoonSensor = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              NotificationInterface = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              OnlineDetector = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              PlayerInterface = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SpectreGlass = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              WirelessLever = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        dungeonloot = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              WhiteStone = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
            };
          };
        };
        items = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BiomePainter = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              BiomeSolution = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Bloodstone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              CreativeChestGenerator = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              CreativeGrower = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              CreativeSword = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              DropFilter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EnderLetter = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Ginto = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Imbues = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              MagneticForce = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              OpSpectreKey = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SoundRecorder = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              SpectreArmor = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SpectreKey = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SpectreSword = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SpiritBinder = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              VoidStone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Whitestone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        potionids = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ImbueExperience = lib.mkOption {
                type = lib.types.int;
                default = 85;
              };
              ImbueFire = lib.mkOption {
                type = lib.types.int;
                default = 88;
              };
              ImbuePoison = lib.mkOption {
                type = lib.types.int;
                default = 84;
              };
              ImbueSpectre = lib.mkOption {
                type = lib.types.int;
                default = 116;
              };
              ImbueWeakness = lib.mkOption {
                type = lib.types.int;
                default = 99;
              };
              ImbueWither = lib.mkOption {
                type = lib.types.int;
                default = 97;
              };
            };
          };
        };
        settings = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BiomeChargeTime = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "The amount of ticks the biome capsule needs to collect 1 charge";
              };
              BloodMoonBlackFog = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether fog will turn black on a Bloodmoon to look better with the red sky";
              };
              BloodMoonChance = lib.mkOption {
                type = lib.types.float;
                default = 0.01;
                description = "The chance of a bloodmoon happening (0=Never;1=Every night;0.05=5% of all nights)";
              };
              BloodMoonCycle = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Blood moon happens cyclically every X days (set to 0 to disable it)";
              };
              BloodMoonNoSleep = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether players are NOT allowed to sleep during a bloodmoon";
              };
              BloodMoonRedLight = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether light will be tinted red on a Bloodmoon";
              };
              BloodMoonRedMoon = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether the moon will be red on a Bloodmoon";
              };
              BloodMoonRedSky = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether the sky will turn red on a Bloodmoon";
              };
              BloodMoonSpawnLimitMult = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "With which number should the default entity limit be multiplicated on a blood moon";
              };
              BloodMoonSpawnRange = lib.mkOption {
                type = lib.types.int;
                default = 6;
                description = "How close can enemys spawn next to the player on a bloodmoon in blocks? (Vanilla=24)";
              };
              BloodMoonSpawnSpeed = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "How much faster enemys spawn on a bloodmoon (0=Vanilla)";
              };
              BloodmoonMessage = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether players in the overworld should receive a message at the beginning of the bloodmoon";
              };
              BloodmoonRespectGamerule = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether the Bloodmoon should respect the doMobSpawning gamerule";
              };
              BloodmoonVanish = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should monsters spawned by a bloodmoon vanish at dawn?";
              };
              FertilizedDirtGrowthIndicator = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Bonemeal particles will appear whenever fertilized dirt boosts the plant";
              };
              FertilizedDirtGrowthModifier = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "How often should Fertilize Dirt tick the plant above it when it's ticked itself?";
              };
              ImbueDuration = lib.mkOption {
                type = lib.types.int;
                default = 6000;
                description = "The duration of imbues (in ticks)";
              };
              LeaveDecayFuzz = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "A random number from 0-thisconfigoption will be added to the decay speed for every Leave. Setting this to 0 will decay leaves rather linear while higher numbers will let the whole thing look more natural";
              };
              LeaveDecaySpeed = lib.mkOption {
                type = lib.types.int;
                default = 7;
                description = "The amount of ticks every leave needs to decay (Lower is faster)";
              };
              MagneticForceTeleportLength = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "In ticks (20=1 Second)";
              };
              SpectreDimensionFog = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SpectreDimensionID = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The Dimension ID of the spectre World. On first run and when you set this setting to -1 RandomThings will try to find a dimensionID itself";
              };
              SpectreImbueChance = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "The chance of phasing through an attack while being imbued with spectre";
              };
              SpiritChance = lib.mkOption {
                type = lib.types.float;
                default = 0.05;
                description = "The chance of a spirit spawning when you don't use a Spectre Sword (0-1)";
              };
              SpiritChanceSword = lib.mkOption {
                type = lib.types.float;
                default = 0.2;
                description = "The chance of a spirit spawning when you have a spirit binder in your inventory and kill the entity with a spectre sword. (0-1)";
              };
              WirelessLeverRange = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "The range of a wireless lever in blocks";
              };
            };
          };
        };
        vanillachanges = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              FasterLeaveDecay = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Leaves will decay much faster when no longer connected to a log";
              };
              "Hardcore Darkness" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              LockedGamma = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Locks the Gamma to 0";
              };
              ModifiedBackgrounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "The normal dirt background will be replaced with a different block each start";
              };
              ThrowableMotion = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When you throw something or shoot an arrow the motion of the player will be added to the motion of the projectile";
              };
              fixedBackground = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "If this is not empty the options background will not be random but the one specified here. This has to be a Resource Location, for more information visit the Curse Forge Page of Custom Backgrounds";
              };
            };
          };
        };
      };
    };
  };
}
