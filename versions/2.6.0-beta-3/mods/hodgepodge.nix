{lib, ...}: {
  hodgepodge_cfg = lib.mkOption {
    description = "hodgepodge_cfg configuration (./config/hodgepodge.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/hodgepodge.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        asm = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              cofhWorldTransformer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Glease's ASM patch to disable unused CoFH tileentity cache";
              };
              pollutionAsm = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable pollution rendering ASM";
              };
              speedupProgressBar = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speedup progressbar";
              };
              thermosCraftServerClass = lib.mkOption {
                type = lib.types.str;
                default = "org.bukkit.craftbukkit.v1_7_R4.CraftServer";
                description = "If using Bukkit/Thermos, the CraftServer package.";
              };
            };
          };
        };
        debug = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              chunkSaveCMEDebug = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable chunk save cme debugging code.";
              };
              dimensionManagerDebug = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prints debug log if DimensionManager got crashed";
              };
              renderDebug = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable GL state debug hooks. Will not do anything useful unless mode is changed to nonzero.";
              };
              renderDebugMode = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Default GL state debug mode. 0 - off, 1 - reduced, 2 - full";
              };
            };
          };
        };
        fixes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              betterHUDHPRenderLimit = lib.mkOption {
                type = lib.types.int;
                default = 5000;
                description = "Maximum hp for BetterHUD to render as hearts";
              };
              deduplicateForestryCompatInBOP = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Removes duplicate Fermenter and Squeezer recipes and flower registration";
              };
              disableWitcheryPotionExtender = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable Witchery potion extender for Java 12 compat";
              };
              enlargePotionArray = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Safely enlarge the potion array before other mods";
              };
              fixBetterHUDArmorDisplay = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix BetterHUD armor bar rendering breaking with skulls";
              };
              fixBetterHUDHPDisplay = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix BetterHUD freezing the game when trying to render high amounts of hp";
              };
              fixBibliocraftPackets = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Bibliocraft packet exploits";
              };
              fixBibliocraftPathSanitization = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Bibliocraft path sanitization";
              };
              fixChatWrappedColors = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix wrapped chat lines missing colors";
              };
              fixContainerPutStacksInSlots = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents crash if server sends container with wrong itemStack size";
              };
              fixDebugBoundingBox = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes the debug hitbox of the player beeing offset";
              };
              fixDimensionChangeHearts = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix losing bonus hearts on dimension change";
              };
              fixEatingStackedStew = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix deleting stack when eating mushroom stew";
              };
              fixEnchantmentNumerals = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix enchantment levels not displaying properly above a certain value";
              };
              fixExtraUtilitiesDrumEatingCells = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Extra Utilities drums eating ic2 cells and forestry capsules";
              };
              fixExtraUtilitiesItemRendering = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes rendering issues with transparent items from extra utilities";
              };
              fixExtraUtilitiesUnEnchanting = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix dupe bug with division sigil removing enchantment";
              };
              fixFenceConnections = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix fence connections with other types of fence";
              };
              fixFireSpread = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix vanilla fire spread sometimes cause NPE on thermos";
              };
              fixFluidContainerRegistryKey = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Forge fluid container registry key";
              };
              fixFontRendererLinewrapRecursion = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Replace recursion with iteration in FontRenderer line wrapping code";
              };
              fixForgeOpenGuiHandlerWindowId = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix windowId being set on openContainer even if openGui failed";
              };
              fixForgeUpdateChecker = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix the forge update checker";
              };
              fixFriendlyCreatureSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix vanilla issue where player sounds register as animal sounds";
              };
              fixGetBlockLightValue = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix vanilla light calculation sometimes cause NPE on thermos";
              };
              fixGlStateBugs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix vanilla GL state bugs causing lighting glitches in various perspectives (MC-10135).";
              };
              fixGuiGameOver = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Game Over GUI buttons disabled if switching fullscreen";
              };
              fixHasteArmSwing = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix arm not swinging when having too much haste";
              };
              fixHopperHitBox = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix vanilla hopper hit box";
              };
              fixHopperVoidingItems = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Drawer + Hopper voiding items";
              };
              fixHugeChatKick = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix oversized chat message kicking player.";
              };
              fixHungerOverhaul = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix hunger overhaul low stat effects";
              };
              fixHungerOverhaulRestore0Hunger = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix some items restore 0 hunger";
              };
              fixIc2ArmorLag = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix lag caused by IC2 armor tick";
              };
              fixIc2DirectInventoryAccess = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix IC2's direct inventory access";
              };
              fixIc2Hazmat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix IC2 armors to avoid giving poison";
              };
              fixIc2HoverMode = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix IC2's armor hover mode";
              };
              fixIc2Nightvision = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent IC2's nightvision from blinding you";
              };
              fixIc2ReactorDupe = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix IC2's reactor dupe";
              };
              fixIc2UnprotectedGetBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes various unchecked IC2 getBlock() methods";
              };
              fixIgnisFruitAABB = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Axis aligned Bounding Box of Ignis Fruit";
              };
              fixImmobileFireballs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix the bug that makes fireballs stop moving when chunk unloads";
              };
              fixJourneymapFilePath = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents journeymap from using illegal character in file paths";
              };
              fixJourneymapJumpyScrolling = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix jumpy scrolling in the waypoint manager screen";
              };
              fixJourneymapKeybinds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent unbinded keybinds from triggering when pressing certain keys";
              };
              fixNetHandlerLoginServerOfflineMode = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows the server to assign the logged in UUID to the same username when online_mode is false";
              };
              fixNetHandlerPlayClientHandleSetSlot = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents crash if server sends itemStack with index larger than client's container";
              };
              fixNetherLeavesFaceRendering = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If fancy graphics are enabled, Nether Leaves render sides with other Nether Leaves adjacent too";
              };
              fixNorthWestBias = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix northwest bias on RandomPositionGenerator";
              };
              fixOptifineChunkLoadingCrash = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Forces the chunk loading option from optifine to default since other values can crash the game";
              };
              fixPerspectiveCamera = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent tall grass and such to affect the perspective camera";
              };
              fixPlayerSkinFetching = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow some mods to properly fetch the player skin";
              };
              fixPotionEffectNumerals = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Properly display level of potion effects in the inventory and on tooltips";
              };
              fixPotionIterating = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix crashes with ConcurrentModificationException because of incorrectly iterating over active potions";
              };
              fixPotionLimit = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix potions >= 128";
              };
              fixResizableFullscreen = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix game window becoming not resizable after toggling fullscrean in any way";
              };
              fixResourcePackOpening = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix resource pack folder not opening on Windows if file path has a space";
              };
              fixThaumcraftAspectSorting = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Thaumcraft Aspects being sorted by tag instead of by name";
              };
              fixThaumcraftGolemMarkerLoading = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix golem's marker loading failure when dimensionId larger than MAX_BYTE";
              };
              fixTimeCommandWithGC = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix time commands with GC";
              };
              fixUnfocusedFullscreen = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix exiting fullscreen when you tab out of the game";
              };
              fixUrlDetection = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix URISyntaxException in forge.";
              };
              fixVanillaUnprotectedGetBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes various unchecked vanilla getBlock() methods";
              };
              fixVillageUncheckedGetBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes village unchecked getBlock() calls";
              };
              fixWorldGetBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix unprotected getBlock() in World";
              };
              fixWorldServerLeakingUnloadedEntities = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix WorldServer leaking entities when no players are present in a dimension";
              };
              fixXaerosWorldMapScrolling = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix scrolling in the world map screen";
              };
              fixZTonesPackets = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix ZTones packet exploits";
              };
              itemStacksPickedUpPerTick = lib.mkOption {
                type = lib.types.int;
                default = 36;
                description = "Stacks picked up per tick";
              };
              java12BopCompat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "BiomesOPlenty Java 12 compatibility patches.";
              };
              java12ImmersiveEngineeringCompat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Immersive Engineering Java 12 compatibility patch";
              };
              java12LotrCompat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Lotr Java 12 compatibility patch";
              };
              java12MineChemCompat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Minechem Java 12 compatibility patch";
              };
              logHugeChat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Log oversized chat message to console. WARNING: might create huge log files if this happens very often.";
              };
              optimizeIc2ReactorInventoryAccess = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimize inventory access to IC2 nuclear reactor";
              };
              optimizeWorldUpdateLight = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix too early light initialization";
              };
              removeCreativeSearchTab = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable the creative search tab since it can be very laggy in large modpacks";
              };
              removeUpdateChecks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Remove old/stale/outdated update checks.";
              };
              speedupAnimations = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Drastically speedup animated textures (Basically the same as with optifine animations off but animations are working)";
              };
              squashBedErrorMessage = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stop \"You can only sleep at night\" message filling the chat";
              };
              throttleItemPickupEvent = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Limits the amount of times the ItemPickupEvent triggers per tick since it can lead to a lot of lag";
              };
              triggerAllConflictingKeybindings = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Triggers all conflicting key bindings on key press instead of a random one";
              };
              validatePacketEncodingBeforeSending = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Validate vanilla packet encodings before sending in addition to on reception";
              };
              validatePacketEncodingBeforeSendingShouldCrash = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should the extended packet validation error cause a crash (true) or just print out an error to the log (false)";
              };
            };
          };
        };
        pollution = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              advancedCokeOvenPollution = lib.mkOption {
                type = lib.types.int;
                default = 80;
                description = "Pollution Amount for Advanced Coke Ovens";
              };
              cokeOvenPollution = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Pollution Amount for Coke Ovens";
              };
              explosionPollution = lib.mkOption {
                type = lib.types.float;
                default = 333.34;
                description = "Explosion pollution";
              };
              fireboxPollution = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Pollution Amount for RC Firebox";
              };
              furnacePollution = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Furnace pollution per second, min 1!";
              };
              furnacesPollute = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Make furnaces Pollute";
              };
              hobbyistEnginePollution = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Pollution Amount for hobbyist steam engine";
              };
              railcraftPollutes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Make Railcraft Pollute";
              };
              rocketPollution = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "Pollution Amount for Rockets";
              };
              rocketsPollute = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Make rockets Pollute";
              };
              tunnelBorePollution = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Pollution Amount for tunnel bore";
              };
            };
          };
        };
        pollution_recolor = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              renderBlockDoublePlant = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "net.minecraft.block.BlockDoublePlant:FLOWER" ];
              };
              renderBlockLiquid = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "net.minecraft.block.BlockLiquid:LIQUID" ];
              };
              renderCrossedSquares = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "net.minecraft.block.BlockTallGrass:FLOWER" "net.minecraft.block.BlockFlower:FLOWER" "biomesoplenty.common.blocks.BlockBOPFlower:FLOWER" "biomesoplenty.common.blocks.BlockBOPFlower2:FLOWER" "biomesoplenty.common.blocks.BlockBOPFoliage:FLOWER" ];
              };
              renderStandardBlock = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "net.minecraft.block.BlockGrass:GRASS" "net.minecraft.block.BlockLeavesBase:LEAVES" "biomesoplenty.common.blocks.BlockOriginGrass:GRASS" "biomesoplenty.common.blocks.BlockLongGrass:GRASS" "biomesoplenty.common.blocks.BlockNewGrass:GRASS" "tconstruct.blocks.slime.SlimeGrass:GRASS" "thaumcraft.common.blocks.BlockMagicalLeaves:LEAVES" ];
              };
              renderblockVine = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "net.minecraft.block.BlockVine:FLOWER" ];
              };
            };
          };
        };
        speedups = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              optimizeASMDataTable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimize ASMDataTable getAnnotationsFor for faster startup";
              };
              optimizeTextureLoading = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimize texture loading";
              };
              optimizeTileentityRemoval = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimize tileEntity removal in World.class";
              };
              speedupBOPFogHandling = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speedup biome fog rendering in BiomesOPlenty";
              };
              speedupChunkCoordinatesHashCode = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speedup ChunkCoordinates hashCode";
              };
              speedupGrassBlockRandomTicking = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speed up grass block random ticking";
              };
              speedupVanillaFurnace = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speedup Vanilla Furnace recipe lookup";
              };
              tcpNoDelay = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Sets TCP_NODELAY to true, reducing network latency in multiplayer. Works on server as well as client. From makamys/CoreTweaks";
              };
            };
          };
        };
        tweaks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Compact chat" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Compacts identical consecutive chat messages together";
              };
              addCVSupportToWandPedestal = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add CV support to Thaumcraft wand recharge pedestal";
              };
              addSystemInfo = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds system info to the F3 overlay (Java version and vendor; GPU name; OpenGL version; CPU cores; OS name, version and architecture)";
              };
              addToggleDebugMessage = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add a debug message in the chat when toggling vanilla debug options";
              };
              arabicNumbersForEnchantsPotions = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Uses arabic numbers for enchantment levels and potion amplifier levels instead of roman numbers";
              };
              atropineHighID = lib.mkOption {
                type = lib.types.int;
                default = 255;
                description = "Minechem Atropine High (Delirium) effect ID";
              };
              bedMessageAboveHotbar = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show \"cannot sleep\" messages above hotbar";
              };
              changeSprintCategory = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Moves the sprint keybind to the movement category";
              };
              chatLength = lib.mkOption {
                type = lib.types.int;
                default = 8191;
                description = "Amount of chat lines kept [100(Vanilla) - 32767]";
              };
              defaultLanPort = lib.mkOption {
                type = lib.types.int;
                default = 25565;
                description = "Specify default LAN port to open an integrated server on. Set to 0 to always open the server on an automatically allocated port.";
              };
              disableAidSpawnByXUSpikes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disables the spawn of zombie aid when zombie is killed by Extra Utilities Spikes, since it can spawn them too far.";
              };
              displayIc2FluidLocalizedName = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Display fluid localized name in IC2 fluid cell tooltip";
              };
              dontInvertCrosshairColor = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Stop inverting colors of crosshair";
              };
              dropPickedLootOnDespawn = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Drop picked loot on entity despawn";
              };
              enableDefaultLanPort = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Open an integrated server on a static port.";
              };
              enableMacosCmdShortcuts = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use CMD key on MacOS to COPY / INSERT / SELECT in text fields (Chat, NEI, Server IP etc.)";
              };
              enableTileRendererProfiler = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Shows renderer's impact on FPS in vanilla lagometer";
              };
              enhanceNightVision = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Remove the blueish sky tint from night vision";
              };
              fixComponentsPoppingOff = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Project Red components popping off on unloaded chunks";
              };
              fixHudLightingGlitch = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix hotbars being dark when Project Red is installed";
              };
              fixPotionEffectRender = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix vanilla potion effects rendering above the NEI tooltips in the inventory";
              };
              fixPotionRenderOffset = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents the inventory from shifting when the player has active potion effects";
              };
              hideCrosshairInThirdPerson = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stops rendering the crosshair when you are playing in third person";
              };
              hideIc2ReactorSlots = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent IC2's reactor's coolant slots from being accessed by automations if not a fluid reactor";
              };
              hidePotionParticlesFromSelf = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stops rendering potion particles from yourself";
              };
              ic2CellWithContainer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "give ic2 cells containers like gregtech cells do";
              };
              ic2SeedMaxStackSize = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "IC2 seed max stack size";
              };
              increaseParticleLimit = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Increase particle limit";
              };
              installAnchorAlarm = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Wake up passive & personal anchors on player login";
              };
              longerChat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes the chat history longer instead of 100 lines";
              };
              makeBigFirsPlantable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow 5 Fir Sapling planted together ('+' shape) to grow to a big fir tree";
              };
              particleLimit = lib.mkOption {
                type = lib.types.int;
                default = 8000;
                description = "Particle limit [4000-16000]";
              };
              preventPickupLoot = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent monsters from picking up loot.";
              };
              removeSpawningMinecartSound = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stop playing a sound when spawning a minecart in the world";
              };
              thirstyTankContainer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Implement container for thirsty tank";
              };
              transparentChat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Doesn't render the black box behind messages when the chat is closed";
              };
              unbindKeybindsByDefault = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Unbinds keybinds of certain ARR mods to avoid keybinds conflicts";
              };
            };
          };
        };
      };
    };
  };
}
