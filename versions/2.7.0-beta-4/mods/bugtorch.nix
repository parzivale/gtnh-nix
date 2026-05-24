{lib, ...}: {
  base_cfg = lib.mkOption {
    description = "base_cfg configuration (./config/bugtorch/base.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/bugtorch/base.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
      };
      "backported features" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          freeFloatingTrapDoors = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Trapdoors no longer require attachment blocks. From MC 1.9 [default: true]";
          };
          };
        };
      };
      "bug fixes" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          fixSnowBlocksRandomlyTicking = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Non-layered snow blocks will no longer randomly tick. From MC 1.14, fixes MC-88097 [default: true]";
          };
          };
        };
      };
      };
    };
  };
  mixinsModSupport_cfg = lib.mkOption {
    description = "mixinsModSupport_cfg configuration (./config/bugtorch/mixinsModSupport.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/bugtorch/mixinsModSupport.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
      };
      "bug fixes" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          fixGanysSurfaceOpenTrapdoorBackTexture = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "The back of Gany's Surface trapdoors use the correct texture [default: true]";
          };
          };
        };
      };
      };
    };
  };
  mixins_cfg = lib.mkOption {
    description = "mixins_cfg configuration (./config/bugtorch/mixins.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/bugtorch/mixins.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
      };
      "backported features" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          cobwebsCanBeSheared = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Cobwebs can be collected with Shears without Silk Touch. From MC 1.9, fixes MC-93001 [default: true]";
          };
          deadBushesDropSticks = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Dead Bushes drop 0-2 Sticks. From MC 1.9 [default: true]";
          };
          fireArrowsDetonateTNTCarts = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Minecarts with TNT explode when hit by fire arrows. From MC 1.8, fixes MC-8987 [default: true]";
          };
          fixPumpkinPlacementCheck = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Pumpkins and Jack o'Lanterns can be placed without a solid block below them. From MC 1.13, fixes MC-1947 [default: true]";
          };
          throwEnderPearlsInCrativeMode = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Ender Pearls can be thrown in creative mode. From MC 1.9, fixes MC-438 [default: true]";
          };
          };
        };
      };
      "bug fixes" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          fixFireChargeUseSound = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Fire Charges have the correct use sound. From MC 1.8, fixes MC-1831 [default: true]";
          };
          fixLavaHissOnAirReplace = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Lava will only hiss when mixing with water. From MC 1.8, fixes MC-32301 [default: true]";
          };
          fixShearedBlocksDropExtraItems = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Shearing a block will not give drops in addition to itself [default: true]";
          };
          fixShearsNotTakingDamageFromNormalBlocks = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Shears will take damage when used to mine any block. From MC 1.9, fixes MC-8180 [default: true]";
          };
          fixSignPacketChatMessages = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Sign update packets for signs in unloaded chunks will not send chat messages. From MC 1.9, fixes MC-3564 [default: true]";
          };
          fixStoneMonsterEggDoubleSpawns = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Stone Monster Eggs only spawn one Silverfish when broken. From MC 1.8, fixes MC-31081 [default: true]";
          };
          fixVillagePathsHavePlantsOnTop = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Village paths will not have flowers or grass on top of them. From MC 1.10, fixes MC-3437 [default: true]";
          };
          fixVillageSieges = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Zombies will seige villages that are large enough at night. From MC 1.8, fixes MC-7432 and MC-7488 [default: true]";
          };
          fixVillageWellDesertMaterial = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Wells in desert villages will use the correct material. From MC 1.8, fixes MC-32514 [default: true]";
          };
          };
        };
      };
      "performance improvements" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          brokenChestsDontSplitStacks = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Broken chests don't split apart dropped item stacks [default: true]";
          };
          fasterDroppedItemStackingChecks = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Dropped item nearby stack checks are faster for full stacks [default: true]";
          };
          fasterEntityLivingBaseIsPotionActiveAndSetAir = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "isPotionActive returns faster with 0 active potions and setAir only updates it's datawatcher when needed [default: true]";
          };
          fasterGetBlockByIdForAirBlocks = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "When something gets air from using its ID it will return faster [default: true]";
          };
          fasterSnowBlockTicks = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Non-layered snow block ticks are faster [default: true]";
          };
          replaceRandomWithXSTRInBlockChest = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Makes BlockChest.class use a faster implementation of random [default: true]";
          };
          replaceRandomWithXSTRInEffectRenderer = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Makes EffectRenderer.class use a faster implementation of random [default: true]";
          };
          replaceRandomWithXSTRInEntity = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Makes Entity.class use a faster implementation of random [default: true]";
          };
          replaceRandomWithXSTRInMinecraftServer = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Makes MinecraftServer.class use a faster implementation of random [default: true]";
          };
          replaceRandomWithXSTRInRenderItem = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Makes RenderItem.class use a faster implementation of random [default: true]";
          };
          replaceRandomWithXSTRInWorld = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "!This changes world generation! Makes World.class use a faster implementation of random [default: false]";
          };
          replaceRandomWithXSTRInWorldClient = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Makes WorldClient.class use a faster implementation of random [default: true]";
          };
          skipInitialWorldChunkLoad = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Speeds up initial world loading by not waiting for as many chunks to preload [default: true]";
          };
          };
        };
      };
      tweaks = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          lanPortOverride = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Override the port used when opening singleplayer to LAN [default: false]";
          };
          lanPortToUSeForOverride = lib.mkOption {
            type = lib.types.int;
            default = 25565;
            description = "Port to use for lanPortOverride [range: 1024 ~ 49151, default: 25565]";
          };
          };
        };
      };
      };
    };
  };
  modSupport_cfg = lib.mkOption {
    description = "modSupport_cfg configuration (./config/bugtorch/modSupport.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/bugtorch/modSupport.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
      };
      "ore dictionary" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registerThaumcraftLeavesToTheOreDictionary = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Register Thaumcraft Greatwood and Silverwood leaves as treeLeaves [default: true]";
          };
          registerThaumcraftThaumiumBlockToTheOreDictionary = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Register Thaumcraft Thaumium Blocks as blockThaumium [default: true]";
          };
          registerThaumcraftWoodStairsToTheOreDictionary = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Register Thaumcraft Greatwood and Silverwood stairs as stairWood [default: true]";
          };
          };
        };
      };
      tweaks = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          craftThaumcraftAncientStoneSlabs = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Craft Thaumcraft Ancient Stone slabs and stairs [default: true]";
          };
          reverseCraftThaumcraftSlabs = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Craft Thaumcraft slabs back into blocks [default: true]";
          };
          };
        };
      };
      };
    };
  };
}
