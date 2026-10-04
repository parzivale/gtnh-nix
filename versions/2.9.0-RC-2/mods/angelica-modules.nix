{ lib, ... }:
{
  angelica-modules_cfg = lib.mkOption {
    description = "angelica-modules_cfg configuration (./config/angelica-modules.cfg)";
    default = { };
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/angelica-modules.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        general = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              "Enable PBR Debug" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables PBR atlas dumping [default: false]";
              };
              alwaysTranslucentSprites = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "jewelrycraft2:blockCrystal" ];
                description = "List of sprites which should always be treated as translucent.
Sprites added to this list will always be considered translucent,

Requires texture reload (F3+T) to take effect. [default: [jewelrycraft2:blockCrystal]]";
              };
              blockCrackFix = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Block corners and edges between chunks might have \"cracks\" (various lines/dots) in them.
While using \"Compact Vertex Format\" makes the situation even worse.
This option fixes it, though may lead to other visual artifacts.
Requires game restart after changing this option to take effect [default: false]";
              };
              blockCrackFixBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "net.minecraft.block.BlockCauldron"
                  "net.minecraft.block.BlockStairs"
                ];
                description = "Block classes that have bugs when rendering with the blockCrackFix can be put here to avoid manipulating them [default: [net.minecraft.block.BlockCauldron], [net.minecraft.block.BlockStairs]]";
              };
              blockCrackFixEpsilon = lib.mkOption {
                type = lib.types.float;
                default = 0.001;
                description = "The \"epsilon\" value for the blockCrackFix option.
Set this a bit higher if you can still see lines/dots between solid blocks in dark areas.
May cause intense flickering (z-fighting) between blocks if the value is too high [range: 0.0 ~ 0.005, default: 0.001]";
              };
              blockCrackFixRenderPassWhitelist__ = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "gregtech.common.blocks.BlockOres"
                  "gregtech.common.blocks.GTBlockOre"
                  "shukaro.artifice.block.world.BlockOre"
                  "bartworks.system.material.BWMetaGeneratedOres"
                  "gtPlusPlus.core.block.base.BlockBaseOre"
                  "org.pfaa.geologica.block.BrokenGeoBlock"
                  "org.pfaa.geologica.block.BrickGeoBlock"
                ];
                description = "Block classes that have render pass other than 0 but still need to be manipulated.
Add a block class here if you see flickering (z-fighting) with blockCrackFix enabled [default: [gregtech.common.blocks.BlockOres], [gregtech.common.blocks.GTBlockOre], [shukaro.artifice.block.world.BlockOre], [bartworks.system.material.BWMetaGeneratedOres], [gtPlusPlus.core.block.base.BlockBaseOre], [org.pfaa.geologica.block.BrokenGeoBlock], [org.pfaa.geologica.block.BrickGeoBlock]]";
              };
              chunkBuilderThreadCount = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Number of chunk builder threads. 0 = auto-detect, -1 = use single-threaded fallback [range: -1 ~ 16, default: 0]";
              };
              cullShadowTileEntities = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Cull tile entities in the Iris shadow pass. [default: true]";
              };
              defineIsIris = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Define IS_IRIS in shader macros. [default: true]";
              };
              disableErrorChecks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disables GL Error checks. Always set to false in dev env or if LWJGL debug is on. Improves performance. [default: true]";
              };
              disableF3Additions = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disables additional F3 information added by Angelica. [default: false]";
              };
              disableGLVersionPinning = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable automatic GL version pinning. When true, always probes from highest on every launch. [default: false]";
              };
              droppedItemLimit = lib.mkOption {
                type = lib.types.int;
                default = 256;
                description = "Max amount of dropped item rendered [range: 32 ~ 2048, default: 256]";
              };
              dynamicBoundsTileEntities = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "openblocks.common.tileentity.TileEntityGuide"
                  "openblocks.common.tileentity.TileEntityBuilderGuide"
                ];
                description = "TileEntity classnames whose render bounds change at runtime (e.g. OpenBlocks Guide).
These are always rendered and frustum-tested against their live bounds instead of the cached. [default: [openblocks.common.tileentity.TileEntityGuide], [openblocks.common.tileentity.TileEntityBuilderGuide]]";
              };
              dynamicItemRenderDistance = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Dynamically modifies the render distance of dropped items entities to preserve performance. It starts reducing the render distance when exceeding the threshold set below. [default: true]";
              };
              enableAmpersandConversion = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Convert &-prefix format codes (&#RRGGBB, &c, &l, etc.) at render time [default: true]";
              };
              enableCubeInstancing = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Draw cuboid model parts from a shared unit cube (requires entity batching) [default: true]";
              };
              enableDSA = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables DSA (Direct State Access) for faster bindings. Disable if you notice terrible performance. [default: true]";
              };
              enableDebugLogging = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable Debug Logging [default: false]";
              };
              enableDinnerboneText = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable upside-down text (&v) [default: true]";
              };
              enableDropShadow = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable per-segment drop shadow toggle (&u) and colored shadow (&u&#RRGGBB) [default: true]";
              };
              enableDynamicLights = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Dynamic Lights [default: true]";
              };
              enableEntityBatching = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Batch and instance entity model parts, items, and shadows on FFP-managed passes [default: true]";
              };
              enableFontRenderer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Batch drawScreen fonts [default: true]";
              };
              enableGradients = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable gradient text (&g&#start&#end) [default: true]";
              };
              enableHardcodedCustomUniforms = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Register HardcodedCustomUniforms in Iris Shaders. May help with compatibility in certain shader packs [default: false]";
              };
              enableHudCaching = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Renders the HUD elements once per 20 frames (by default) and reuses the pixels to improve performance. [Experimental] [default: true]";
              };
              enableHudCachingEventTransformer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Inject a conditional early return into all RenderGameOverlayEvent receivers; Requires enableHudCaching [default: true]";
              };
              enableIris = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Iris Shaders [default: true]";
              };
              enableMCPatcherForgeFeatures = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable MCPatcherForge features, still in Alpha. Individual features are toggled in mcpatcher.json [default: true]";
              };
              enableNaturalTextures = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable random top-face texture orientation for configured blocks [default: true]";
              };
              enableNotFineFeatures = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable NotFine features [default: true]";
              };
              enableNotFineOptions = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable NotFine Options [default: false]";
              };
              enablePanoramaBlurShader = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Replace main menu panorama with modern equivalent. [default: true]";
              };
              enableRGBColors = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable full RGB color support (16.7M colors) using &#RRGGBB syntax in text [default: true]";
              };
              enableRainbow = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable rainbow cycling text (&q) [default: true]";
              };
              enableReesesSodiumOptions = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Reese's Sodium Options [default: true]";
              };
              enableTESRBeaconCache = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Cache the vanilla beacon beam mesh and batch beam draws [default: true]";
              };
              enableTESRChestCache = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Cache the vanilla chest mesh and share it across chests [default: true]";
              };
              enableTESRJarCache = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Cache the Thaumcraft jar liquid and batch jar draws [default: true]";
              };
              enableTESRProviderDispatch = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Route tile-entity renderers implementing TesrMeshProvider through the batched mesh cache [default: true]";
              };
              enableTESRSignCache = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Collapse vanilla sign text into a single batched draw per sign (requires font batching) [default: true]";
              };
              enableTESRSkullCache = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Cache the vanilla skull mesh per skull type/player skin and batch skull draws [default: true]";
              };
              enableThreadedChunkBuilding = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable multi-threaded chunk building for improved performance [default: true]";
              };
              enableVAO = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Uses cached attributes for VBO rendering, resulting in less CPU overhead. Disable if you notice any graphical issues. [default: true]";
              };
              enableVBOClouds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Replace cloud renderer with a VBO version. [default: true]";
              };
              enableWaveText = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable wave/bounce animated text (&z) [default: true]";
              };
              enableZoom = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Zoom [default: true]";
              };
              entityModernDamageOverlay = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Swap the vanilla damage overlay with one similar to modern. Fixes specific issues with z-fighting. [default: true]";
              };
              entityOverlayFixes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes various issues with entity overlays, such as z-fighting and eyes. [default: true]";
              };
              fixFluidRendererCheckingBlockAgain = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix RenderBlockFluid reading the block type from the world access multiple times [default: true]";
              };
              glProfile = lib.mkOption {
                type = lib.types.str;
                default = "AUTO";
                description = "GL context profile: AUTO (probes Core first), CORE (desktop only), ES (GLES 3.2 only). Also settable via -Dangelica.glProfile=auto|core|es.
Possible values: [AUTO, CORE, ES]
[default: AUTO]";
              };
              gpuCullingMode = lib.mkOption {
                type = lib.types.str;
                default = "CPU_ONLY";
                description = "GPU-driven chunk culling mode (requires compute shader support):
CPU_ONLY - Compute culling off; CPU emitter handles culling.
COMPUTE  - GPU compute frustum cull.
Possible values: [CPU_ONLY, COMPUTE]
[default: CPU_ONLY]";
              };
              hideDownloadingTerrainScreen = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Hide downloading terrain screen. [From ArchaicFix] [default: true]";
              };
              hudCachingActive = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable HUD Caching at runtime. Requires enableHudCaching to be on at startup. [Experimental] [default: false]";
              };
              hudCachingFPS = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "The amount of frames to wait before updating the HUD elements. [Experimental] [range: 1 ~ 60, default: 20]";
              };
              injectQPRendering = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Inject BakedModel rendering into some vanilla blocks [default: false]";
              };
              itemRendererCacheSize = lib.mkOption {
                type = lib.types.int;
                default = 512;
                description = "Upper limit for the amount of cached item meshes (VBOs and batched item templates) for optimized item rendering. Higher number can potentially use more memory and VRAM. [range: 256 ~ 1024, default: 512]";
              };
              mobSpawnerRenderDistance = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
                description = "Render distance for the spinning mob inside mod spawners [range: 16.0 ~ 64.0, default: 16.0]";
              };
              modernFallbackMcVersion = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Modern MC_VERSION to try if shader pack has no 1.7.10 section. 0 = default (260101) [range: 0 ~ 2147483647, default: 0]";
              };
              modernizeF3Screen = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Tweak F3 screen to be closer to modern versions. [From ArchaicFix] [default: true]";
              };
              naturalTextureBlocks = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "minecraft:andesite"
                  "minecraft:dirt"
                  "minecraft:granite"
                  "minecraft:grass"
                  "minecraft:mycelium"
                  "minecraft:sand"
                  "minecraft:soul_sand"
                  "etfuturum:calcite"
                  "etfuturum:coarse_dirt"
                  "etfuturum:concrete_powder"
                  "etfuturum:grass_path"
                  "BiomesOPlenty:ash"
                  "BiomesOPlenty:driedDirt"
                  "BiomesOPlenty:hardDirt"
                  "BiomesOPlenty:hardSand"
                  "BiomesOPlenty:mud"
                  "BiomesOPlenty:newBopDirt"
                  "Botania:dirtPath"
                  "Botania:enchantedSoil"
                  "Botania:livingrock"
                  "Botania:prismarine"
                  "Botania:shimmerrock"
                  "Botany:loam"
                  "Botany:loamNoWeed"
                  "Botany:soil"
                  "Botany:soilNoWeed"
                  "chisel:moss"
                  "chisel:moss_carpet"
                  "ExtraUtilities:color_hellsand"
                  "ExtraUtilities:cursedearthside"
                  "GalaxySpace:acentauribbgrunt"
                  "GalaxySpace:acentauribbsubgrunt"
                  "GalaxySpace:barnardaCdirt"
                  "GalaxySpace:barnardaEgrunt"
                  "GalaxySpace:barnardaEsubgrunt"
                  "GalaxySpace:barnardaFgrunt"
                  "GalaxySpace:barnardaFsubgrunt"
                  "GalaxySpace:callistoblocks"
                  "GalaxySpace:ceresblocks"
                  "GalaxySpace:deimosblocks"
                  "GalaxySpace:europagrunt"
                  "GalaxySpace:ganymedeblocks"
                  "GalaxySpace:haumeablocks"
                  "GalaxySpace:ioblocks"
                  "GalaxySpace:makemakegrunt"
                  "GalaxySpace:mercuryblocks"
                  "GalaxySpace:mirandablocks"
                  "GalaxySpace:oberonblocks"
                  "GalaxySpace:phobosblocks"
                  "GalaxySpace:proteusblocks"
                  "GalaxySpace:tcetieblocks"
                  "GalaxySpace:titanblocks"
                  "GalaxySpace:tritonblocks"
                  "GalaxySpace:vegabgrunt"
                  "GalaxySpace:vegabsubgrunt"
                  "GalaxySpace:venusblocks"
                  "gregtech:gt.blockgranites"
                  "IC2:blockBasalt"
                  "MagicBees:magicbees.enchantedEarth"
                  "RandomThings:fertilizedDirt"
                  "ToxicEverglades:blockDarkWorldGround2"
                  "VillageNames:concretePowder"
                  "witchery:pitdirt"
                ];
                description = "List of block registry names to apply random top-face texture rotation to [default: [minecraft:andesite], [minecraft:dirt], [minecraft:granite], [minecraft:grass], [minecraft:mycelium], [minecraft:sand], [minecraft:soul_sand], [etfuturum:calcite], [etfuturum:coarse_dirt], [etfuturum:concrete_powder], [etfuturum:grass_path], [BiomesOPlenty:ash], [BiomesOPlenty:driedDirt], [BiomesOPlenty:hardDirt], [BiomesOPlenty:hardSand], [BiomesOPlenty:mud], [BiomesOPlenty:newBopDirt], [Botania:dirtPath], [Botania:enchantedSoil], [Botania:livingrock], [Botania:prismarine], [Botania:shimmerrock], [Botany:loam], [Botany:loamNoWeed], [Botany:soil], [Botany:soilNoWeed], [chisel:moss], [chisel:moss_carpet], [ExtraUtilities:color_hellsand], [ExtraUtilities:cursedearthside], [GalaxySpace:acentauribbgrunt], [GalaxySpace:acentauribbsubgrunt], [GalaxySpace:barnardaCdirt], [GalaxySpace:barnardaEgrunt], [GalaxySpace:barnardaEsubgrunt], [GalaxySpace:barnardaFgrunt], [GalaxySpace:barnardaFsubgrunt], [GalaxySpace:callistoblocks], [GalaxySpace:ceresblocks], [GalaxySpace:deimosblocks], [GalaxySpace:europagrunt], [GalaxySpace:ganymedeblocks], [GalaxySpace:haumeablocks], [GalaxySpace:ioblocks], [GalaxySpace:makemakegrunt], [GalaxySpace:mercuryblocks], [GalaxySpace:mirandablocks], [GalaxySpace:oberonblocks], [GalaxySpace:phobosblocks], [GalaxySpace:proteusblocks], [GalaxySpace:tcetieblocks], [GalaxySpace:titanblocks], [GalaxySpace:tritonblocks], [GalaxySpace:vegabgrunt], [GalaxySpace:vegabsubgrunt], [GalaxySpace:venusblocks], [gregtech:gt.blockgranites], [IC2:blockBasalt], [MagicBees:magicbees.enchantedEarth], [RandomThings:fertilizedDirt], [ToxicEverglades:blockDarkWorldGround2], [VillageNames:concretePowder], [witchery:pitdirt]]";
              };
              optimizeInWorldItemRendering = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimizes in-world item rendering [default: true]";
              };
              optimizeWorldUpdateLight = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimize world update light. [From Hodgepodge] [default: true]";
              };
              pinnedGLVersion = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Pinned OpenGL version an integer (e.g. 46, 41, 33). 0 = auto-detect. [33, 46]. (Disable with disableGLVersionPinning=true) [range: 0 ~ 46, default: 0]";
              };
              removeUnicodeEvenScaling = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows unicode languages to use an odd gui scale [default: true]";
              };
              replaceFFPUploads = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Replaces various FFP uploads with statically allocated VBO's. [default: true]";
              };
              shaderParityFlip = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Skip the end-of-frame shader buffer copy by ping-ponging buffers. Disable if a shader pack misrenders. [default: true]";
              };
              shadowGraphAngleDelta = lib.mkOption {
                type = lib.types.str;
                default = "0.03";
                description = "How much a celestial body can move before the shadow map can update.

Note this option is disabled when a shader pack utilizes voxelization features. [range: 0.0 ~ 0.1, default: 0.03]";
              };
              shadowGraphHorizonScale = lib.mkOption {
                type = lib.types.str;
                default = "0.5";
                description = "Adjusts the rate the shadow map rebuilds when when a celestial body is near the horizon. Rate is sinusoidal [range: 0.0 ~ 1.0, default: 0.5]";
              };
              shadowSkipInMeshTileEntities = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Skip tile entities whose block already renders in the terrain mesh (getRenderType() != -1) from the shadow pass [default: true]";
              };
              shadowTileEntityMaxDistance = lib.mkOption {
                type = lib.types.int;
                default = 32;
                description = "Max distance (blocks) a tile entity is re-drawn into the shadow pass when cullShadowTileEntities is on [range: 8 ~ 256, default: 32]";
              };
              showBlockDebugInfo = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show block registry name and meta value in F3, similar to 1.8+. [From ArchaicFix] [default: true]";
              };
              showSplashMemoryBar = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show memory usage during game load. [From ArchaicFix] [default: true]";
              };
              skipEndOfFrameFlush = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Skip the end-of-frame glFlush before the buffer swap [Experimental] [default: false]";
              };
              speedupAnimations = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimize Texture Animations. [From Hodgepodge] [default: true]";
              };
              transformercompat = lib.mkOption {
                default = { };
                type = lib.types.submodule {
                  options = {
                    narrowAdvancedLightsabers = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Narrow AdvancedLightsabers transformer exclusions to allow GL redirection [default: true]";
                    };
                    narrowAlfheim = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Narrow Alfheim transformer exclusions to allow GL redirection [default: true]";
                    };
                    narrowDragonAPI = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Narrow DragonAPI transformer exclusions to allow GL redirection [default: true]";
                    };
                    narrowEars = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Narrow Ears transformer exclusions to allow GL redirection [default: true]";
                    };
                    narrowFiskHeroes = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Narrow Fisk's Superheroes transformer exclusions to allow GL redirection [default: true]";
                    };
                    narrowFoamFix = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Narrow FoamFix transformer exclusions to allow GL redirection in its repackaged Ears [default: true]";
                    };
                    narrowLegendsMod = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Narrow Legends Mod transformer exclusions to allow GL redirection [default: true]";
                    };
                    narrowXaeros = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Narrow Xaeros Minimap/Worldmap transformer exclusions to allow GL redirection [default: true]";
                    };
                  };
                };
              };
              useTotalWorldTime = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Use total world time instead of normal world time. Allows most shader animations to play when doDaylightCycle is off, but causes shader animations to desync from time of day. [default: false]";
              };
              useVanillaChunkTracking = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Renders chunks before neighbors are ready. Improves loading at render distance edges, useful for low render distance servers. [default: false]";
              };
              waveAmplitude = lib.mkOption {
                type = lib.types.str;
                default = "2.0";
                description = "Wave text amplitude (how far characters bounce) [range: 1.0 ~ 8.0, default: 2.0]";
              };
            };
          };
        };
      };
    };
  };
}
