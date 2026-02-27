{lib, ...}: {
  OpenBlocks = lib.mkOption {
    description = "OpenBlocks configuration (./config/OpenBlocks.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/OpenBlocks.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        additional = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              disableMobNames = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
              };
              dumpDeadPlayersInventories = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        blocks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              autoanvil = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              autoenchantmenttable = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              beartrap = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              bigbutton = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              blockPlacer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              blockbreaker = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              builder_guide = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              cannon = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              canvas = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              canvasglass = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              donationStation = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              drawingtable = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              elevator = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              elevator_rotating = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              fan = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              flag = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              goldenegg = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              grave = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              guide = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              heal = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              imaginary = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              itemDropper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ladder = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              paintcan = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              paintmixer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              path = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              projector = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "projector.working" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ropeladder = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              scaffolding = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              sky = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              sponge = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              sprinkler = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              tank = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              target = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              trophy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              vacuumhopper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              village_highlighter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              xpbottler = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              xpdrain = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              xpshower = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        cartographer = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              blockBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "\"Natura:Cloud\"" ];
              };
              reportInvalidRequest = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        crane = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addTurtles = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              boringMode = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              doCraneCollisionCheck = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              showTurtles = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              turtleMagnetDeactivateRange = lib.mkOption {
                type = lib.types.str;
                default = "3.0";
              };
              turtleMagnetRange = lib.mkOption {
                type = lib.types.str;
                default = "32.0";
              };
            };
          };
        };
        cursor = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              cursorMaxDamage = lib.mkOption {
                type = lib.types.int;
                default = 128;
              };
              cursorMaxDistance = lib.mkOption {
                type = lib.types.int;
                default = 64;
              };
            };
          };
        };
        debug = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              goldenEyeDebug = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              gravesDebug = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        devnull = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              sneakClickToGui = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        dropblock = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              centerOnBlock = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              elevatorXpDrainRatio = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
              };
              ignoreAllBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              ignoreHalfBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              irregularBlocksArePassable = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              maxPassThrough = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              searchDistance = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              specialBlockRules = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
              };
            };
          };
        };
        egg = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              pickBlocks = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        fan = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              fanForce = lib.mkOption {
                type = lib.types.str;
                default = "0.05";
              };
              fanRange = lib.mkOption {
                type = lib.types.str;
                default = "10.0";
              };
              isRedstoneActivated = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        features = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              explosiveEnchantGrief = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              explosiveEnchantmentId = lib.mkOption {
                type = lib.types.int;
                default = 211;
              };
              flimFlamEnchantmentId = lib.mkOption {
                type = lib.types.int;
                default = 213;
              };
              infoBook = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              lastStandEnchantmentId = lib.mkOption {
                type = lib.types.int;
                default = 212;
              };
              lastStandFormula = lib.mkOption {
                type = lib.types.str;
                default = "max(1, 50*(1-(hp-dmg))/ench)";
              };
              xpToLiquidRatio = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BlacklistedDimensions = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 95 94 93 92 86 85 84 83 82 81 77 74 71 69 63 54 51 49 48 47 46 45 44 43 42 41 40 39 38 37 36 35 33 32 31 30 29 28 25 ];
                description = "List of dimension IDs where the glider doesn't work";
              };
            };
          };
        };
        glasses = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              opacity = lib.mkOption {
                type = lib.types.str;
                default = "0.95";
              };
              useTexture = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        graves = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              canSpawnBase = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              destructiveGraves = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              maximalPosY = lib.mkOption {
                type = lib.types.int;
                default = 249;
              };
              minimalPosY = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              requiresGraveInInv = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              skeletonSpawnRate = lib.mkOption {
                type = lib.types.str;
                default = "0.002";
              };
              spawnRange = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              spawnSkeletons = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              specialActionFrequency = lib.mkOption {
                type = lib.types.str;
                default = "0.03";
              };
              storeContents = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              voidFix = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        guide = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              redstoneSensitivity = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              renderDistanceSq = lib.mkOption {
                type = lib.types.str;
                default = "65536.0";
              };
              useAdvancedRenderer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        hacks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableExperimentalFeatures = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        hangglider = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableThermal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        imaginary = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              fadingSpeed = lib.mkOption {
                type = lib.types.str;
                default = "0.0075";
              };
              numberOfUses = lib.mkOption {
                type = lib.types.str;
                default = "10.0";
              };
            };
          };
        };
        items = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              cartographer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              craneBackpack = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              craneControl = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              crayonGlasses = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              cursor = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              devnull = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              emptyMap = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              epicEraser = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              filledbucket = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              goldenEye = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              hangglider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              heightMap = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              infoBook = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              luggage = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              paintBrush = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              pedometer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              pencilGlasses = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              seriousGlasses = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              sleepingBag = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              slimalyzer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              sonicglasses = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              spongeonastick = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              squeegee = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              stencil = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              tastyClay = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              technicolorGlasses = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              wrench = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        ladder = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              infiniteMode = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        loot = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              donationStation = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              paintBrush = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              sonicGlasses = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              stencil = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              technicolorGlasses = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        magnet = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              pickBlocks = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              pickEntities = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        projector = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              brightness = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              lightLevel = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              lightUpWhenWorking = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              renderHolographicCone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              renderHolographicGrid = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        radio = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              radioVillagerId = lib.mkOption {
                type = lib.types.int;
                default = 6156;
              };
              radioVillagerSellsRecords = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        scaffolding = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              despawnRate = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        sponge = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              spongeRange = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              spongeStickUseCount = lib.mkOption {
                type = lib.types.int;
                default = 256;
              };
            };
          };
        };
        sprinkler = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              bonemealConsumeRate = lib.mkOption {
                type = lib.types.int;
                default = 300;
              };
              bonemealFertilizeChance = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              effectiveRange = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              fertilizeChance = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              internalTankCapacity = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              waterConsumeRate = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        tanks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              bucketsPerTank = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
              displayAllFluids = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              emitLight = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              fluidDifferenceUpdateThreshold = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              tankTicks = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        tomfoolery = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              doItWhileTyping = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              flimFlamBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
              };
              reverseBlacklist = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              safeOnly = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              sillyLoreDisplay = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weAreSeriousPeople = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        trophy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              trophyDropChance = lib.mkOption {
                type = lib.types.str;
                default = "0.01";
              };
              trophyDropChanceFormula = lib.mkOption {
                type = lib.types.str;
                default = "let([bias=rand()/4, selection=rand()], (looting + bias) * chance - selection)";
              };
            };
          };
        };
      };
    };
  };
}
