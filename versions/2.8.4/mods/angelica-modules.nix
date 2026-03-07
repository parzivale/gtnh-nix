{lib, ...}: {
  angelica-modules = lib.mkOption {
    description = "angelica-modules configuration (./config/angelica-modules.cfg)";
    default = {};
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
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable PBR Debug" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables PBR atlas dumping [default: false]";
              };
              droppedItemLimit = lib.mkOption {
                type = lib.types.int;
                default = 256;
                description = "Max amount of dropped item rendered [range: 32 ~ 2048, default: 256]";
              };
              dynamicItemRenderDistance = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Dynamically modifies the render distance of dropped items entities to preserve performance. It starts reducing the render distance when exceeding the threshold set below. [default: true]";
              };
              enableDebugLogging = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable Debug Logging [default: false]";
              };
              enableDynamicLights = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Dynamic Lights [default: true]";
              };
              enableFontRenderer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Batch drawScreen fonts [Experimental] [default: true]";
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
                description = "Enable Iris Shaders [Requires Sodium] [default: true]";
              };
              enableMCPatcherForgeFeatures = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable MCPatcherForge features, still in Alpha. Individual features are toggled in mcpatcher.json [default: true]";
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
              enableReesesSodiumOptions = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Reese's Sodium Options [default: true]";
              };
              enableSodium = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Sodium rendering [default: true]";
              };
              enableSodiumFluidRendering = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable Sodium fluid rendering [default: false]";
              };
              enableVBO = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Replace some vanilla render paths with more optimized versions. Disable if you encounter mixin conflicts. [default: true]";
              };
              enableZoom = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Zoom [default: true]";
              };
              fixFluidRendererCheckingBlockAgain = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix RenderBlockFluid reading the block type from the world access multiple times [default: true]";
              };
              hideDownloadingTerrainScreen = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Hide downloading terrain screen. [From ArchaicFix] [default: true]";
              };
              hudCachingFPS = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "The amount of frames to wait before updating the HUD elements. [Experimental] [range: 1 ~ 60, default: 20]";
              };
              injectQPRendering = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Inject QuadProvider rendering into some vanilla blocks [default: false]";
              };
              itemRendererDisplayListCacheSize = lib.mkOption {
                type = lib.types.int;
                default = 256;
                description = "Max amount of display lists to cache for optimized item rendering. Higher number will use more VRAM [range: 64 ~ 1024, default: 256]";
              };
              mobSpawnerRenderDistance = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
                description = "Render distance for the spinning mob inside mod spawners [range: 16.0 ~ 64.0, default: 16.0]";
              };
              modernizeF3Screen = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Tweak F3 screen to be closer to modern versions. [From ArchaicFix] [default: true]";
              };
              optimizeInWorldItemRendering_WIP = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Optimizes in-world item rendering [Experimental] [default: false]";
              };
              optimizeTextureLoading = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimize Texture Loading. [From Hodgepodge] [default: true]";
              };
              optimizeWorldUpdateLight = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimize world update light. [From Hodgepodge] [default: true]";
              };
              removeUnicodeEvenScaling = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows unicode languages to use an odd gui scale [default: true]";
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
              sleepBeforeSwap = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Switches to an alternate FPS limiter that gives more stable frametimes, in exchange for slightly more latency. Will never introduce more than one frame of latency, and has a lower impact at higher framerates. [default: false]";
              };
              speedupAnimations = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speedup Animations. [From Hodgepodge] [default: true]";
              };
              useTotalWorldTime = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Use total world time instead of normal world time. Allows most shader animations to play when doDaylightCycle is off, but causes shader animations to desync from time of day. [default: false]";
              };
            };
          };
        };
      };
    };
  };
}
