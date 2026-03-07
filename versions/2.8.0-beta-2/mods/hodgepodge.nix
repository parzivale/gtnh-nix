{lib, ...}: {
  hodgepodge = lib.mkOption {
    description = "hodgepodge configuration (./config/hodgepodge.cfg)";
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
                description = "Disable CoFH TileEntity cache (and patch MineFactory Reloaded and Thermal Expansion with a workaround) [default: true]";
              };
              speedupLongIntHashMap = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speedup LongInt HashMap [default: true]";
              };
              speedupNBTTagCompoundCopy = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speedup NBTTagCompound copy [default: true]";
              };
              speedupProgressBar = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speedup progressbar [default: true]";
              };
              thermosCraftServerClass = lib.mkOption {
                type = lib.types.str;
                default = "org.bukkit.craftbukkit.v1_7_R4.CraftServer";
                description = "If using Bukkit/Thermos, the CraftServer package. [default: org.bukkit.craftbukkit.v1_7_R4.CraftServer]";
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
                description = "Enable chunk save cme debugging code. [default: false]";
              };
              dimensionManagerDebug = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prints debug log if DimensionManager got crashed [default: true]";
              };
              renderDebug = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable GL state debug hooks. Will not do anything useful unless mode is changed to nonzero. [default: true]";
              };
              renderDebugMode = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Default GL state debug mode. 0 - off, 1 - reduced, 2 - full [range: 0 ~ 2, default: 0]";
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
                description = "Maximum hp for BetterHUD to render as hearts [range: 1 ~ 100000, default: 5000]";
              };
              changeMaxNetworkNbtSizeLimit = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modify the maximum NBT size limit when received as a network packet, to avoid large NBT-related crashes [default: true]";
              };
              deduplicateForestryCompatInBOP = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Removes duplicate Fermenter and Squeezer recipes and flower registration [default: true]";
              };
              disableMassiveSacredTreeGeneration = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Prevents Sacred Rubber Tree Generation [default: false]";
              };
              disableWitcheryPotionExtender = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable Witchery potion extender for Java 12 compat [default: true]";
              };
              earlyChunkTileCoordinateCheck = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Checks saved TileEntity coordinates earlier to provide a more descriptive error message [default: true]";
              };
              earlyChunkTileCoordinateCheckDestructive = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Destroy and log TileEntities failing the safe coordinate instead of crashing the game (can cause loss of data) [default: false]";
              };
              enableMemoryFixes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable multiple fixes to reduce RAM usage [default: true]";
              };
              enlargePotionArray = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Safely enlarge the potion array before other mods [default: true]";
              };
              fixBetterHUDArmorDisplay = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix BetterHUD armor bar rendering breaking with skulls [default: true]";
              };
              fixBetterHUDHPDisplay = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix BetterHUD freezing the game when trying to render high amounts of hp [default: true]";
              };
              fixBibliocraftPackets = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Bibliocraft packet exploits [default: true]";
              };
              fixBibliocraftPathSanitization = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Bibliocraft path sanitization [default: true]";
              };
              fixBogusIntegratedServerNPEs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix bogus FMLProxyPacket NPEs on integrated server crashes. [default: true]";
              };
              fixBukkitBetterQuestingCrash = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix crash on Bukkit with BetterQuesting [default: true]";
              };
              fixButtonsGuiConfirmOpenLink = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix the buttons not being centered in the GuiConfirmOpenLink [default: true]";
              };
              fixCandycraftBlockSugarNPE = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix NPE when interacting with sugar block [default: true]";
              };
              fixCaseCommands = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix the command handler not allowing you to run commands typed in any case [default: true]";
              };
              fixChatOpenLink = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix the vanilla method to open chat links not working for every OS [default: true]";
              };
              fixChatWrappedColors = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix wrapped chat lines missing colors [default: true]";
              };
              fixCofhOreDictCME = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix race condition in COFH's oredict [default: true]";
              };
              fixCofhOreDictNPE = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix NPE in COFH's oredict [default: true]";
              };
              fixContainerPutStacksInSlots = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents crash if server sends container with wrong itemStack size [default: true]";
              };
              fixDebugBoundingBox = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes the debug hitbox of the player beeing offset [default: true]";
              };
              fixDimensionChangeHearts = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix losing bonus hearts on dimension change [default: true]";
              };
              fixDuplicateSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix duplicate sounds from playing when closing a gui. [default: true]";
              };
              fixEatingStackedStew = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix deleting stack when eating mushroom stew [default: true]";
              };
              fixEffectRendererClassTypo = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix a class name typo in MinecraftForge's initialize method [default: true]";
              };
              fixEnchantmentNumerals = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix enchantment levels not displaying properly above a certain value [default: true]";
              };
              fixExtraTiCTEConflict = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable ExtraTic's Integration with Metallurgy 3 Precious Materials Module: (Brass, Silver, Electrum & Platinum) [default: false]";
              };
              fixExtraUtilitiesDrumEatingCells = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Extra Utilities drums eating IC2 cells and Forestry capsules [default: true]";
              };
              fixExtraUtilitiesFilingCabinetDupe = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Caps hotkey'd stacks to their maximum stack size in filing cabinets [default: true]";
              };
              fixExtraUtilitiesFilterDupe = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent hotkeying other items onto item filters while they are open [default: true]";
              };
              fixExtraUtilitiesFluidRetrievalNode = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent fluid retrieval node from voiding (Extra Utilities) [default: true]";
              };
              fixExtraUtilitiesGreenscreenMicroblocks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Extra Utilities Lapis Caelestis microblocks rendering [default: true]";
              };
              fixExtraUtilitiesItemRendering = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes rendering issues with transparent items from Extra Utilities [default: true]";
              };
              fixExtraUtilitiesLastMilleniumCreatures = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Remove creatures from the Last Millenium (Extra Utilities) [default: true]";
              };
              fixExtraUtilitiesLastMilleniumRain = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Remove rain from the Last Millenium (Extra Utilities) [default: true]";
              };
              fixExtraUtilitiesUnEnchanting = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix dupe bug with Division Sigil removing enchantment [default: true]";
              };
              fixFenceConnections = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix fence connections with other types of fence [default: true]";
              };
              fixFireSpread = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix vanilla fire spread sometimes cause NPE on thermos [default: true]";
              };
              fixFluidContainerRegistryKey = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Forge fluid container registry key [default: true]";
              };
              fixFontRendererLinewrapRecursion = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Replace recursion with iteration in FontRenderer line wrapping code [default: true]";
              };
              fixForgeOpenGuiHandlerWindowId = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix windowId being set on openContainer even if openGui failed [default: true]";
              };
              fixForgeUpdateChecker = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix the Forge update checker [default: true]";
              };
              fixFriendlyCreatureSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix vanilla issue where player sounds register as animal sounds [default: true]";
              };
              fixGameSettingsArrayOutOfBounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix an array out of bounds caused by the GameSettings getKeyDisplayString method [default: true]";
              };
              fixGetBlockLightValue = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix vanilla light calculation sometimes cause NPE on thermos [default: true]";
              };
              fixGlStateBugs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix vanilla GL state bugs causing lighting glitches in various perspectives (MC-10135). [default: true]";
              };
              fixGlibysVoiceChatThreadStop = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Gliby's voice chat not shutting down its thread cleanly [default: true]";
              };
              fixGuiGameOver = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Game Over GUI buttons disabled if switching fullscreen [default: true]";
              };
              fixHasteArmSwing = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix arm not swinging when having too much haste [default: true]";
              };
              fixHitEffectBrightness = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix spiders, endermen and ender dragons being rendered too red when hit [default: true]";
              };
              fixHopperHitBox = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix vanilla Hopper hit box [default: true]";
              };
              fixHopperVoidingItems = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Drawer + Hopper voiding items [default: true]";
              };
              fixHugeChatKick = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix oversized chat message kicking player. [default: true]";
              };
              fixHungerOverhaul = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Hunger Overhaul low stat effects [default: true]";
              };
              fixHungerOverhaulRestore0Hunger = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix some items restore 0 hunger [default: true]";
              };
              fixIc2ArmorLag = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix lag caused by IC2 armor tick [default: true]";
              };
              fixIc2CropTrampling = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix IC2 Crops trampling any types of farmland to dirt when sprinting [default: true]";
              };
              fixIc2DirectInventoryAccess = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix IC2's direct inventory access [default: true]";
              };
              fixIc2HoverMode = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix IC2's armor hover mode [default: true]";
              };
              fixIc2Nightvision = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent IC2's nightvision from blinding you [default: true]";
              };
              fixIc2ReactorDupe = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix IC2's reactor dupe [default: true]";
              };
              fixIc2ResourcePackTranslation = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix IC2 not loading translations from resource packs [default: true]";
              };
              fixIc2UnprotectedGetBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes various unchecked IC2 getBlock() methods [default: true]";
              };
              fixIgnisFruitAABB = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Axis aligned Bounding Box of Ignis Fruit [default: true]";
              };
              fixImmobileFireballs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix the bug that makes fireballs stop moving when chunk unloads [default: true]";
              };
              fixInventorySyncLag = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix inventory sync lag: prevents client to check recipes on empty slots. Particularly fixes lag when trying to eat food when full. [default: true]";
              };
              fixJourneymapFilePath = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents journeymap from using illegal character in file paths [default: true]";
              };
              fixJourneymapJumpyScrolling = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix jumpy scrolling in the waypoint manager screen [default: true]";
              };
              fixJourneymapKeybinds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent unbound keybinds from triggering when pressing certain keys [default: true]";
              };
              fixLoginDimensionIDOverflow = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix an overflow of the dimension id when a player logins on a server [default: true]";
              };
              fixMTCoreRecipe = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes the damage of the Thick Neutron Reflectors in the MT Core recipe (Advanced Solar Panels) [default: true]";
              };
              fixMorpheusWaking = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix not properly waking players if not everyone is sleeping [default: true]";
              };
              fixNametagBrightness = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix nametags of spiders, endermen and ender dragons being rendered too dark [default: true]";
              };
              fixNegativeKelvin = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix the temperature can go below absolute zero at very high place [default: true]";
              };
              fixNetHandlerLoginServerOfflineMode = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows the server to assign the logged in UUID to the same username when online_mode is false [default: true]";
              };
              fixNetHandlerPlayClientHandleSetSlot = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents crash if server sends itemStack with index larger than client's container [default: true]";
              };
              fixNetherLeavesFaceRendering = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If fancy graphics are enabled, Nether Leaves render sides with other Nether Leaves adjacent too [default: true]";
              };
              fixNettyNPE = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix NPE in Netty's Bootstrap class [default: true]";
              };
              fixNorthWestBias = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix northwest bias on RandomPositionGenerator [default: true]";
              };
              fixNullHandlingItemWispEssence = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix handling of null stacks in ItemWispEssence [default: true]";
              };
              fixOptifineChunkLoadingCrash = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Forces the chunk loading option from optifine to default since other values can crash the game [default: true]";
              };
              fixPerspectiveCamera = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent tall grass and such to affect the perspective camera [default: true]";
              };
              fixPlayerSkinFetching = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow some mods to properly fetch the player skin [default: true]";
              };
              fixPortalGunURLs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix outdated URLs used in the PortalGun mod to download the sound pack [default: true]";
              };
              fixPotionEffectNumerals = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Properly display level of potion effects in the inventory and on tooltips [default: true]";
              };
              fixPotionIterating = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix crashes with ConcurrentModificationException because of incorrectly iterating over active potions [default: true]";
              };
              fixPotionLimit = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix potions >= 128 [default: true]";
              };
              fixPreserveQuadOrder = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Preserve the order of quads in terrain pass 1 [default: true]";
              };
              fixRedstoneTorchWorldLeak = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix redstone torch leaking world [default: true]";
              };
              fixRenderersWorldLeak = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix EffectRenderer and RenderGlobal leaking world instance when leaving world [default: true]";
              };
              fixResizableFullscreen = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix game window becoming not resizable after toggling fullscrean in any way [default: true]";
              };
              fixResourcePackOpening = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix resource pack folder not opening on Windows if file path has a space [default: true]";
              };
              fixSkinManagerLeakingClientWorld = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix skin manager leaking client world [default: true]";
              };
              fixSlashCommands = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix forge command handler not checking for a / and also not running commands with any case [default: true]";
              };
              fixSugarCanePlacement = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Sugar Cane inability to replace replaceable blocks indirectly. [default: true]";
              };
              fixThaumcraftAspectSorting = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Thaumcraft Aspects being sorted by tag instead of by name [default: true]";
              };
              fixThaumcraftGolemMarkerLoading = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix golem's marker loading failure when dimensionId larger than MAX_BYTE [default: true]";
              };
              fixThaumcraftLeavesLag = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Thaumcraft leaves frequent ticking [default: true]";
              };
              fixThaumcraftWorldCoordinatesHashingMethod = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Implement a proper hashing method for WorldCoordinates [default: true]";
              };
              fixTimeCommandWithGC = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix time commands with GC [default: true]";
              };
              fixTooManyAllocationsChunkPositionIntPair = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix too many allocations from Chunk Coordinate Int Pair [default: true]";
              };
              fixUnfocusedFullscreen = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Fix exiting fullscreen when you tab out of the game [default: true]";
              };
              fixUrlDetection = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix URISyntaxException in forge. [default: true]";
              };
              fixVanillaUnprotectedGetBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes various unchecked vanilla getBlock() methods [default: true]";
              };
              fixVillageUncheckedGetBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes village unchecked getBlock() calls [default: true]";
              };
              fixVoxelMapChunkNPE = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix some NullPointerExceptions [default: true]";
              };
              fixVoxelMapYCoord = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Y coordinate being off by one [default: true]";
              };
              fixWandPedestalVisDuplication = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Thaumcraft wand pedestal vis duplication [default: true]";
              };
              fixWitcheryReflections = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes Witchery player skins reflections with inhabited mirrors [default: true]";
              };
              fixWitcheryRendering = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes some potential errors in Witchery Rendering [default: true]";
              };
              fixWitcheryThunderDetection = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enhanced Witchery Thunder Detection for rituals and Witch Hunters [default: true]";
              };
              fixWorldGetBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix unprotected getBlock() in World [default: true]";
              };
              fixWorldServerLeakingUnloadedEntities = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix WorldServer leaking entities when no players are present in a dimension [default: true]";
              };
              fixWrongBlockPlacementDistanceCheck = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix server-side check of block placement distance by players being not identical client-side checks [default: true]";
              };
              fixXaerosMinimapEntityDot = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes the player entity dot rendering when arrow is chosen [default: true]";
              };
              fixXaerosWorldMapScroll = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix scrolling in the world map screen [default: true]";
              };
              fixZTonesPackets = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix ZTones packet exploits [default: true]";
              };
              increasePacketSizeLimit = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Increase the maximum network packet size from the default of 2MiB [default: true]";
              };
              itemStacksPickedUpPerTick = lib.mkOption {
                type = lib.types.int;
                default = 36;
                description = "Stacks picked up per tick [range: 1 ~ 64, default: 36]";
              };
              java12BopCompat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "BiomesOPlenty Java 12 compatibility patches. [default: true]";
              };
              java12ImmersiveEngineeringCompat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Immersive Engineering Java 12 compatibility patch [default: true]";
              };
              java12LotrCompat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Lotr Java 12 compatibility patch [default: true]";
              };
              java12MineChemCompat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Minechem Java 12 compatibility patch [default: true]";
              };
              limitRecursiveBlockUpdateDepth = lib.mkOption {
                type = lib.types.int;
                default = 256;
                description = "Limit the number of recursive cascading block updates during world generation to prevent stack overflow crashes, set to -1 to disable the limit. [range: -1 ~ 2147483647, default: 256]";
              };
              logHugeChat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Log oversized chat message to console. WARNING: might create huge log files if this happens very often. [default: true]";
              };
              logarithmicVolumeControl = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Volume Slider is ineffective until reaching the lower end [default: true]";
              };
              maxNetworkNbtSizeLimit = lib.mkOption {
                type = lib.types.int;
                default = 268435456;
                description = "The maximum NBT size limit in bytes when received as a network packet, the vanilla value is 2097152 (2 MiB). [range: 1024 ~ 1073741824, default: 268435456]";
              };
              optimizeIc2ReactorInventoryAccess = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimize inventory access to IC2 nuclear reactor [default: true]";
              };
              optimizeWorldUpdateLight = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix too early light initialization [default: true]";
              };
              packetSizeLimit = lib.mkOption {
                type = lib.types.int;
                default = 268435456;
                description = "The maximum size limit in bytes of a network packet to accept, the vanilla value is 2097152 (2 MiB). [range: 1024 ~ 1073741824, default: 268435456]";
              };
              preventThermalDynamicsNASE = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent crash with Thermal Dynamics from Negative Array Exceptions from item duct transfers [default: true]";
              };
              remove2MBChunkLimit = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Spigot-style extended chunk format to remove the 2MB chunk size limit [default: true]";
              };
              removeBOPWarning = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Remove the BOP warning on first world generation (ignored when dreamcraft is present) [default: false]";
              };
              removeCreativeSearchTab = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable the creative search tab since it can be very laggy in large modpacks [default: true]";
              };
              removeUpdateChecks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Remove old/stale/outdated update checks. [default: true]";
              };
              speedupAnimations = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Drastically speedup animated textures (Basically the same as with optifine animations off but animations are working) [default: true]";
              };
              squashBedErrorMessage = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stop \"You can only sleep at night\" message filling the chat [default: true]";
              };
              throttleItemPickupEvent = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Limits the amount of times the ItemPickupEvent triggers per tick since it can lead to a lot of lag [default: true]";
              };
              triggerAllConflictingKeybindings = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Triggers all conflicting key bindings on key press instead of a random one [default: true]";
              };
              validatePacketEncodingBeforeSending = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Validate vanilla packet encodings before sending in addition to on reception [default: true]";
              };
              validatePacketEncodingBeforeSendingShouldCrash = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should the extended packet validation error cause a crash (true) or just print out an error to the log (false) [default: false]";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
        speedups = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              fastChunkHandling = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Removes hard caps on chunk handling speed. Experimental and probably incompatible with hybrid servers! [default: false]";
              };
              fastIntCache = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Rewrites internal cache methods to be safer and faster. Experimental, use at your own risk! [default: false]";
              };
              limitMobSpawningToViewDistance = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Limit mob spawning to the view distance [default: true]";
              };
              maxSendSpeed = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "The maximum speed of chunkloading per player, in chunks/tick. High values may overload clients! Only active with fastChunkHandling. For reference: Vanilla is 5, or 100 chunks/sec. At 32 render distance = 4225 chunks, loading the world would take 42.25 seconds. [range: 5 ~ 2147483647, default: 50]";
              };
              maxUnloadSpeed = lib.mkOption {
                type = lib.types.int;
                default = 220;
                description = "The maximum speed of chunk unloading, in chunks/tick. High values may overload servers! Only active with fastChunkHandling. For reference: Vanilla is 100, or 2000 chunks/sec. At 32 render distance = 4225 chunks, unloading the world would take 2.1125 seconds. [range: 100 ~ 2147483647, default: 220]";
              };
              optimizeASMDataTable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimize ASMDataTable getAnnotationsFor for faster startup [default: true]";
              };
              optimizeMobSpawning = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimize mob spawning [default: true]";
              };
              optimizeTextureLoading = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimize texture loading [default: true]";
              };
              optimizeTileentityRemoval = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimize tileEntity removal in World.class [default: true]";
              };
              replaceVoxelMapReflection = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Replace reflection in VoxelMap to directly access the fields instead. [default: true]";
              };
              speedupBOPFogHandling = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speedup biome fog rendering in BiomesOPlenty [default: true]";
              };
              speedupChunkCoordinatesHashCode = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speedup ChunkCoordinates hashCode [default: true]";
              };
              speedupChunkProviderClient = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speeds up ChunkProviderClient by removing chunkListing.  Note: Depends on asm.speedupLongIntHashMap [default: true]";
              };
              speedupGrassBlockRandomTicking = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speed up grass block random ticking [default: true]";
              };
              speedupNBTCopy = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speed up NBT copying [default: true]";
              };
              speedupVanillaFurnace = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speedup Vanilla Furnace recipe lookup [default: true]";
              };
              tcpNoDelay = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Sets TCP_NODELAY to true, reducing network latency in multiplayer. Works on server as well as client. From makamys/CoreTweaks [default: true]";
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
                description = "Add CV support to Thaumcraft wand recharge pedestal [default: true]";
              };
              addModConfigSearchBar = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds a search bar to the mod config GUI [default: true]";
              };
              addModEntityStats = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds non-vanilla entities to the statistics [default: true]";
              };
              addModItemStats = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds non-vanilla blocks/items to the statistics [default: true]";
              };
              addSystemInfo = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds system info to the F3 overlay (Java version and vendor; GPU name; OpenGL version; CPU cores; OS name, version and architecture) [default: true]";
              };
              addToggleDebugMessage = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add a debug message in the chat when toggling vanilla debug options [default: true]";
              };
              arabicNumbersForEnchantsPotions = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Uses arabic numbers for enchantment levels and potion amplifier levels instead of roman numbers [default: false]";
              };
              atropineHighID = lib.mkOption {
                type = lib.types.int;
                default = 255;
                description = "Minechem Atropine High (Delirium) effect ID [range: 1 ~ 255, default: 255]";
              };
              autoSaveInterval = lib.mkOption {
                type = lib.types.int;
                default = 900;
                description = "Sets the interval for auto saves in ticks (20 ticks = 1 second) [range: 1 ~ 2147483647, default: 900]";
              };
              avoidDroppingItemsWhenClosing = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Avoids droping items on container close, and instead places them in the player inventory. (Inspired from EFR) [default: true]";
              };
              bedAlwaysSetsSpawn = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Clicking on a bed while in a valid dimension will always set the player spawn [default: true]";
              };
              bedMessageAboveHotbar = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show \"cannot sleep\" messages above hotbar [default: true]";
              };
              changeCacheFileExtension = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Changes the file extension of VoxelMap's cache files from .zip to .data to stop the TechnicLauncher from deleting them when updating [default: true]";
              };
              changeSprintCategory = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Moves the sprint keybind to the movement category [default: true]";
              };
              chatLength = lib.mkOption {
                type = lib.types.int;
                default = 8191;
                description = "Amount of chat lines kept (Vanilla: 100) [range: 100 ~ 32767, default: 8191]";
              };
              compactChat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Compacts identical consecutive chat messages together [default: true]";
              };
              defaultLanPort = lib.mkOption {
                type = lib.types.int;
                default = 25565;
                description = "Specify default LAN port to open an integrated server on. Set to 0 to always open the server on an automatically allocated port. [range: 0 ~ 65535, default: 25565]";
              };
              disableAidSpawnByXUSpikes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disables the spawn of zombie aid when zombie is killed by Extra Utilities Spikes, since it can spawn them too far. [default: true]";
              };
              disableChunkTerrainGeneration = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable terrain generation for new generated chunks (all blocks become air, biomes remain) [default: false]";
              };
              disableModdedChunkPopulation = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable all extra mod chunk population for new generated chunks (e.g. Natura's clouds) [default: false]";
              };
              disableRealmsButton = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable Minecraft Realms button on main menu [default: true]";
              };
              disableWorldTypeChunkPopulation = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable world type associated chunk population for new generated chunks (e.g. vanilla structures in Overworld) [default: false]";
              };
              displayIc2FluidLocalizedName = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Display fluid localized name in IC2 fluid cell tooltip [default: true]";
              };
              dontInvertCrosshairColor = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Stop inverting colors of crosshair [default: false]";
              };
              dontSleepOnThreadedIO = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Don't sleep on threaded IO [default: true]";
              };
              dropPickedLootOnDespawn = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Drop picked loot on entity despawn [default: true]";
              };
              enableDefaultLanPort = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Open an integrated server on a static port. [default: true]";
              };
              enableMacosCmdShortcuts = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use CMD key on MacOS to COPY / INSERT / SELECT in text fields (Chat, NEI, Server IP etc.) [default: true]";
              };
              enableNBTStringPooling = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable string pooling for NBT Strings - trades performance for memory [default: false]";
              };
              enableTagCompoundStringPooling = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable string pooling for NBT TagCompound Keys [default: true]";
              };
              enableTileRendererProfiler = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Shows renderer's impact on FPS in vanilla lagometer [default: true]";
              };
              endermanBlockGrabDisable = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Entirely remove Endermen's ability to grab blocks. Should also work for any modded entities that extend EntityEnderman and call its onLivingUpdate [default: false]";
              };
              endermanBlockPlaceBlacklist = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable the blacklist (defined in endermanBlockPlaceBlacklistBlocks) for blocks that Endermen are unable to place held blocks on top of. Ignored if endermanBlockPlaceDisable is true. Should also work for any modded entities that extend EntityEnderman and call its onLivingUpdate [default: false]";
              };
              endermanBlockPlaceBlacklistBlocks = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "TConstruct:Smeltery:32767" "TConstruct:SmelteryNether:32767" "gregtech:gt.blockmachines:32767" "gregtech:gt.blockcasings:32767" "gregtech:gt.blockcasings2:32767" "gregtech:gt.blockcasings3:32767" "gregtech:gt.blockcasings4:32767" "gregtech:gt.blockcasings5:32767" "gregtech:gt.blockcasings8:32767" "gregtech:gt.blockcasings9:32767" "gregtech:gt.blockcasings10:32767" "gregtech:gt.blockcasings11:32767" ];
                description = "The list of blocks that Endermen are unable to place held blocks on top of. Requires endermanBlockPlaceBlacklist to be true. Ignored if endermanBlockPlaceDisable is true. Add entries in the format modId:blockName(:meta optional), with meta of 32767 to prevent endermen from placing on blocks of any meta value with the same id [default: ]";
              };
              endermanBlockPlaceDisable = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Entirely remove Endermen's ability to place blocks. Should also work for any modded entities that extend EntityEnderman and call its onLivingUpdate [default: false]";
              };
              enhanceNightVision = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Remove the blueish sky tint from night vision [default: false]";
              };
              entityStatsExclusions = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "Mob" "Monster" ];
                description = "No stats will be registered for these enties (e.g. because another mod already adds them) [default: [Mob], [Monster]]";
              };
              extraUtilitiesEnderQuarryOverride = lib.mkOption {
                type = lib.types.int;
                default = 200000000;
                description = "Ender Quarry RF Storage Override (ExU default value: 10000000) (0 to use default value) [range: 0 ~ 2147483647, default: 0]";
              };
              fastBlockPlacing = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Allows blocks to be placed at a faster rate (toggleable via keybind) [default: false]";
              };
              fastBlockPlacingServerSide = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow players on your server to use fast block placement [default: true]";
              };
              fixComponentsPoppingOff = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Project Red components popping off on unloaded chunks [default: true]";
              };
              fixHudLightingGlitch = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix hotbars being dark when Project Red is installed [default: true]";
              };
              fixPotionEffectRender = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix vanilla potion effects rendering above the NEI tooltips in the inventory [default: true]";
              };
              fixPotionRenderOffset = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents the inventory from shifting when the player has active potion effects [default: true]";
              };
              hideCrosshairInThirdPerson = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stops rendering the crosshair when you are playing in third person [default: true]";
              };
              hideIc2ReactorSlots = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent IC2's reactor's coolant slots from being accessed by automations if not a fluid reactor [default: true]";
              };
              hidePotionParticlesFromSelf = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stops rendering potion particles from yourself [default: true]";
              };
              ic2CellWithContainer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Give IC2 cells containers like GregTech cells do [default: true]";
              };
              ic2SeedMaxStackSize = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "IC2 seed max stack size [range: 1 ~ 64, default: 64]";
              };
              increaseParticleLimit = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Increase particle limit [default: true]";
              };
              installAnchorAlarm = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Wake up passive & personal anchors on player login [default: true]";
              };
              longerChat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes the chat history longer instead of 100 lines [default: true]";
              };
              longerSentMessages = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows you to send longer chat messages, up to 256 characters, instead of 100 in vanilla. [default: true]";
              };
              makeBigFirsPlantable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow 5 Fir Sapling planted together ('+' shape) to grow to a big fir tree [default: true]";
              };
              modernPickBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds pick block functionality to survival mode [default: true]";
              };
              particleLimit = lib.mkOption {
                type = lib.types.int;
                default = 8000;
                description = "Particle limit (Vanilla: 4000) [range: 4000 ~ 16000, default: 8000]";
              };
              preventPickupLoot = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent monsters from picking up loot. [default: true]";
              };
              reloadSoundsButton = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds a button in the sounds menu to reload the sound system without needing to press F3 + S [default: true]";
              };
              removeBOPQuicksandGeneration = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Remove the BOP quicksand generation [default: false]";
              };
              removeOptifineGLErrors = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Removes the 'GL error' message that appears when using a shader in Optifine/Shadersmod [default: true]";
              };
              removeSpawningMinecartSound = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stop playing a sound when spawning a minecart in the world [default: true]";
              };
              synchronizeIC2Reactors = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Synchronize IC2 reactors to the world tick time, allowing for tick-perfect automation. [default: false]";
              };
              saveMineshaftData = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Save Mineshaft data (Requires threadedWorldDataSaving for changes to take effect) Might cause small worldgen issues if disabled; equivalent to removing the file on each boot if disabled [default: true]";
              };
              sortEntityStats = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Sort Mob stats lexicographically (Requires addModEntityStats) [default: true]";
              };
              stringPoolMode = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "String pooling mode (0 = Java intern, 1 = Guava strong interner, 2 = Guava weak interner) [range: 0 ~ 2, default: 1]";
              };
              thirstyTankContainer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Implement container for thirsty tank [default: true]";
              };
              threadedWorldDataSaving = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable threaded saving for WorldData [default: true]";
              };
              transparentChat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Doesn't render the black box behind messages when the chat is closed [default: true]";
              };
              unbindKeybindsByDefault = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Unbinds keybinds of certain ARR mods to avoid keybinds conflicts [default: true]";
              };
              useLighterWater = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Reduces water opacity from 3 to 1, to match modern [default: false]";
              };
            };
          };
        };
      };
    };
  };
}
