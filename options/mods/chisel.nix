{lib, ...}: {
  chisel = lib.mkOption {
    description = "chisel configuration (./config/chisel.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/chisel.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        block = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              getRoadLineTool = lib.mkOption {
                type = lib.types.str;
                default = "pickaxe";
                description = "The tool that is able to break roadLines (requires useRoadLineTool to be true to take effect)";
              };
              roadLineToolLevel = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "The lowest harvest level of the tool able to break the road lines (requires useRoadLineTool to be true to take effect) (0 = Wood/Gold, 1 = Stone, 2 = Iron, 3 = Diamond) Default: 0";
              };
              useRoadLineTool = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should the road line require a tool to break (If false, road lines can be broken in Adventure)";
              };
            };
          };
        };
        chisel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              allowChiselCrossColors = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should someone be able to chisel something into a different color.";
              };
              allowChiselDamage = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should the chisel be damageable and take damage when it chisels something.";
              };
              diamondChiselAttackDamage = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The extra attack damage points (in half hearts) that the diamond chisel inflicts when it is used to attack an entity.";
              };
              diamondChiselMaxDamage = lib.mkOption {
                type = lib.types.int;
                default = 2560;
                description = "The max damage of the diamond chisel. [range: 1 ~ 32767, default: 5000]";
              };
              ironChiselAttackDamage = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The extra attack damage points (in half hearts) that the iron chisel inflicts when it is used to attack an entity.";
              };
              ironChiselCanLeftClick = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If this is true, the iron chisel can left click chisel blocks. If false, it cannot.";
              };
              ironChiselHasModes = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If this is true, the iron chisel can change its chisel mode just as the diamond chisel can.";
              };
              ironChiselMaxDamage = lib.mkOption {
                type = lib.types.int;
                default = 256;
                description = "The max damage of the standard iron chisel. [range: 1 ~ 32767, default: 500]";
              };
              netherStarChiselAttackDamage = lib.mkOption {
                type = lib.types.int;
                default = 6;
                description = "The extra attack damage points (in half hearts) that the nether star chisel inflicts when it is used to attack an entity.";
              };
              netherStarChiselMaxDamage = lib.mkOption {
                type = lib.types.int;
                default = 32767;
                description = "The max damage of the nether star chisel. [range: 1 ~ 32767, default: 32767]";
              };
              obsidianChiselAttackDamage = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "The extra attack damage points (in half hearts) that the obsidian chisel inflicts when it is used to attack an entity.";
              };
              obsidianChiselMaxDamage = lib.mkOption {
                type = lib.types.int;
                default = 512;
                description = "The max damage of the obsidian chisel. [range: 1 ~ 32767, default: 2500]";
              };
            };
          };
        };
        client = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              connectInsideCTM = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Choose whether the inside corner is disconnected on a CTM block - http://imgur.com/eUywLZ4";
              };
              connectedTextures = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable connected textures";
              };
              imTooGoodForBlockDescriptions = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "For those people who just hate block descriptions on the world gen!";
              };
              particleTickrate = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Particle tick rate. Greater value = less particles.";
              };
              pillarOldGraphics = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Use old pillar textures";
              };
              tooltipsUseBlockDescriptions = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Make variations of blocks have the same name, and use the description in tooltip to distinguish them.";
              };
            };
          };
        };
        features = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              aeCertusQuartz = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              aeSkyStone = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              aluminum = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              amber = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              andesite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              antiblock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              arcane = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              autoChisel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              autoChiselUpgrades = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ballOfMoss = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              beacon = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              bloodBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              bloodRune = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              bookshelf = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              brickCustom = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              bronze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              carpet = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              carpetFloor = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              chisel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              cloud = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              cobblestone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              cobblestoneMossy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              concrete = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              copper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              cubits = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              diamondBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              diorite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              dirt = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              emeraldBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              endStone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              factory = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              fantasy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              froglight = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              futura = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              glass = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              glassPane = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              glassStained = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              glassStainedPane = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              glotek = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              glowstone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              goldBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              granite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              grimstone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              hempcrete = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              hempcreteSand = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              hexPlating = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              holystone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ice = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              icePillar = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              iceStairs = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ironBars = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ironBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              jackolantern = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              laboratory = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              lapisBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              lavastone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              lead = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              leaves = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              limestone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              marble = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              marblePillar = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              nation = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              neonite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              netherBrick = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              netherRack = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              nucrete = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              obsidian = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              packedice = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              packedicePillar = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              packediceStairs = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              paperWall = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              present = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              pumpkin = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              purpur = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              quartz = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              railcraft = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              rcAbyssalBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              rcBleachedBone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              rcBloodStained = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              rcFrostBoundBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              rcInfernalStone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              rcQuarriedBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              rcSandyStone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              redstoneBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              roadLine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              sandstone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              silver = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              smashingRock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              snakeSandstone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              snakestone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              snakestoneObsidian = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              steel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              stoneBrick = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              svelstone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              tallow = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              technical = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              templeBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              templeBlockMossy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              tfMazestone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              tfTowerstone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              tfUnderBrick = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              thaumium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              tin = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              torch = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              twilghtForest = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              twilightForest = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              tyrian = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              uranium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              valentines = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              voidstone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              voidstonePillars = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              warningSign = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              waterstone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              wood = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              woolenClay = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              allowBrickToMossyInChisel = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, you can chisel stone brick to mossy stone brick.";
              };
              allowSmoothStoneToStoneBricksAndBack = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              amountYouGetFromFactoryBlockCrafting = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              canMobsSpawnOnTheChiselBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Can mobs Spawn on the Chisel Blocks";
              };
              chiselAlternateRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Use alternative crafting recipe for the chisel";
              };
              chiselBackToVanillaLeaves = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If this is true, you can chisel from the chisel leaves back to vanilla ones. If it is false, you cannot.";
              };
              chiselStoneToCobbleBricks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Chisel stone to cobblestone and bricks by left clicking.";
              };
              concreteVelocityMult = lib.mkOption {
                type = lib.types.str;
                default = "1.35";
                description = "The factor that concrete increases your velocity. Default is 1.35, set to 1 for no change.";
              };
              doesCloudRenderLikeGhost = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableFMP = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Do you want to enable FMP";
              };
              fullBlockConcrete = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should concrete be a full block. This will also unavoidably disable speed increase if set to true.";
              };
            };
          };
        };
        hexcolors = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              hexblack = lib.mkOption {
                type = lib.types.str;
                default = "#1e1b1b";
                description = "Black color for hex block overlay #RRGGBB";
              };
              hexblue = lib.mkOption {
                type = lib.types.str;
                default = "#253192";
                description = "Blue color for hex block overlay #RRGGBB";
              };
              hexbrown = lib.mkOption {
                type = lib.types.str;
                default = "#51301a";
                description = "Brown color for hex block overlay #RRGGBB";
              };
              hexcyan = lib.mkOption {
                type = lib.types.str;
                default = "#287697";
                description = "Cyan color for hex block overlay #RRGGBB";
              };
              hexgray = lib.mkOption {
                type = lib.types.str;
                default = "#434343";
                description = "Gray color for hex block overlay #RRGGBB";
              };
              hexgreen = lib.mkOption {
                type = lib.types.str;
                default = "#3b511a";
                description = "Green color for hex block overlay #RRGGBB";
              };
              hexlightBlue = lib.mkOption {
                type = lib.types.str;
                default = "#6689d3";
                description = "LightBlue color for hex block overlay #RRGGBB";
              };
              hexlime = lib.mkOption {
                type = lib.types.str;
                default = "#41cd34";
                description = "Lime color for hex block overlay #RRGGBB";
              };
              hexmagenta = lib.mkOption {
                type = lib.types.str;
                default = "#c354cd";
                description = "Magenta color for hex block overlay #RRGGBB";
              };
              hexorange = lib.mkOption {
                type = lib.types.str;
                default = "#eb8844";
                description = "Orange color for hex block overlay #RRGGBB";
              };
              hexpink = lib.mkOption {
                type = lib.types.str;
                default = "#d88198";
                description = "Pink color for hex block overlay #RRGGBB";
              };
              hexpurple = lib.mkOption {
                type = lib.types.str;
                default = "#7b2fbe";
                description = "Purple color for hex block overlay #RRGGBB";
              };
              hexred = lib.mkOption {
                type = lib.types.str;
                default = "#b3312c";
                description = "Red color for hex block overlay #RRGGBB";
              };
              hexsilver = lib.mkOption {
                type = lib.types.str;
                default = "#ababab";
                description = "Silver color for hex block overlay #RRGGBB";
              };
              hexwhite = lib.mkOption {
                type = lib.types.str;
                default = "#f0f0f0";
                description = "White color for hex block overlay #RRGGBB";
              };
              hexyellow = lib.mkOption {
                type = lib.types.str;
                default = "#decf2a";
                description = "Yellow color for hex block overlay #RRGGBB";
              };
            };
          };
        };
        tweaks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "concrete recipe block" = lib.mkOption {
                type = lib.types.str;
                default = "gravel";
              };
            };
          };
        };
        worldgen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              andesiteAmount = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Amount of andesite to generate in the world; use 0 for none.";
              };
              dioriteAmount = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Amount of diorite to generate in the world; use 0 for none.";
              };
              graniteAmount = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Amount of granite to generate in the world; use 0 for none.";
              };
              limestoneAmount = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Amount of limestone to generate in the world; use 0 for none";
              };
              marbleAmount = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Amount of marble to generate in the world; use 0 for none";
              };
            };
          };
        };
      };
    };
  };
}
