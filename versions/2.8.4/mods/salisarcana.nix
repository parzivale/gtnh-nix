{lib, ...}: {
  bugfixes = lib.mkOption {
    description = "bugfixes configuration (./config/salisarcana/bugfixes.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/salisarcana/bugfixes.cfg";
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
              advAlchemicalFurnaceSaveNbt = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Saves additional NBT data to the advanced alchemical furnace for more consistent behavior. [default: true]";
              };
              arcaneWorkbenchAllowRechargeCrafting = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows players to craft after the wand in the GUI runs out of vis and is recharged by a Vis Charge Relay. [default: true]";
              };
              arcaneWorkbenchGhostItemFix = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes ghost items being crafted in the arcane workbench after the wand runs out of vis during a shift-click craft. [default: true]";
              };
              arcaneWorkbenchMultiContainer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents bugs related to multiple players opening an Arcane Workbench's GUI at the same time. [default: true]";
              };
              bannerNoCreativeDrops = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent Banners from dropping items when broken in Creative. [default: true]";
              };
              bannerPickBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Causes the banner to give the actual banner item when pick-block is used, instead of giving a Crimson Cult Banner. Also fixes the icon of the banner in WAILA. [default: true]";
              };
              beaconBlockMetadataValues = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 4 ];
                description = "Which metadata values of BlockCosmeticSolid are considered beacon base blocks. Default: 4 (Thaumium Block).";
              };
              candleMetadataCrash = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes several crashes with invalid candle metadata [default: true]";
              };
              correctItemInsertion = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Thaumcraft will correctly insert items into inventories - prevents double-counting slots when testing for space and allows insertion of items into an empty slot of the other side of a double chest. [default: true]";
              };
              crimsonRitesFakePlayerCheck = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds a safety check in case of a fake player not being castable to EntityPlayerMP. [default: true]";
              };
              deadMobsDontAttack = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents eldritch crabs, all taintacles, and thaumic slimes from attacking during their death animation. [default: true]";
              };
              enableBeaconBlockMetadataValues = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable beaconBlockMetadataValues? [default: true]";
              };
              equalTradeBreaksBlocks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes a bug where you couldn't break blocks if you were holding the equal trade focus item. [default: true]";
              };
              etherealBloomSaveNBT = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Thaumcraft will correctly save ethereal bloom counters to disk, preventing the growth animation from looping on relog and stopping the cleanse timer from restarting. [default: true]";
              };
              excavationFocusDeterministicCost = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Causes the upgraded vis cost of Wand Focus: Excavation to be dependent solely on the applied upgrade rather than which upgrade loaded first in any game session. [default: true]";
              };
              fixClientSideLocalization = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Make all messages displayed get localized on the client. [default: true]";
              };
              fixEFRRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes several recipes to work with EFR versions of blocks, like trapdoors, if EFR is installed [default: true]";
              };
              focalManipulatorForbidSwaps = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents players from putting on conflicting or out-of-order upgrades onto a focus by swapping the focus being modified during the upgrade process. [default: true]";
              };
              infernalFurnaceDupeFix = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes a smelting duplication glitch with the Infernal Furnace [default: true]";
              };
              integerInfusionMatrixMath = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Calculate infusion stabilizers with integer math instead of floating-point math. This eliminates a rounding error that sometimes makes an infusion altar slightly less stable than it should be. Also corrects a logic error causing the Infusion Matrix to check the wrong coordinates for a symmetrical stabilizer. [default: true]";
              };
              itemMetadataFix = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add a safety check to several Thaumcraft items to prevent crashes when creating those items with invalid metadata. [default: true]";
              };
              jarNoCreativeDrops = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent Warded Jars and Node in a Jar from dropping items when broken in Creative. [default: true]";
              };
              jarPickBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Causes Warded Jars and Node in a Jar to create an item with the current contents of the jar when pick-block is used. Also fixes the WAILA tooltip for those blocks. [default: true]";
              };
              lootBlockHitbox = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Correctly sets the hitboxes of the Old Urn & Abandoned Crate, preventing a bug where you can phase through the blocks while mining them. [default: true]";
              };
              negativeBossSpawnCount = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes a theoretical bug where, if billions of bosses were spawned, only the golem boss would be able to spawn. [default: true]";
              };
              nodesRechargeInGameTime = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Unloaded nodes will regenerate based on game time, not real life time. [default: true]";
              };
              nodesRememberBeingDrained = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Nodes will remember being drained, preventing rapidly loading, draining, then unloading nodes exploiting nodes' catch-up recharging. [default: true]";
              };
              preventBlockAiryFluidReplacement = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents useful airy blocks (nodes, energized nodes, and the blocks of the Outer Lands boss room door) from being replaced by buckets with liquid. [default: true]";
              };
              renderRedstoneFix = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes an issue with ores where they don't get rendered as normal blocks, not allowing you to push a redstone signal through them. [default: true]";
              };
              runedStoneIgnoreCreative = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Runed Stone (shock traps in Outer Lands) will not attempt to shock players in Creative Mode. [default: true]";
              };
              shardMetadataCrash = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes a crash with invalid shard metadata [default: true]";
              };
              silkTouchCrystalClusters = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows Thaumcraft crystal clusters to be harvested with Silk Touch, preventing them from dropping as shards. [default: true]";
              };
              silverwoodLogCorrectName = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Non-vertical silverwood logs will be correctly named \"Silverwood Log\" in WAILA. [default: true]";
              };
              slabBurnTimeFix = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Reduce the burn time of Thaumcraft's greatwood and silverwood slabs to match that of Minecraft's wooden slabs. [default: true]";
              };
              staffFocusEffectFix = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes a graphical error where focus effects would appear below the tip of a staff. [default: true]";
              };
              strictInfusionMatrixInputChecks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Check the infusion matrix's center item more strictly. Prevents an exploit with infusion enchanting. [default: true]";
              };
              thaumatoriumMultiContainer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes some possible bugs caused by multiple players interacting with a Thaumatorium at the same time. [default: true]";
              };
              unOredictGoldCoin = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Remove gold coins from the gold nugget ore dictionary. [default: false]";
              };
              updateBiomeColorRendering = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Biome changes will correctly update the color of grass in chunks without needing a block to change. [default: true]";
              };
              upgradedFocusVisCost = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes certain upgraded foci (ex. Wand Focus: Fire with Fireball upgrade) spend the upgraded vis cost rather than the default. [default: true]";
              };
              useForgeFishingLists = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use Forge's fishing lists to determine what a fishing golem catches. [default: true]";
              };
              warpFakePlayerCheck = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds a safety check to prevent warp effects from trying to send packets to fake players. [default: true]";
              };
            };
          };
        };
      };
    };
  };
  commands = lib.mkOption {
    description = "commands configuration (./config/salisarcana/commands.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/salisarcana/commands.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        create_node = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              aliases = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "create-node" ];
                description = "Secondary names that refer to this command. [default: [create-node]]";
              };
              commandEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable or disable the command. [default: true]";
              };
              permissionLevel = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The permission level required to execute the command. [range: 0 ~ 4, default: 2]";
              };
            };
          };
        };
        forget_aspect = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              aliases = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "forget-aspect" ];
                description = "Secondary names that refer to this command. [default: [forget-aspect]]";
              };
              commandEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable or disable the command. [default: true]";
              };
              permissionLevel = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The permission level required to execute the command. [range: 0 ~ 4, default: 2]";
              };
            };
          };
        };
        forget_research = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              aliases = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "forget-research" ];
                description = "Secondary names that refer to this command. [default: [forget-research]]";
              };
              commandEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable or disable the command. [default: true]";
              };
              permissionLevel = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The permission level required to execute the command. [range: 0 ~ 4, default: 2]";
              };
            };
          };
        };
        forget_scanned = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              aliases = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "forget-scanned" ];
                description = "Secondary names that refer to this command. [default: [forget-scanned]]";
              };
              commandEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable or disable the command. [default: true]";
              };
              permissionLevel = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The permission level required to execute the command. [range: 0 ~ 4, default: 2]";
              };
            };
          };
        };
        help = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              aliases = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "arcana-help" ];
                description = "Secondary names that refer to this command. [default: [arcana-help]]";
              };
              commandEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable or disable the command. [default: true]";
              };
              permissionLevel = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "The permission level required to execute the command. [range: 0 ~ 4, default: 0]";
              };
            };
          };
        };
        infusion_symmetry = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              aliases = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "infusion-symmetry" ];
                description = "Secondary names that refer to this command. [default: [infusion-symmetry]]";
              };
              commandEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable or disable the command. [default: true]";
              };
              permissionLevel = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "The permission level required to execute the command. [range: 0 ~ 4, default: 0]";
              };
            };
          };
        };
        list_research = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              aliases = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "list-research" ];
                description = "Secondary names that refer to this command. [default: [list-research]]";
              };
              commandEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable or disable the command. [default: true]";
              };
              permissionLevel = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "The permission level required to execute the command. [range: 0 ~ 4, default: 0]";
              };
              permissionLevel_ListOthersResearch = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The permission level required to list another player's research. [range: 0 ~ 4, default: 2]";
              };
            };
          };
        };
        prereqs = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              aliases = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "prereqs" ];
                description = "Secondary names that refer to this command. [default: [prereqs]]";
              };
              commandEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable or disable the command. [default: true]";
              };
              permissionLevel = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "The permission level required to execute the command. [range: 0 ~ 4, default: 0]";
              };
            };
          };
        };
        update_node = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              aliases = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "update-node" ];
                description = "Secondary names that refer to this command. [default: [update-node]]";
              };
              commandEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable or disable the command. [default: true]";
              };
              permissionLevel = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The permission level required to execute the command. [range: 0 ~ 4, default: 2]";
              };
            };
          };
        };
        upgrade_focus = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              aliases = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "upgrade-focus" ];
                description = "Secondary names that refer to this command. [default: [upgrade-focus]]";
              };
              commandEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable or disable the command. [default: true]";
              };
              permissionLevel = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The permission level required to execute the command. [range: 0 ~ 4, default: 2]";
              };
            };
          };
        };
      };
    };
  };
  enhancements = lib.mkOption {
    description = "enhancements configuration (./config/salisarcana/enhancements.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/salisarcana/enhancements.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        focus_disenchanting = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              _enabledfocusDisenchantingResearch = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Research to unlock Focus Disenchanting in the Focal Manipulator. [default: true]";
              };
              enableFocusDisenchanting = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow players to use the Focal Manipulator to remove focus enchantments and refund XP. [default: true]";
              };
              focusDisenchantingRefundPercentage = lib.mkOption {
                type = lib.types.int;
                default = 75;
                description = "Percentage of XP points refunded upon removing an enchantment from a focus, calculated as levels from 0 XP. [range: 0 ~ 100, default: 75]";
              };
              focusDisenchantingResearchAspects = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "auram:4" "praecantatio:6" "vacuos:8" "perditio:4" ];
                description = "The aspects required for the research entry [default: [auram:4], [praecantatio:6], [vacuos:8], [perditio:4]]";
              };
              focusDisenchantingResearchAutoUnlock = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether the research should automatically unlock as soon as its parents are researched. [default: false]";
              };
              focusDisenchantingResearchCategory = lib.mkOption {
                type = lib.types.str;
                default = "THAUMATURGY";
                description = "The tab in the Thaumonomicon in which the research should appear [default: THAUMATURGY]";
              };
              focusDisenchantingResearchCol = lib.mkOption {
                type = lib.types.int;
                default = -2;
                description = "The column in the given category at which the research should appear [range: -2147483648 ~ 2147483647, default: -2]";
              };
              focusDisenchantingResearchParents = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "FOCALMANIPULATION" ];
                description = "The research entry IDs of the parent research entries [default: [FOCALMANIPULATION]]";
              };
              focusDisenchantingResearchPurchasable = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether the research should be purchasable with aspects instead of the normal minigame [default: false]";
              };
              focusDisenchantingResearchRow = lib.mkOption {
                type = lib.types.int;
                default = -8;
                description = "The row in the given category at which the research should appear [range: -2147483648 ~ 2147483647, default: -8]";
              };
              focusDisenchantingResearchWarp = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "How much warp is applied upon researching this research. [range: 0 ~ 100, default: 0]";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable Scrollwheel" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "While viewing the Thaumonomicon, enables ctrl + scroll to quick switch tabs [default: true]";
              };
              "Inverse Scrolling" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "While viewing the Thaumonomicon, inverts the scrolling for tab switching [default: false]";
              };
              "Right-Click Navigation" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "While viewing the Thaumonomicon, right clicking in a research will take you back to the previous research, or back to the Thaumonomicon. [default: true]";
              };
              "Save Thaumonomicon Page" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When closing the Thaumonomicon, it will remember the page you are on when it is reopened. Requires Right-Click Navigation to be enabled. [default: false]";
              };
              "Show Research Key" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "While viewing the Thaumonomicon, allows you to view the internal name of a research while hovering over it and holding control [default: true]";
              };
              "Wand Pedestal CV Support" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows wand pedestals to draw from centivis instead of just regular nodes [default: true]";
              };
              addEmptyPhialJarRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds crafting recipes to empty a phial or jar of essentia. [default: true]";
              };
              creativeNoXPManipulator = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow Creative players to use the Focal Manipulator without the necessary XP. [default: true]";
              };
              creativeOpThaumonomicon = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "While in creative mode, ctrl + left click on a research in the Thaumonomicon to complete it. [default: true]";
              };
              deadlyGazeMobCheck = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If enabled, the Deadly Gaze effect will only affect mobs that are not invulnerable or immune to wither [default: true]";
              };
              disableCreativeTaintedItemDecay = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent tainted goo and taint tendrils from decaying for players in creative mode. [default: true]";
              };
              eldritchAltarSpawningMethod = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
                description = "Override how eldritch altars pick where to try spawning crimson knights and eldritch guardians. Valid values: [DEFAULT, EVEN_SPREAD, CENTER_WEIGHTED] [default: DEFAULT]";
              };
              eldritchObjectStackSize = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "The maximum stack size for Eldritch Objects (Primordial Pearl, Eldritch Eye, Crimson Rites, Eldritch Obelisk Placer, Runed Tablet). [range: 1 ~ 64, default: 16]";
              };
              enableLookalikePlanks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add look-a-like greatwood and silverwood planks that behave as normal planks, instead of the weirdness of TC4's planks. [default: true]";
              };
              enableNodeModifierWeights = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable nodeModifierWeights? [default: false]";
              };
              enableNodeTypeWeights = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable nodeTypeWeights? [default: false]";
              };
              focalDisenchanterReturnXP = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If an upgrade fails to complete or is cancelled, the XP spent will get returned to the player. [default: true]";
              };
              heatSourceOreDict = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable ore dictionary support for crucible and thaumatorium heat sources. [default: true]";
              };
              infiniteCreativeVis = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow wands to have infinite vis in creative mode. [default: true]";
              };
              levitatorShiftFix = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes some general jankiness with levitators, however, non-player entities will no longer be able to be lowered. [default: true]";
              };
              manaBeanGrowthChance = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "The chance for a mana bean to grow when a mana pod is updated. Lower values are more likely to grow, with 0 growing every random tick. [range: 0 ~ 100, default: 30]";
              };
              mobVisDropBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "List of entities that can not generate vis orbs when killed.";
              };
              mobVisDropWhitelist = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If enabled, the blacklist will be treated as a whitelist instead instead. [default: false]";
              };
              nodeModifierWeights = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 972222 9259 9259 9259 ];
                description = "Node Modifier Worldgen Weights (normal, bright, pale, fading)";
              };
              nodeTypeWeights = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 944444 16666 16666 16666 5555 ];
                description = "Node Type Worldgen Weights (normal, unstable, dark, pure, hungry)";
              };
              nomiconDuplicateResearch = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow players with \"Research Duplication\" researched to create duplicates out of the Thaumonomicon. [default: true]";
              };
              notifyMissingResearchCrucible = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Displays a \"missing research\" message to the player when a crucible recipe fails for lack of research. [default: true]";
              };
              notifyMissingResearchInfusion = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Displays a \"missing research\" message to the player when an infusion recipe fails for lack of research. [default: true]";
              };
              notifyMissingResearchWorkbench = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Displays a \"missing research\" message in the Arcane Workbench GUI when recipe fails for lack of research. [default: true]";
              };
              primalCrusherMinesOredictionaryStone = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows the primal crusher to 3x3 mine blocks registered as stone, cobblestone, or stoneBricks in the ore dictionary. [default: true]";
              };
              pureNodeAlwaysMagicalForest = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "By default, pure nodes only change the biome around them if they are either in tainted lands or inside of a silverwood tree. This setting allows pure nodes to change the biome around them regardless of their location. [default: true]";
              };
              researchDuplicationFree = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Research duplication (in the Research Table and the Thaumonomicon if nomiconDuplicateResearch is enabled) does not cost any research aspects. [default: false]";
              };
              researchItemExtensions = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds additional functionality to internal research data. Used for compatibility with other mods (e.g. Automagy, Thaumic Tinkerer). [default: true]";
              };
              staffterNameTooltip = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Causes staffters to use their own translation string rather than being called \"Staff\" in the tooltip. [default: true]";
              };
              stopCreativeModeItemConsumption = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent eldritch eyes and phials of essentia from being consumed when used in creative mode. [default: true]";
              };
              suppressWarpEventsInCreative = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent random warp events from firing for players in creative mode. [default: true]";
              };
              taintedItemDecayChance = lib.mkOption {
                type = lib.types.int;
                default = 4321;
                description = "The probability each tick that tainted goo and taint tendrils will decay. Lower numbers are more probable, higher numbers are less probable. Set to -1 to disable decay entirely. [range: -1 ~ 2147483647, default: 4321]";
              };
              thaumcraftCommandTabCompletion = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable tab completion for Thaumcraft commands. [default: true]";
              };
              thaumcraftCommandWarpArgAll = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow the use of `ALL` as an argument for the warp command. [default: true]";
              };
              thaumicInventoryScanning = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable the ability to scan items in inventories using the Thaumometer. Replaces the Thaumic Inventory Scanning mod. [default: true]";
              };
              thaumometerDuration = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "The duration in ticks that the thaumometer takes to scan an object. [range: 1 ~ 2147483647, default: 20]";
              };
              useAllBaublesSlots = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables support for mods that increase the number of baubles slots. [default: true]";
              };
              visAmuletCheckInventory = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If enabled, amulets will check and recharge wands in the entire inventory instead of just the player's hand. [default: true]";
              };
              visAmuletRechargeSpeed = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "The rate in ticks at which vis amulets recharge themselves and other items. [range: 1 ~ 2147483647, default: 5]";
              };
              visAmuletTransferRate = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "The amount of cv which an amulet can receive or move to other items in one transfer. [range: 1 ~ 2147483647, default: 5]";
              };
              visRelayBoxExpansion = lib.mkOption {
                type = lib.types.str;
                default = "5.0";
                description = "The amount to expand the bounding box of vis relays. This is used to increase the range at which amulets are charged. [range: 0.0 ~ 3.4028235E38, default: 5.0]";
              };
            };
          };
        };
        harvestlevels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              crusherHarvestLevel = lib.mkOption {
                type = lib.types.int;
                default = 6;
                description = "Override the harvest level of the primal crusher. [range: 0 ~ 2147483647, default: 6]";
              };
              elementalHarvestLevel = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Override the harvest level of elemental tools. [range: 0 ~ 2147483647, default: 3]";
              };
              equalTradeFocusHarvestLevel = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Override the harvest level of the equal trade focus. -1 ignores harvest levels (vanilla Thaumcraft behavior). [range: -1 ~ 2147483647, default: -1]";
              };
              excavationFocusHarvestLevel = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Override the harvest level of the excavation focus. -1 ignores harvest levels (vanilla Thaumcraft behavior). [range: -1 ~ 2147483647, default: -1]";
              };
              potencyModifiesHarvestLevel = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If enabled, the potency level of an equal trade or excavation focus will modify its harvest level by one level per level of potency. [default: true]";
              };
              thaumiumHarvestLevel = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Override the harvest level of thaumium tools. [range: 0 ~ 2147483647, default: 3]";
              };
              voidHarvestLevel = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Override the harvest level of void metal tools. [range: 0 ~ 2147483647, default: 4]";
              };
            };
          };
        };
        infusion = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              stabilizerAdditions = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "Requires useStabilizerRewrite=true. Blocks specified here will be factored into an infusion altar's symmetry, even if they normally would not. FORMAT: `modId:blockId` or `modId:blockId:metadata` or `modId:blockId:metadata:strength`. Metadata: * Defaults to 0 if not set. * If set to * or 32767, all metadata variants of the block will be included. Strength: * Defaults to `stabilizerStrength` if not set. * Range: -10000 ~ 10000. [default: ]";
              };
              stabilizerExclusions = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "Requires useStabilizerRewrite=true. Blocks specified here will NOT be factored into an infusion altar's symmetry even if they normally would. FORMAT: `modId:blockId` or `modId:blockId:metadata`. Metadata: * Defaults to 0 if not set. * If set to * or 32767, all metadata variants of the block will be included. [default: ]";
              };
              stabilizerStrength = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Requires useStabilizerRewrite=true. The amount (in one-hundredths of a point) of symmetry each stabilizer block adds to an infusion altar. If a stabilizer doesn't have a symmetrical opposite, an equivalent amount of symmetry will be subtracted instead. [range: -10000 ~ 10000, default: 10]";
              };
              useStabilizerRewrite = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Rewrites the Runic Matrix's surroundings-check logic to be more flexible when checking for pedestals and stabilizers. [default: false]";
              };
            };
          };
        };
        recipes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              crystalClusterUncrafting = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Add crafting recipes to convert crystal cluster blocks back into primal shards. Does not work for mixed crystal clusters. [default: true]";
              };
              friendlyPrimalCharm = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Make the primal charm's crafting recipe less picky about the order in which primal shards are placed in the top and bottom rows. [default: true]";
              };
              rotatedFoci = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Add rotated recipes for the fire, shock, frost, equal rade, excavation, and primal wand foci. [default: true]";
              };
              rotatedThaumometer = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Add a rotated crafting recipe for the Thaumometer. [default: true]";
              };
              rottenFleshRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Add a crafting recipe to convert flesh blocks back into rotten flesh. [default: true]";
              };
            };
          };
        };
        tc4tweaks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              tc4tweakScrollPages = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether or not scrolling should scroll to next page of tabs or loop to first tab of the page, in the event that there are too many tabs. [default: true]";
              };
            };
          };
        };
        thaumometer_container_scan = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              _enabledthaumometerScanContainersResearch = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable the thaumometer to scan the contents of inventories when right-clicking on them. [default: true]";
              };
              thaumometerScanContainers = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow the thaumometer to scan the contents of inventories when right-clicking on them. [default: true]";
              };
              thaumometerScanContainersResearchAspects = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "ordo:10" "perditio:10" "permutatio:10" ];
                description = "The aspects required for the research entry [default: [ordo:10], [perditio:10], [permutatio:10]]";
              };
              thaumometerScanContainersResearchAutoUnlock = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether the research should automatically unlock as soon as its parents are researched. [default: false]";
              };
              thaumometerScanContainersResearchCategory = lib.mkOption {
                type = lib.types.str;
                default = "BASICS";
                description = "The tab in the Thaumonomicon in which the research should appear [default: BASICS]";
              };
              thaumometerScanContainersResearchCol = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "The column in the given category at which the research should appear [range: -2147483648 ~ 2147483647, default: 8]";
              };
              thaumometerScanContainersResearchParents = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "DECONSTRUCTOR" ];
                description = "The research entry IDs of the parent research entries [default: [DECONSTRUCTOR]]";
              };
              thaumometerScanContainersResearchPurchasable = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether the research should be purchasable with aspects instead of the normal minigame [default: false]";
              };
              thaumometerScanContainersResearchRow = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "The row in the given category at which the research should appear [range: -2147483648 ~ 2147483647, default: 3]";
              };
              thaumometerScanContainersResearchWarp = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "How much warp is applied upon researching this research. [range: 0 ~ 100, default: 0]";
              };
            };
          };
        };
        wand_component_swapping = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              _enabledreplaceWandCapsResearch = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable a recipe to swap an existing existing wand, scepter, or staff's caps. [default: true]";
              };
              _enabledreplaceWandCoreResearch = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable a recipe to swap an existing existing wand, scepter, or staff's core. [default: true]";
              };
              allowSingleWandReplacement = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If enabled, allows swapping a wand's components using vis from the wand being modified. [default: true]";
              };
              enforceWandCoreTypes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If enabled, prevents swapping a wand core with a staff core or a staff core with a wand core. Disable to allow upgrading a wand to a staff and vice versa. [default: true]";
              };
              preserveWandVis = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If enabled, vis will be preserved when a wand, staff, or stave's components are replaced. [default: true]";
              };
              replaceWandCapsResearchAspects = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "praecantatio:8" "permutatio:4" "instrumentum:4" "metallum:4" ];
                description = "The aspects required for the research entry [default: ]";
              };
              replaceWandCapsResearchAutoUnlock = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether the research should automatically unlock as soon as its parents are researched. [default: true]";
              };
              replaceWandCapsResearchCategory = lib.mkOption {
                type = lib.types.str;
                default = "THAUMATURGY";
                description = "The tab in the Thaumonomicon in which the research should appear [default: THAUMATURGY]";
              };
              replaceWandCapsResearchCol = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "The column in the given category at which the research should appear [range: -2147483648 ~ 2147483647, default: 4]";
              };
              replaceWandCapsResearchParents = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "CAP_gold" ];
                description = "The research entry IDs of the parent research entries [default: [CAP_gold]]";
              };
              replaceWandCapsResearchPurchasable = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether the research should be purchasable with aspects instead of the normal minigame [default: false]";
              };
              replaceWandCapsResearchRow = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The row in the given category at which the research should appear [range: -2147483648 ~ 2147483647, default: 2]";
              };
              replaceWandCapsResearchWarp = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "How much warp is applied upon researching this research. [range: 0 ~ 100, default: 0]";
              };
              replaceWandCoreResearchAspects = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "praecantatio:8" "permutatio:4" "instrumentum:4" "arbor:4" ];
                description = "The aspects required for the research entry [default: ]";
              };
              replaceWandCoreResearchAutoUnlock = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether the research should automatically unlock as soon as its parents are researched. [default: true]";
              };
              replaceWandCoreResearchCategory = lib.mkOption {
                type = lib.types.str;
                default = "THAUMATURGY";
                description = "The tab in the Thaumonomicon in which the research should appear [default: THAUMATURGY]";
              };
              replaceWandCoreResearchCol = lib.mkOption {
                type = lib.types.int;
                default = -6;
                description = "The column in the given category at which the research should appear [range: -2147483648 ~ 2147483647, default: -6]";
              };
              replaceWandCoreResearchParents = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "ROD_greatwood" ];
                description = "The research entry IDs of the parent research entries [default: [ROD_greatwood]]";
              };
              replaceWandCoreResearchPurchasable = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether the research should be purchasable with aspects instead of the normal minigame [default: false]";
              };
              replaceWandCoreResearchRow = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The row in the given category at which the research should appear [range: -2147483648 ~ 2147483647, default: 2]";
              };
              replaceWandCoreResearchWarp = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "How much warp is applied upon researching this research. [range: 0 ~ 100, default: 0]";
              };
            };
          };
        };
      };
    };
  };
  mod_integrations = lib.mkOption {
    description = "mod_integrations configuration (./config/salisarcana/mod_integrations.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/salisarcana/mod_integrations.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "baubles|expanded" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              focusPouchSlot = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add a special bauble slot specifically for the Focus Pouch. [default: true]";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Baubles|Expanded" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable compatibility with Baubles|Expanded. [default: true]";
              };
              UndergroundBiomes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable compatibility with UndergroundBiomes. [default: true]";
              };
              gtnhtcwands = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable compatibility with gtnhtcwands. [default: true]";
              };
            };
          };
        };
        gtnhtcwands = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              coreSwapMaterials = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Require screws and conductors to swap wand/staff cores. [default: true]";
              };
              cost = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use the increased vis costs from GTNHTCWands. [default: true]";
              };
            };
          };
        };
        undergroundbiomes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              primalCrusherMinesSlabs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow the primal crusher to mine UBC slabs. [default: true]";
              };
            };
          };
        };
      };
    };
  };
  salisarcana = lib.mkOption {
    description = "salisarcana configuration (./config/salisarcana.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/salisarcana.cfg";
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
              enableversionChecking = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Check for new versions of Salis Arcana on startup [default: true]";
              };
            };
          };
        };
        modules = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable biome_colors module" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Notice: This is broken for some users, and slated for removal in a future update. Override the colors of TC4's biomes. [default: false]";
              };
              "Enable bugfixes module" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes for bugs in TC4 [default: true]";
              };
              "Enable commands module" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Helper and admin commands. [default: true]";
              };
              "Enable enhancements module" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Tweaks and adjustments to enhance Thaumcraft [default: true]";
              };
              "Enable mod_integrations module" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Integrations and compatibility with other mods. [default: true]";
              };
            };
          };
        };
      };
    };
  };
}
