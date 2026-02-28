{lib, ...}: {
  base = lib.mkOption {
    description = "base configuration (./config/bugtorch/base.cfg)";
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
              fixBlockSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Assigns the correct sound types to some blocks. [default: true]";
              };
              fixCarpetBlocksRandomlyTicking = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Carpet blocks will no longer randomly tick. [default: true]";
              };
              fixJackOLanternBlocksRandomlyTicking = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Jack O' Lantern blocks will no longer randomly tick. [default: true]";
              };
              fixPumpkinBlocksRandomlyTicking = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Pumpkin blocks will no longer randomly tick. [default: true]";
              };
              fixSnowBlocksRandomlyTicking = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Non-layered snow blocks will no longer randomly tick. From MC 1.14, fixes MC-88097 [default: true]";
              };
              fixTorchBlocksRandomlyTicking = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Torch blocks will no longer randomly tick. [default: true]";
              };
            };
          };
        };
        tweaks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              showBroadcastSettingsButton = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Show (1), disable(0), or remove(-1) the Broadcast Settings button in the options menu. [range: -1 ~ 1, default: 1]";
              };
              showOpenToLanButton = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Show (1), disable(0), or remove(-1) the Open to LAN button in the escape menu. [range: -1 ~ 1, default: 1]";
              };
              showSuperSecretSettingsButton = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Show (1), disable(0), or remove(-1) the Super Secret Settings button in the options menu. [range: -1 ~ 1, default: 1]";
              };
            };
          };
        };
      };
    };
  };
  mixins = lib.mkOption {
    description = "mixins configuration (./config/bugtorch/mixins.cfg)";
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
                description = "Pumpkins and Jack O' Lanterns can be placed without a solid block below them. From MC 1.13, fixes MC-1947 [default: true]";
              };
              fixRedstoneTorchMemoryLeak = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stops Redstone Torches from causing a memory leak by making them use a weak hash map to store burnt out torches. Fixes MC-101233 [default: true]";
              };
              fixShearedBlocksDropExtraItems = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              throwEnderPearlsInCreativeMode = lib.mkOption {
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
              fixAnvilSoundTypeStepSound = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes the anvil sound type step a valid sound Also prevents log errors when walking on anvils. [default: true]";
              };
              fixDarkOakRemovingBlocks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes Dark Oak trees check if replacement is allowed before putting down logs. [default: true]";
              };
              fixEnchantmentBlendFunc = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Fixes rendering issues caused by enchantments changing glBlendFunc and never reverting it. Disabled if NotFine is installed, it implements this fix. [default: true]";
              };
              fixFireChargeUseSound = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fire Charges have the correct use sound. From MC 1.8, fixes MC-1831 Disabled if TX Loader is not installed. [default: true]";
              };
              fixLWJGL2OpenALCrash = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes the ridiculous bug where the SoundSystem will consistently fail to re/initialize, commonly observed with LWJGL2 nightlies on Linux. Disabled when LWJGL3ify is present. [default: true]";
              };
              fixLavaHissOnAirReplace = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Lava will only hiss when mixing with water. From MC 1.8, fixes MC-32301 [default: true]";
              };
              fixLeadsBreakingOnSomeFenceInstances = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes Leads breaking when placed on some modded fences. [default: true]";
              };
              fixLeafDecayCheckRange = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stops vanilla and some modded leaves from decaying when part of some larger naturally occurring trees. [default: true]";
              };
              fixLilyPadPlacementSide = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stops Lily Pads from trying to place client side. [default: true]";
              };
              fixMergeItemStack = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes edge case bugs when shift clicking item stacks. An alternate version is used if CoFHCore is installed to fix dupes and item deletion it introduces. [default: true]";
              };
              fixMineshaftAirPockets = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes the air bubbles mineshafts create above their dirt rooms, affects all terrain but very noticeable in oceans.\\nThese air pockets were supposed to be in the dirt rooms so this also fixes the dirt rooms having blocked off entrances to some branches.\\nFrom MC 1.8, fixes MC-954 [default: true]";
              };
              fixNettyConnectionFailureResourceLeak = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes improperly terminated client connections sometimes causing a severe resource leak. [default: true]";
              };
              fixParticleDepthSorting = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Fixes particle depth being incorrectly calculated. Disabled if NotFine is installed, it implements this fix. [default: true]";
              };
              fixShearedGrassDropDupe = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Shearing tall grass will not give drops in addition to itself. [default: true]";
              };
              fixShearedLeavesDropDupe = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Shearing leaves will not give drops in addition to itself. [default: true]";
              };
              fixShearsNotTakingDamageFromNormalBlocks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Shears will take damage when used to mine any block. Also stops Forge shearing logic from dropping things in creative mode. From MC 1.9, fixes MC-8180 [default: true]";
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
              fixStructureComponentFillReplacement = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes structure component filling also replace blocks flagged as replaceable and not partially trees. Mostly prevents tall grass and flowers from embedding in structure foundations and keeps trees from having random holes. [default: true]";
              };
              fixVillagePathsHavePlantsOnTop = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Village paths will not have flowers or grass on top of them. From MC 1.10, fixes MC-3437 [default: true]";
              };
              fixVillageSieges = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Zombies will siege villages that are large enough at night. From MC 1.8, fixes MC-7432 and MC-7488 [default: true]";
              };
              fixVillageWellDesertMaterial = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Wells in desert villages will use the correct material. From MC 1.8, fixes MC-32514 [default: true]";
              };
              fixVillagerTradeMetadataDetection = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Villager trades will respect metadata. Currently unfinished and disabled internally. From MC 1.8 [default: true]";
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
                description = "Broken chests don't split apart dropped item stacks. [default: false]";
              };
              brokenHoppersDontSplitStacks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Broken hoppers don't split apart dropped item stacks. [default: false]";
              };
              fasterDroppedItemStackingChecks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Dropped item nearby stack checks are faster for full stacks. [default: true]";
              };
              fasterEntityLivingBaseIsPotionActiveAndSetAir = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "isPotionActive returns immediately if there are no active potions. setAir only updates its datawatcher when needed. [default: true]";
              };
              fasterGetBlockByIdForAirBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When something gets air blocks from ID it will return faster. [default: true]";
              };
              fasterOptionInteractions = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Makes several functions used by option buttons faster. Disabled if Optifine is installed to prevent conflicts. [default: false]";
              };
              fasterOptionLoading = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Makes the function that reads options.txt much faster. Disabled if Optifine is installed to prevent conflicts. [default: false]";
              };
              fasterSnowBlockTicks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Non-layered snow block ticking is faster. [default: true]";
              };
              moreAccurateLayeredSnowFaceCulling = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "The faces of layered snow get culled more accurately when chunk meshes are created. Disabled if NotFine is installed, it has a superior implementation. [default: true]";
              };
              replaceRandomInEffectRenderer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes EffectRenderer.class use a faster implementation of random. [default: true]";
              };
              replaceRandomInEntity = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes Entity.class use a faster implementation of random. [default: true]";
              };
              replaceRandomInItem = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes Item.class use a faster implementation of random. [default: true]";
              };
              replaceRandomInMinecraftServer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes MinecraftServer.class use a faster implementation of random. [default: true]";
              };
              replaceRandomInRenderItem = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes RenderItem.class use a faster implementation of random. [default: true]";
              };
              replaceRandomInWorld = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Makes World.class use a faster implementation of random. !This impacts world generation slightly! [default: false]";
              };
              replaceRandomInWorldClient = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Makes WorldClient.class use a faster implementation of random. Disabled if NotFine is installed, it implements this optimization. [default: true]";
              };
              skipInitialWorldChunkLoad = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Speeds up initial world loading by not waiting for chunks to preload. [default: true]";
              };
            };
          };
        };
        tweaks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enchantmentParticlesForPowerAboveZero = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Makes Enchantment Tables emit particles for any block with enchantment power. Disabled if NotFine is loaded, it implements this fix. [default: true]";
              };
              excludeLogsFromTopSolidOrLiquidBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes getTopSolidOrLiquidBlock treat logs as non-solid. Should prevent structures and from generating in trees among other issues. [default: true]";
              };
              farmlandHydroponics = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Farmland can use hydroponics. [default: false]";
              };
              farmlandNewTextures = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "New side textures for both wet and dry farmland. [default: false]";
              };
              farmlandNoTrample = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Farmland will no longer get trampled. [default: false]";
              };
              lanPortOverride = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Override the port used when opening singleplayer to LAN. Disabled if Hodgepodge is installed, use its defaultLanPort setting instead. [default: false]";
              };
              lanPortToUseForOverride = lib.mkOption {
                type = lib.types.int;
                default = 25565;
                description = "Port to use for lanPortOverride. [range: 1024 ~ 49151, default: 25565]";
              };
              placeEndPortalsAnywhere = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Place End Portals outside of the overworld without them getting removed. [default: false]";
              };
              placePressurePlatesOnAnyWallOrFence = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Place pressure plates on almost any wall or fence. [default: true]";
              };
              placeTorchesOnAnyFence = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Place torches on almost any fence. [default: true]";
              };
              placeTorchesOnAnyWall = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Place torches on almost any wall. [default: true]";
              };
              potionParticlesAreClearForClientPlayer = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Potion particles coming off of the player entity you control are always clear. [default: false]";
              };
              reduceLightningVolume = lib.mkOption {
                type = lib.types.str;
                default = "10000.0";
                description = "Reduces lightning volume and effective range. Set to 10,000 to disable. [range: 2.0 ~ 10000.0, default: 10000.0]";
              };
              removeEntityDuplicateExtendedPropertiesIdentifierSpam = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Removes \"An attempt was made to register extended properties using an existing key\" log spam caused by some mods. [default: true]";
              };
              scaledDrowningDamageMaxHealthFlat = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Amount of flat player health to remove each drowning tick. Set to 0 to disable. [range: 0.0 ~ 20000.0, default: 0.0]";
              };
              scaledDrowningDamageMaxHealthMult = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Portion of max player health to remove each drowning tick. Set to 0 to disable. [range: 0.0 ~ 1.0, default: 0.0]";
              };
              scaledFireDamageMaxHealthFlat = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Amount of flat player health to remove each fire tick. Set to 0 to disable. [range: 0.0 ~ 20000.0, default: 0.0]";
              };
              scaledFireDamageMaxHealthMult = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Portion of max player health to remove each fire tick. Set to 0 to disable. [range: 0.0 ~ 1.0, default: 0.0]";
              };
              scaledLavaDamageMaxHealthFlat = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Amount of flat player health to remove each lava tick. Set to 0 to disable. [range: 0.0 ~ 20000.0, default: 0.0]";
              };
              scaledLavaDamageMaxHealthMult = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Portion of max player health to remove each lava tick. Set to 0 to disable. [range: 0.0 ~ 1.0, default: 0.0]";
              };
              scaledPoisonDamageMaxHealthFlat = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Amount of flat player health to remove each poison effect tick. Set to 0 to disable. [range: 0.0 ~ 20000.0, default: 0.0]";
              };
              scaledPoisonDamageMaxHealthMult = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Portion of max player health to remove each poison effect tick. Set to 0 to disable. [range: 0.0 ~ 1.0, default: 0.0]";
              };
              scaledStarvationDamageMaxHealthFlat = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Amount of flat player health to remove each starvation tick. Set to 0 to disable. [range: 0.0 ~ 20000.0, default: 0.0]";
              };
              scaledStarvationDamageMaxHealthMult = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Portion of max player health to remove each starvation tick. Set to 0 to disable. [range: 0.0 ~ 1.0, default: 0.0]";
              };
              scaledSuffocationDamageMaxHealthFlat = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Amount of flat player health to remove each suffocation tick. Set to 0 to disable. [range: 0.0 ~ 20000.0, default: 0.0]";
              };
              scaledSuffocationDamageMaxHealthMult = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Portion of max player health to remove each suffocation tick. Set to 0 to disable. [range: 0.0 ~ 1.0, default: 0.0]";
              };
              scaledWitherDamageMaxHealthFlat = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Amount of flat player health to remove each wither effect tick. Set to 0 to disable. [range: 0.0 ~ 20000.0, default: 0.0]";
              };
              scaledWitherDamageMaxHealthMult = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Portion of max player health to remove each wither effect tick. Set to 0 to disable. [range: 0.0 ~ 1.0, default: 0.0]";
              };
              useAnyDyeOnLeatherArmor = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows Leather Armor to be dyed using any properly tagged dye. [default: true]";
              };
            };
          };
        };
      };
    };
  };
  mixinsModSupport = lib.mkOption {
    description = "mixinsModSupport configuration (./config/bugtorch/mixinsModSupport.cfg)";
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
              fixCrayfishFurnitureNullPointerExceptions = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes several TEs from MrCrayfish's Furniture Mod implement ISidedInventory correctly. [default: true]";
              };
              fixGanysSurfaceOpenTrapdoorBackTexture = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes Gany's Surface trapdoors use the correct back texture when open. [default: true]";
              };
              fixLLibraryMalformedJsonCrash = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents LLibrary from trying to get non-json text from pastebin that it would then try to parse as JSON. [default: true]";
              };
              fixThaumcraftCandleColorArrayOutOfBounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes Thaumcraft candles not cause an array out of bounds exception if rendered with metadata greater than 15. [default: true]";
              };
              fixWitcheryGarlicGarlandBlockBounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes Witchery Garlic Garlands use correct block bounds on every rotation. [default: true]";
              };
              fixWitcheryLeavesOptifineRendering = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes Witchery Leaves respect Optifine-like render settings. Disabled if NotFine is installed, it implements this fix. [default: true]";
              };
              fixWitcheryLeavesShearDupe = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Partially fixes a Forge shearing bug that impacts Witchery Leaves. [default: true]";
              };
            };
          };
        };
        "performance improvements" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              reuseAetherIIRenderPlayer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes Aether II reuse the same player renderer object across frames. [default: true]";
              };
            };
          };
        };
        tweaks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              disableCrayfishFurnitureAchievements = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disables MrCrayfish's Furniture Mod achievements. [default: false]";
              };
              extraUtilitiesGoldenLassoBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "noppes.npcs.entity.EntityCustomNpc" ];
                description = "Blacklist entities from Extra Utilities Golden Lasso. [default: [noppes.npcs.entity.EntityCustomNpc]]";
              };
              extraUtilitiesTradingPostVillageNamesNitwitFilter = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Filters Village Names Nitwit villagers from Extra Utilities Trading Post. [default: true]";
              };
              proxyLLibraryPastebin = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Use a pastebin proxy to keep LLibrary from crashing with some regional blocks. [default: false]";
              };
              scaledExtraUtilitiesDarknessDamageMaxHealthFlat = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Amount of flat player health to remove each darkness tick. Set to 0 to disable. [range: 0.0 ~ 20000.0, default: 0.0]";
              };
              scaledExtraUtilitiesDarknessDamageMaxHealthMult = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Portion of max player health to remove each darkness tick. Set to 0 to disable. [range: 0.0 ~ 1.0, default: 0.0]";
              };
            };
          };
        };
      };
    };
  };
  modSupport = lib.mkOption {
    description = "modSupport configuration (./config/bugtorch/modSupport.cfg)";
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
        "bug fixes" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              fixExtraUtilitiesBlockSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Assigns the correct sound types to some blocks from Extra Utilities. [default: true]";
              };
              fixPamsTemperatePlantsBlockSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Assigns the correct sound types to some blocks from Pam's Temperate Plants. [default: true]";
              };
              fixWitcheryBlockSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Assigns the correct sound types to some blocks from Witchery. [default: true]";
              };
            };
          };
        };
        "ore dictionary" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registerThaumcraftLeavesToTheOreDictionary = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Register Thaumcraft Greatwood and Silverwood leaves as treeLeaves. [default: true]";
              };
              registerThaumcraftThaumiumBlockToTheOreDictionary = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Register Thaumcraft Thaumium Blocks as blockThaumium. [default: true]";
              };
              registerThaumcraftWoodStairsToTheOreDictionary = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Register Thaumcraft Greatwood and Silverwood stairs as stairWood. [default: true]";
              };
              registerWitcheryWoodSlabsToTheOreDictionary = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Register Witchery wooden slabs as slabWood. [default: true]";
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
                description = "Craft Thaumcraft Ancient Stone slabs and stairs. [default: true]";
              };
              enableVillageNamesMetadataSensitiveTrades = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables metadata sensitive trades in Village Names. Does nothing if fixVillagerTradeMetadataDetection in \"bugtorch\\mixins.cfg\" is not enabled. [default: true]";
              };
              reverseCraftThaumcraftSlabs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Craft Thaumcraft slabs back into blocks. [default: true]";
              };
            };
          };
        };
      };
    };
  };
}
