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
              biblocraftRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Remove recipe generation from BiblioCraft";
              };
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
              deduplicateForestryCompatInBOP = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Removes duplicate Fermenter and Squeezer recipes and flower registration";
              };
              fixBibliocraftPackets = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Biblocraft packet exploits";
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
              fixJourneymapKeybinds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent unbinded keybinds from triggering when pressing certain keys";
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
              enableTileRendererProfiler = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Shows renderer's impact on FPS in vanilla lagometer";
              };
              fixComponentsPoppingOff = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Fix Project Red components popping off on unloaded chunks";
              };
              fixHudLightingGlitch = lib.mkOption {
                type = lib.types.bool;
                default = false;
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
            };
          };
        };
      };
    };
  };
}
