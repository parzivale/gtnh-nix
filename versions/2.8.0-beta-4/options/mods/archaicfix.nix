{lib, ...}: {
  archaicfix = lib.mkOption {
    description = "archaicfix configuration (./config/archaicfix.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/archaicfix.cfg";
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
              asyncCreativeSearch = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use a faster and asynchronous implementation of creative search. [default: true]";
              };
              betterRegionalDifficulty = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Replace the regional difficulty calculation with a TMCW-style one that increases with playtime, not time per chunk. [default: false]";
              };
              betterThaumcraftHashing = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "EXPERIMENTAL: Replace the Thaumcraft hashing implementation. This really hasn't been tested and probably breaks everything. [default: false]";
              };
              cacheRecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "EXPERIMENTAL: Cache matching crafting recipes to avoid needing to scan the whole list each time. [default: false]";
              };
              clearLaunchLoaderCache = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Clean up LaunchClassLoader cache. [default: true]";
              };
              clearMixinCache = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Force all mixins to be loaded and the cache to be cleared. This saves RAM, but may reveal bugs in mods' mixin configs. Based on MemoryLeakFix. [default: false]";
              };
              disableFoodPlusUpdates = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable Food Plus' update message. [default: true]";
              };
              disableOFVersionCheck = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable OptiFine's version checker. [default: true]";
              };
              disableSpawnChunks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable spawn chunks [default: false]";
              };
              dropXpImmediatelyOnDeath = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Make entities drop XP immediately on death, like modern versions [default: true]";
              };
              enableHitThroughGrassFix = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow entities to be hit through grass, instead of breaking the grass plant [default: true]";
              };
              enableLetsEncryptRoot = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Add the Let's Encrypt root certificates to the default trust store. [default: false]";
              };
              enableNewButtonAppearance = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Prevents buttons from showing a yellow text color when hovered, as was done in 1.14+. [default: false]";
              };
              enablePhosphor = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When true, the Phosphor backport is enabled. Disabling is not recommended as it will generally add lag. [default: true]";
              };
              fixEntityStructurePersistence = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix vanilla issues with entities spawned as part of structures not being marked persistent (e.g. MC-108664) [default: true]";
              };
              fixLoginRaceCondition = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Attempt to fix hanging in SP when logging in. [default: true]";
              };
              fixMekanismCascadingWorldgen = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix instances of cascading worldgen in Mekanism. [default: true]";
              };
              fixMobSpawnsAtLowRenderDist = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Cap the integrated server render distance at a minimum of 8 chunks, and adjust despawn ranges so mobs will always despawn properly on low render distances. [default: true]";
              };
              fixPlacementFlicker = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix MC-1406. [default: true]";
              };
              fixSkinMemoryLeak = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Fix the client leaking memory by holding on to skins and player instances that aren't needed. [default: true]";
              };
              fixTEUnloadLag = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix TileEntity unloading being laggy. [default: true]";
              };
              fixTickListSynchronization = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix the 'TickNextTick list out of synch' error. [default: true]";
              };
              fixVanillaCascadingWorldgen = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix instances of cascading worldgen in vanilla Minecraft. Turn this option off if you require 100% seed parity. [default: true]";
              };
              forceFancyItems = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When true, dropped items will always render as though fancy graphics are enabled. [default: false]";
              };
              hideDownloadingTerrainScreen = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              hideGT6TooltipDataBehindKey = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Only show GT6 tooltip data when Shift is pressed. [default: true]";
              };
              increaseBlockUpdateLimit = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow 65000 block updates to be performed per tick, rather than 1000. [default: true]";
              };
              increaseMobArmor = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Increase the amount of armor mobs wear on average. From TMCW. [default: false]";
              };
              itemLagReduction = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Reduce lag caused by item entities [default: true]";
              };
              logCascadingWorldgen = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Log when cascading worldgen occurs. [default: true]";
              };
              logCascadingWorldgenStacktrace = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Print a stacktrace when cascading worldgen occurs. Use only for development as this will add more lag in game. [default: false]";
              };
              modernizeTextures = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Replace tall grass texture with modern version. [default: false]";
              };
              newMaxRenderDistance = lib.mkOption {
                type = lib.types.int;
                default = 32;
                description = "What the maximum render distance should be if raiseMaxRenderDistance is enabled. [range: 16 ~ 128, default: 32]";
              };
              optimizeBlockTickingDistance = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Distance in chunks at which blocks are ticked, the default value of 0 means to use the render distance. [range: -2147483648 ~ 2147483647, default: 0]";
              };
              optimizeEntityTicking = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Prevent entities outside a certain distance from being ticked. This does not affect tile entities, and is essentially another view distance slider. [default: false]";
              };
              optimizeEntityTickingDistance = lib.mkOption {
                type = lib.types.int;
                default = 4096;
                description = "Squared distance outside which most entities aren't ticked, default is 64 blocks. [range: -2147483648 ~ 2147483647, default: 4096]";
              };
              optimizeEntityTickingIgnoreList = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "Wither" "EnderDragon" ];
                description = "List of entities to ignore for entity ticking optimization. [default: [Wither], [EnderDragon]]";
              };
              optimizeObjectIntIdentityMap = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimize vanilla's ID-to-object map. [default: true]";
              };
              preventEntitySuffocationWorldgen = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Make sure entities don't spawn inside blocks that would make them suffocate. Off by default because it might reduce the number of passive entities that spawn during worldgen. [default: false]";
              };
              raiseMaxRenderDistance = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Increase the maximum render distance if OptiFine and FastCraft are not installed. [default: false]";
              };
              removeJourneymapDebug = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Remove JourneyMap debug feature. [default: false]";
              };
              showBlockDebugInfo = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Show block registry name and meta value in F3, similar to 1.8+. [default: false]";
              };
              showSplashMemoryBar = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show memory usage during game load. [default: true]";
              };
            };
          };
        };
      };
    };
  };
}
