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
                description = "List any mob names you want disabled on the server";
              };
              dumpDeadPlayersInventories = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should player inventories be stored after death (can be later restored with ob_inventory command)";
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
                description = "List of blocks that should be invisible to cartographer. Example: id:3,  OpenBlocks:openblocks_radio (case sensitive)";
              };
              reportInvalidRequest = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should invalid height map request be always reported";
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
                description = "Enable magnet turtles";
              };
              boringMode = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use shift to control crane direction (otherwise, toggle every time)";
              };
              doCraneCollisionCheck = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable collision checking of crane arm";
              };
              showTurtles = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Show magnet turtles in creative list";
              };
              turtleMagnetDeactivateRange = lib.mkOption {
                type = lib.types.float;
                default = 3.0;
                description = "Maximal distance from turtle to magnet when deactivating";
              };
              turtleMagnetRange = lib.mkOption {
                type = lib.types.float;
                default = 32.0;
                description = "Range of magnet CC peripheral";
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
                description = "Maximum distance cursor can reach (warning: increasing may cause crashes)";
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
                description = "Show structures found by golden eye";
              };
              gravesDebug = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Dump extra amount of data, every time grave is created";
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
                description = "If true, /dev/null will require sneaking in addition to clicking air to open gui";
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
                description = "Should elevator move player to center of block after teleporting";
              };
              elevatorXpDrainRatio = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
                description = "XP consumed by elevator (total amount = ratio * distance)";
              };
              ignoreAllBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable limit of blocks between elevators (equivalent to maxPassThrough = infinity)";
              };
              ignoreHalfBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "The elevator will ignore half blocks when counting the blocks it can pass through";
              };
              irregularBlocksArePassable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "The elevator will try to pass through blocks that have custom collision boxes";
              };
              maxPassThrough = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "The maximum amount of blocks the elevator can pass through before the teleport fails";
              };
              searchDistance = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "The range of the drop block";
              };
              specialBlockRules = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "Defines blocks that are handled specially by elevators. Entries are in form <modId>:<blockName>:<action> or id:<blockId>:<action>. Possible actions: abort (elevator can't pass block), increment (counts for elevatorMaxBlockPassCount limit) and ignore";
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
                description = "Can golden egg pick blocks while hatching (may lead to glitches)";
              };
            };
          };
        };
        fan = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              fanForce = lib.mkOption {
                type = lib.types.float;
                default = 0.05;
                description = "Maximum force applied every tick to entities nearby (linear decay)";
              };
              fanRange = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
                description = "Range of fan in blocks";
              };
              isRedstoneActivated = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Is fan force controlled by redstone current";
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
                description = "Explosive enchant can break blocks at level 3";
              };
              explosiveEnchantmentId = lib.mkOption {
                type = lib.types.int;
                default = 211;
                description = "Id of explosive enchantment";
              };
              flimFlamEnchantmentId = lib.mkOption {
                type = lib.types.int;
                default = 213;
                description = "Id of flim flam enchantment";
              };
              infoBook = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should every player get info book on first login";
              };
              lastStandEnchantmentId = lib.mkOption {
                type = lib.types.int;
                default = 212;
                description = "Id of last stand enchantment";
              };
              lastStandFormula = lib.mkOption {
                type = lib.types.str;
                default = "max(1, 50*(1-(hp-dmg))/ench)";
                description = "Formula for XP cost (variables: hp,dmg,ench,xp). Note: calculation only triggers when hp - dmg < 1.";
              };
              xpToLiquidRatio = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Storage in mB needed to store single XP point";
              };
            };
          };
        };
        glasses = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              opacity = lib.mkOption {
                type = lib.types.float;
                default = 0.95;
                description = "0.0 - no visible change to world, 1.0 - world fully obscured";
              };
              useTexture = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use texture for obscuring world";
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
                description = "Can grave spawn single block of dirt when it has no block under?";
              };
              destructiveGraves = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Try to overwrite blocks with graves if no suitable place is found on first try";
              };
              maximalPosY = lib.mkOption {
                type = lib.types.int;
                default = 249;
                description = "Maximal height where grave should be spawned (default value selected to prevent spawning in bedrock)";
              };
              minimalPosY = lib.mkOption {
                type = lib.types.int;
                default = 6;
                description = "Minimal height where grave should be spawned (default value selected to prevent spawning in bedrock)";
              };
              requiresGraveInInv = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Require gravestone to be in a player's inventory (it is consumed)";
              };
              skeletonSpawnRate = lib.mkOption {
                type = lib.types.float;
                default = 0.002;
                description = "Spawn rate, range: 0..1, default: about 1 per 50s";
              };
              spawnRange = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Size of cube searched for spaces suitable for grave spawning";
              };
              spawnSkeletons = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should grave randomly spawn skeletons";
              };
              specialActionFrequency = lib.mkOption {
                type = lib.types.float;
                default = 0.03;
                description = "Frequency of special action on grave digging, 0..1";
              };
              storeContents = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Store contents of spawned graves into separate NBT files (can later be restored with ob_inventory command)";
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
                description = "How builder guide should react to redstone. 0 - not sensitive, 1 - powered == on, -1 - inverted";
              };
              renderDistanceSq = lib.mkOption {
                type = lib.types.float;
                default = 65536.0;
                description = "Square of guide maximum render distance";
              };
              useAdvancedRenderer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Try to use advanced OpenGL for performance improvement";
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
                description = "Enable experimental features that may be buggy or broken entirely";
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
                description = "Enable a whole new level of hanggliding experience through thermal lift. See keybindings for acoustic vario controls";
              };
            };
          };
        };
        imaginary = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              fadingSpeed = lib.mkOption {
                type = lib.types.float;
                default = 0.0075;
                description = "Speed of imaginary blocks fading/appearing";
              };
              numberOfUses = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
                description = "Number of newly created crayon/pencil uses";
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
                description = "If true, ladders will behave in old way: single item will place ladder all the way down, but it will not drop when broken";
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
                description = "Can crane magnet pick block?";
              };
              pickEntities = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Can crane magnet pick entities?";
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
                description = "The projector's cone will use the specified brightness value to render. Value must be between 0 and 255 inclusive. To use the default world brightness set -1 as the value. Keep in mind that default brightness means that the cone will render as light blue during the day and dark blue during the night.";
              };
              lightLevel = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Level of light emitted by the active projector. Defaults to 10. Must be at maximum 15 and positive";
              };
              lightUpWhenWorking = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Projector will light up whenever it is displaying a map";
              };
              renderHolographicCone = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Projector will render a holographic cone whenever active";
              };
              renderHolographicGrid = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "The holographic cone will display a grid. The grid texture may look a bit pixelated and there may be a little gap between two corners. This is not an error and it is only a texture calculation problem (e.g. 0.25 does not correctly correspond to 16 pixels in a 64x64 texture)";
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
                description = "Music merchant id (-1 to disable)";
              };
              radioVillagerSellsRecords = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should tuned crystals sell records too";
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
                description = "The rate at which scaffolding should break. 0 - fastest";
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
                description = "Sponge block range (distance from center)";
              };
              spongeStickUseCount = lib.mkOption {
                type = lib.types.int;
                default = 256;
                description = "SpongeOnAStick use count";
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
                description = "Consume rate of bonemeal (ticks/item).";
              };
              bonemealFertilizeChance = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "1/chance that crops will be fertilized with bonemeal";
              };
              effectiveRange = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "The range in each cardinal direction that crops will be affected.";
              };
              fertilizeChance = lib.mkOption {
                type = lib.types.int;
                default = 25;
                description = "1/chance that crops will be fertilized without bonemeal";
              };
              internalTankCapacity = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "Capacity (in mB) of internal tank.";
              };
              waterConsumeRate = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Consume rate of sprinkler (ticks/mB).";
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
                description = "The amount of buckets each tank can hold";
              };
              displayAllFluids = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should filled tanks be searchable with creative menu";
              };
              emitLight = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Tanks will emit light when they contain a liquid that glows (eg. lava)";
              };
              fluidDifferenceUpdateThreshold = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Minimal difference in fluid level between neigbors required for tank update (can be used for performance finetuning";
              };
              tankTicks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should tanks try to balance liquid amounts with neighbours";
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
                description = "You know, THAT thing! That you shouldn't do in public!";
              };
              flimFlamBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "Blacklist/Whitelist for effects used by flim-flam enchantment";
              };
              reverseBlacklist = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, flim-flam blacklist will become whitelist";
              };
              safeOnly = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Allow only flimflams that don't cause death (or at least very rarely)";
              };
              sillyLoreDisplay = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "0 - lore hidden, 1 - visible only with pressed ALT, 2 - always visible";
              };
              weAreSeriousPeople = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Are you serious too?";
              };
            };
          };
        };
        trophy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              trophyDropChance = lib.mkOption {
                type = lib.types.float;
                default = 0.01;
                description = "Legacy value. For actual configuration, see 'trophyDropChanceFormula'";
              };
              trophyDropChanceFormula = lib.mkOption {
                type = lib.types.str;
                default = "let([bias=rand()/4, selection=rand()], (looting + bias) * chance - selection)";
                description = "Formula for calculating trophy drop chance. Trophy drops when result is positive.";
              };
            };
          };
        };
      };
    };
  };
}
