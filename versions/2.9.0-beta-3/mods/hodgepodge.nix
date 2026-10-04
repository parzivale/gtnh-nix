{ lib, ... }:
{
  hodgepodge_cfg = lib.mkOption {
    description = "hodgepodge_cfg configuration (./config/hodgepodge.cfg)";
    default = { };
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
          default = { };
          type = lib.types.submodule {
            options = {
              bopFogDisable = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable BoP fog modifications [default: false]";
              };
              cofhWorldTransformer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable CoFH TileEntity cache (and patch MineFactory Reloaded and Thermal Expansion with a workaround) [default: true]";
              };
              disableCoFHAccessTransformer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable CoFH Access Transformer and use Forge AT instead to improve transforming performance [default: true]";
              };
              dissectVarargs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Remove various vararg method calls, to make profiling easier. [default: true]";
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
              speedupOreDictionary = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speedup OreDictionary [default: true]";
              };
              speedupPlayerManager = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speedup PlayerManager [default: true]";
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
          default = { };
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
              showChunkGenDebug = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Show chunk generation stats on the F3 debug screen (left side). Singleplayer only. [default: false]";
              };
            };
          };
        };
        fixes = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              addSimulationDistance_WIP = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[Experimental] Add option to separate simulation distance from rendering distance (Incompatible with optifine, will automatically be disabled). WARNING: May lead to TPS issues [default: false]";
              };
              addThrowerTagToDroppedItems = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds the thrower tag to all dropped EntityItems [default: true]";
              };
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
              clearStaleLoadingScreenInput = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Clear stale clicks made on the loading screen and prevent them from firing in the main menu [default: true]";
              };
              clipPlayerRenderInGuis = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents the entity rendered in the player inventory GUI and the horse GUI from overflowing their boxes. [default: true]";
              };
              deduplicateForestryCompatInBOP = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Removes duplicate Fermenter and Squeezer recipes and flower registration [default: true]";
              };
              deepCopyDataWatcherInSP = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Make a deep copy when sending objects from the data watcher to the client in SinglePlayer [default: true]";
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
              enlargePotionArray = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Safely enlarge the potion array before other mods [default: true]";
              };
              entityNameLocalization = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix death messages containing English-localized entity names even on non-English clients. [default: true]";
              };
              fixBOPCascadingKelp = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes cascading worldgen caused by Biomes O' Plenty Kelp. [default: true]";
              };
              fixBOPSaplingIcon = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix BOP sapling icon showing the wrong type when the growth stage bit is set in meta [default: true]";
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
              fixBibliocraftPaintingUtilPath = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Bibliocraft PaintingUtil getting it's own jar path [default: true]";
              };
              fixBibliocraftPathSanitization = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Bibliocraft path sanitization [default: true]";
              };
              fixBibliowoodsForestryRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Bibliowoods Forestry recipes [default: true]";
              };
              fixBoPEid = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix EndlessIds incompatibility with BoP [default: true]";
              };
              fixBogusIntegratedServerNPEs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix bogus FMLProxyPacket NPEs on integrated server crashes. [default: true]";
              };
              fixBottomFaceUV = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Do not flip bottom face textures (1.8+ behavior, see MC-47811) [default: false]";
              };
              fixBreakingSpecialArmorHelmetOnBlockFall = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix breaking electric and other special armor helmet when a block falls on your head [default: true]";
              };
              fixBreakingSpecialArmorWithThornsEnchantment = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix breaking electric and other special armor when Thorns enchantment is applied [default: true]";
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
              fixCameraParticleRotation = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Orient particles from the render view entity instead of the player, so detached cameras (freecam, spectator-likes) do not tilt them (MC-46445) [default: true]";
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
              fixCofhNullByteArray = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix NBTTagSmartByteArray sending null to NBTTagByteArray causing NPE when saving chunks [default: true]";
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
              fixCofhTpxCommand = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix logic of /cofh tpx [default: true]";
              };
              fixCommandFormattingLoss = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix /say, /tell, /me losing formatting after the first word [default: true]";
              };
              fixContainerPutStacksInSlots = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents crash if server sends container with wrong itemStack size [default: true]";
              };
              fixContainerShiftClickRecursion = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Backports 1.12's slot shift clicking to prevent recursion when crafting items [default: true]";
              };
              fixCreativeTabAlphaTest = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix creative tab backgrounds showing black corners when alpha test is left disabled by item rendering (Forge GL state bug) [default: true]";
              };
              fixDebugBoundingBox = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes the debug hitbox of the player beeing offset [default: true]";
              };
              fixDimensionChangeAttributes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix losing attributes on dimension change [default: true]";
              };
              fixDisconnectScreenLayout = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix disconnect screen button overlapping long kick messages [default: true]";
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
              fixEggParticles = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use correct egg particles instead of snowball ones (MC-7807) [default: true]";
              };
              fixEnchantmentNumerals = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix enchantment levels not displaying properly above a certain value [default: true]";
              };
              fixEntityAttributesRange = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent the client from crashing due to invalid entity attributes range (MC-150405) [default: true]";
              };
              fixEntityBouncing = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes items bouncing on stairs and other blocks with odd hitboxes [default: true]";
              };
              fixEntityGravity = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes entity having buggy gravity [default: true]";
              };
              fixExtraTiCTEConflict = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable ExtraTic's Integration with Metallurgy 3 Precious Materials Module: (Brass, Silver, Electrum & Platinum) [default: false]";
              };
              fixExtraUtilitiesChestComparatorUpdate = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Extra Utilities chests not updating comparator redstone signals when their inventories change [default: true]";
              };
              fixExtraUtilitiesDrumEatingCells = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Extra Utilities drums eating IC2 cells and Forestry capsules [default: true]";
              };
              fixExtraUtilitiesEnderCollectorCrash = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent Extra Utilities Ender Collector from inserting into auto-dropping Blocks that create a crash-loop [default: true]";
              };
              fixExtraUtilitiesEnderQuarryFreeze = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes Ender Quarry get stuck at a mostly random location under certain conditions [default: true]";
              };
              fixExtraUtilitiesErosionShovelUnbreakable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes the erosion shovel to be unbreakable during damage checks that aren't breaking blocks or attacking. [default: true]";
              };
              fixExtraUtilitiesEthericSwordUnbreakable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Make Etheric Sword truly unbreakable [default: true]";
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
              fixExtraUtilitiesHealingAxeHeal = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes the healing axe not healing mobs when attacking them [default: true]";
              };
              fixExtraUtilitiesHealingAxeUnbreakable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes the healing axe to be unbreakable during damage checks that aren't breaking blocks or attacking. [default: true]";
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
              fixExtraUtilitiesPreserveSpikeNBT = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Extra Utilities spikes losing NBT tags (other than enchantments) when being placed on the ground [default: true]";
              };
              fixExtraUtilitiesUnEnchanting = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix dupe bug with Division Sigil removing enchantment [default: true]";
              };
              fixFakePlayerChatCrash = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix a crash caused when a mod tries to send a chat message to a FakePlayer [default: true]";
              };
              fixFenceConnections = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix fence connections with other types of fence [default: true]";
              };
              fixFenceRightClick = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix the player arm swinging when right clicking a fence [default: true]";
              };
              fixFileNotFoundExceptionsServerFirstBoot = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix printed errors about json files when running a server for the first time [default: true]";
              };
              fixFireSpread = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix vanilla fire spread sometimes causing NPE on thermos [default: true]";
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
              fixForgeOptionalInterfaceSignature = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Patch Forge's @Optional.Interface processor to also strip Signature attribute entries (fixes TypeNotPresentException from Class.getGenericInterfaces when an optional interface's mod is missing) [default: true]";
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
              fixGlassBottleWaterFilling = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Glass Bottles filling with Water from some other Fluid blocks [default: true]";
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
              fixHouseCharRendering = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Render the house character (⌂ - Unicode index 2302) in the Minecraft font. [default: true]";
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
              fixIc2Eid = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix EndlessIds incompatibility with IC2 [default: true]";
              };
              fixIc2HoverMode = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix IC2's armor hover mode [default: true]";
              };
              fixIc2KeybindsIgnoreKeyState = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix IC2 keybinds using hardware key state instead of KeyBinding state, preventing other mods from suppressing keys [default: true]";
              };
              fixIc2KeybindsInGuis = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix IC2 Keybinds activating in GUIs [default: true]";
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
              fixIc2TinCan = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix IC2 filled tin cans not running logic on both client and server [default: true]";
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
              fixInstantHandItemTextureSwitch = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix instant item texture switch when switching an item in hand with different NBT [default: true]";
              };
              fixInvalidPistonCrashes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fixes pistons with metadata over 5 from crashing worlds when powered. [default: true]";
              };
              fixInventorySyncLag = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix inventory sync lag: prevents client to check recipes on empty slots. Particularly fixes lag when trying to eat food when full. [default: true]";
              };
              fixItemFrameDupe = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix vanilla item frame duplication. [default: true]";
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
              fixKeybindCategorySorting = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix crash in the controls menu when two keybind categories share the same localized name [default: true]";
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
              fixModlistEntries = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix broken modlist entries due to wrong mcmod.info files [default: true]";
              };
              fixMorpheusWaking = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix not properly waking players if not everyone is sleeping [default: true]";
              };
              fixMultipleEnchantGlint = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix the enchant glint being applied multiple times for items with multiple render passes [default: true]";
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
              fixNetherSeedPlantBlockNull = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix ItemNetherSeed.getPlant method to return an actual Block instead of null [default: true]";
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
              fixPotionEffectAlphaTest = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix potion effect panel rendering glitched when certain items are held on the cursor (Forge GL state bug) [default: true]";
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
              fixRconThreading = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix RCON Threading by forcing it to run on the main thread [default: true]";
              };
              fixResetRainAndThunder = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix resetRainAndThunder (called when sleeping) setting rain and thunder timers to 0, which can cause immediate rain on world load if saved at that moment [default: true]";
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
              fixSaveFileWrittenToExistingDirectory = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Minecraft creating new world in folders that already exists [default: true]";
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
              fixThaumcraftEE3Check = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix check for EE3 item in Thaumcraft to prevent issues on modern Java. [default: true]";
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
                description = "Fix time commands with Galacticraft [default: true]";
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
              fixVanillaIOOBERenderDistance = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Vanilla IOOBE when rendering chunks at a distance larger than 16 [default: true]";
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
              fixVillagerTradingDesync = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix Villagers only updating out-of-stock state after reopening GUI [default: true]";
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
              fixWitcheryDemonShiftClick = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent the Witchery Demon's trading menu from opening when shift-clicking.
This allows for some item interactions that are otherwise impossible,
such as capturing the Demon in an EnderIO Soul Vial. [default: true]";
              };
              fixWitcheryEid = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix EndlessIds incompatibility with Witchery [default: true]";
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
              fixWorldGenLiquidsRecursion = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent recursive immediate block updates during WorldGenLiquids spring generation [default: true]";
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
              lotrLanguageHelperDefault = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set lotr updateLangFiles to false by default, as it is incompatible with the Gradle cache (breaking dev environments) and very rarely needed [default: true]";
              };
              maintainSlimeHealth = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix slimes resetting their health to maximum when being loaded from NBT (world reload, dimension change, etc.) [default: true]";
              };
              maxNetworkNbtSizeLimit = lib.mkOption {
                type = lib.types.int;
                default = 268435456;
                description = "The maximum NBT size limit in bytes when received as a network packet, the vanilla value is 2097152 (2 MiB). [range: 1024 ~ 1073741824, default: 268435456]";
              };
              minLootingIsZero = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Sets a minimum of 0 for Looting. Negative values still exist, but are treated as 0 for most purposes. Fixes crashes when killing mobs with negative looting, if you somehow manage to achieve it. [default: true]";
              };
              movedTooQuicklyThreshold = lib.mkOption {
                type = lib.types.float;
                default = 100.0;
                description = "Override the server-side 'moved too quickly' speed check threshold.
Vanilla value is 100.0 (squared distance per tick, i.e. 10 blocks/tick in a single axis).
Increase this if fast-movement items like GraviChestplate + ThaumicBoots trigger the check.
A value of 200.0 accommodates ~14 blocks/tick and covers known modded items.
Set to a very large number (e.g. 1.7976931348623157E308) to effectively disable the check.
Values below 100.0 are ignored and the vanilla default is used instead. [range: 4.9E-324 ~ 1.7976931348623157E308, default: 100.0]";
              };
              noPauseGuiClipboard = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Don't pause the game when using the Bibliocraft clipboard GUI [default: true]";
              };
              onlyLoadLanguagesOnce = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Only load languages once per File instead of once per Mod [default: true]";
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
              preventChunkLoadingFromBlockUpdates = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[Game Breaking Config] Prevents block and entity updates from loading unloaded chunks.
This is very likely to break some behaviors in game in favor of better TPS stability.
This is intended for server owners facing TPS issues. If you play singleplayer just be
sure all your infrastructure is properly chunk loaded. If you are still facing TPS issues
make a CPU profile and we'll try to patch the mod causing it.
DO NOT report any bugs if you have this enabled.
Disable the setting and see if the bug still happens before reporting anything [default: false]";
              };
              preventFireImmuneUndeadFlicker = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent Zombies & Skeletons from flickering with fire when exposed to the sun while immune to fire (in particular, Wither Skeletons) [default: true]";
              };
              preventFluidGridCrash = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent ClassCastException on forming invalid Thermal Dynamic fluid grid [default: true]";
              };
              preventMouseCenteringOnEscInGUIs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent moving mouse cursor to the center when pressing Esc in GUIs [default: true]";
              };
              preventThermalDynamicsNASE = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent crash with Thermal Dynamics from Negative Array Exceptions from item duct transfers [default: true]";
              };
              raiseMissingItemsFPS = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Raise FPS limit in the FML missing items screen (or any other FML StartupQuery). [default: true]";
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
              removeInvalidChunkEntites = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Remove invalid Entities in chunks. [default: true]";
              };
              removeUpdateChecks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Remove old/stale/outdated update checks. [default: true]";
              };
              returnTravellersGearItems = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Return items placed in Traveller's Gear slots after the mod is removed when players log in.
Sends messages to the log that start with \"[Hodgepodge]: [TG Recovery]\".
Removes players from the TG items file after returning items. Deletes it if it's empty.
Automatically disables itself on servers after deleting the TG items file.
Clients leave it on to allow for joining multiple SP worlds with TG items. [default: true]";
              };
              squashBedErrorMessage = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stop \"You can only sleep at night\" message filling the chat [default: true]";
              };
              syncItemThrower = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Synchonize from server to client the thrower and pickup delay of an item entity [default: true]";
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
              updateClientDifficultyOnServer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Updates the difficulty on every connected client when the difficulty of the server changes via /difficulty or the difficulty button. [default: true]";
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
              witherSkeletonSpecialName = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes Wither Skeletons not appear as just \"Skeleton\" in death messages and WAILA. [default: true]";
              };
            };
          };
        };
        general = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
            };
          };
        };
        memory = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              allocs = lib.mkOption {
                default = { };
                type = lib.types.submodule {
                  options = {
                    cacheAdvancedModels = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Caches the advanced Model renderers to speedup loading and avoid wasting memory with duplicate models [default: true]";
                    };
                    clearFMLTextureErrors = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Clear FML Texture Errors to free memory [default: true]";
                    };
                    deduplicateASMDataTableStrings = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Reduces the RAM usage of the ASMDataTable by interning the Strings [default: false]";
                    };
                    fixWitcheryEnumValuesSpam = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Stops witchery from spamming Enum#values() [default: true]";
                    };
                    internResourceLocationDomain = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Reduce the memory usage from resource location domain strings [default: false]";
                    };
                    internUniqueIdentifierModid = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Reduce the memory usage from unique identifier modid strings [default: false]";
                    };
                  };
                };
              };
              leaks = lib.mkOption {
                default = { };
                type = lib.types.submodule {
                  options = {
                    fixBibliocraftTESRWorldLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix memory leaks in bibliocraft's tile entity renderers [default: true]";
                    };
                    fixCoFHWorldLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix CoFH WorldServer leak in main mod class [default: true]";
                    };
                    fixEnchantmentHelperLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix Enchantment Helper leaking world instance when leaving world [default: true]";
                    };
                    fixEntityRendererItemRendererLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix ItemRenderer keeping a reference to the last rendered item when leaving a world [default: true]";
                    };
                    fixEventBusMemoryLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix EventBus keeping object references after unregistering event handlers. [default: true]";
                    };
                    fixForgePlayerFactoryLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix forge's FakePlayerFactory leaking the world instance [default: true]";
                    };
                    fixIC2BlockReactorLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix IC2 block reactor leaking world instance when leaving world [default: true]";
                    };
                    fixIC2TESRleak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix IC2 TESR leaking the world instance [default: true]";
                    };
                    fixMinecraftServerLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Clears the reference to the minecraft server once it has stopped [default: true]";
                    };
                    fixNetHandlerClientWorldLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix NetHandlerClient leaking world instance when leaving world [default: true]";
                    };
                    fixNetworkChannelsMemoryLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix memory leak caused by FML network channels attributes [default: true]";
                    };
                    fixPlayerControllerWorldLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix PlayerController leaking world instance when leaving world [default: true]";
                    };
                    fixPointedEntityLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix PointedEntity leaking world instance when leaving world [default: true]";
                    };
                    fixRedstoneTorchWorldLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix redstone torch leaking world [default: true]";
                    };
                    fixRenderBlocksWorldLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix RenderBlocks static singleton leaking world instance when leaving world [default: true]";
                    };
                    fixRenderFallingBlockLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix Render Falling Block leaking world instance when leaving world [default: true]";
                    };
                    fixRenderManagerWorldLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix RenderManager leaking world instance when leaving world [default: true]";
                    };
                    fixRenderersWorldLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix EffectRenderer and RenderGlobal leaking world instance when leaving world [default: true]";
                    };
                    fixServerCommandHandlerLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix memory leak caused by minecraft's commandBase keeping a static reference to the server command handler [default: true]";
                    };
                    fixSkinManagerLeakingClientWorld = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix skin manager leaking client world [default: true]";
                    };
                    fixTileEntityRendererWorldLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix TileEntityRenderer leaking world instance when leaving world [default: true]";
                    };
                    fixWorldMapStorageLeak = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix World static map storage leaking the server world [default: true]";
                    };
                    fixWorldServerLeakingUnloadedEntities = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Fix WorldServer leaking entities when no players are present in a dimension [default: true]";
                    };
                  };
                };
              };
            };
          };
        };
        sound = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              defaultAttenuationModel = lib.mkOption {
                type = lib.types.str;
                default = "ATTENUATION_ROLLOFF";
                description = "Attenuation model to use if not specified. Attenuation is how a source's volume fades with distance.
ATTENUATION_NONE: Global identifier for no attenuation. Attenuation is how a source's volume fades with distance. When there is no attenuation, a source's volume remains constant regardless of distance.
ATTENUATION_ROLLOFF: Global identifier for rolloff attenuation. Rolloff attenuation is a realistic attenuation model, which uses a rolloff factor to determine how quickly a source fades with distance. A smaller rolloff factor will fade at a further distance, and a rolloff factor of 0 will never fade. NOTE: In OpenAL, rolloff attenuation only works for monotone sounds.
ATTENUATION_LINEAR: Global identifier for linear attenuation. Linear attenuation is less realistic than rolloff attenuation, but it allows the user to specify a maximum \"fade distance\" where a source's volume becomes zero.
Possible values: [ATTENUATION_NONE, ATTENUATION_ROLLOFF, ATTENUATION_LINEAR]
[default: ATTENUATION_ROLLOFF]";
              };
              defaultFadeDistance = lib.mkOption {
                type = lib.types.str;
                default = "1000.0";
                description = "Default value to use for fade distance if not specified. [range: 1.4E-45 ~ 3.4028235E38, default: 1000.0]";
              };
              defaultRolloffFactor = lib.mkOption {
                type = lib.types.str;
                default = "0.03";
                description = "Default value to use for the rolloff factor if not specified. [range: 1.4E-45 ~ 3.4028235E38, default: 0.03]";
              };
              dopplerFactor = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
                description = "Value to use for the Doppler factor, for determining Doppler scale. [range: 1.4E-45 ~ 3.4028235E38, default: 0.0]";
              };
              dopplerVelocity = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "Value to use for the Doppler velocity. [range: 1.4E-45 ~ 3.4028235E38, default: 1.0]";
              };
              downmixExclusions = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "button"
                  "click"
                  "/gui"
                  "menu"
                  "typing"
                  "page"
                ];
                description = "Sounds whose path contains any of these are never downmixed, so interface sounds keep their stereo.
Matched case-insensitively against 'domain:path', e.g. 'gregtech:sounds/buttonup.ogg'.
Only used by downmixStereoSounds. spatializeStereoSounds needs no list because it decides per playback from the attenuation model.
Broad patterns can also match world sounds; those stay stereo and cannot be positioned by the downmix fallback. [default: [button], [click], [/gui], [menu], [typing], [page]]";
              };
              downmixStereoSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Downmix non-streaming stereo OGG sounds to mono, halving their decoded PCM size and allowing positional audio.
Non-streaming is used as a proxy for positional, so rare non-positional effects may also be downmixed. Streaming sounds, normally music and records, are unaffected.
Ignored for sounds handled by spatializeStereoSounds. Takes full effect after 'Reload Sounds' or a restart. [default: true]";
              };
              environmentalReverb = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Add environmental reverb to positional sounds based on how enclosed the listener is. Requires OpenAL EFX, available in the bundled Java 8 and lwjgl3ify backends.
Surroundings are estimated by sampling 12 directions up to 20 blocks four times per second.
Takes full effect after 'Reload Sounds' or a restart. [default: false]";
              };
              fileChunkSize = lib.mkOption {
                type = lib.types.int;
                default = 1048576;
                description = "Size of each chunk used by non-streaming codecs that honor it. OGG uses streamingBufferSize to keep decode copying bounded. [range: -2147483648 ~ 2147483647, default: 1048576]";
              };
              hrtf = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
                description = "Binaural 3D audio for headphones (HRTF): lets you hear whether a sound is above, below, in front or behind you, instead of just left/right.
Designed for headphones; speakers may sound hollow or coloured. DEFAULT leaves it to OpenAL's device configuration, ON forces it, OFF forces it off.
Requires lwjgl3ify; ignored on Java 8.
Possible values: [DEFAULT, ON, OFF]
[default: DEFAULT]";
              };
              maxFileSize = lib.mkOption {
                type = lib.types.int;
                default = 268435456;
                description = "Maximum decoded size of a non-streaming sound. OGG decoding stops at this limit on a complete PCM frame. Streamed sounds are unaffected. [range: -2147483648 ~ 2147483647, default: 268435456]";
              };
              numberNormalChannels = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "Maximum number of normal (non-streaming) channels available for simultaneous sound effects.
OpenAL Soft defaults to 256 sources unless overridden. If fewer are available, Paulscode creates as many channels as it can.
Takes effect after 'Reload Sounds' in the sound options, or a restart. [range: -2147483648 ~ 2147483647, default: 64]";
              };
              numberStreamingBuffers = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Number of buffers used for each streaming source. Slow codecs may require this number to be greater than 2 to prevent audio skipping during playback. [range: -2147483648 ~ 2147483647, default: 3]";
              };
              numberStreamingChannels = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "Maximum number of streaming channels: music, records, and other streamed audio playing at once.
Takes effect after 'Reload Sounds' in the sound options, or a restart. [range: -2147483648 ~ 2147483647, default: 8]";
              };
              outputLimiter = lib.mkOption {
                type = lib.types.str;
                default = "DEFAULT";
                description = "Protects the final output mix from clipping by reducing gain when its combined level exceeds the device range.
It reacts to signal level, not the number of playing sounds, and does not limit sound or channel count.
DEFAULT leaves it to OpenAL, ON forces it, OFF disables it. Requires lwjgl3ify; ignored on Java 8.
Possible values: [DEFAULT, ON, OFF]
[default: DEFAULT]";
              };
              overrideMIDISynthesizer = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "MIDI device to try using as the Synthesizer. May be the full name or part of the name. If this String is empty, the default Synthesizer will be used, or one of the common alternate synthesizers if the default Synthesizer is unavailable. [default: ]";
              };
              releaseDecodedSoundData = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Discard the Java-heap PCM copy after a non-streaming sound is uploaded to OpenAL, removing one of the two cached decoded copies.
Turn off only if you suspect it of causing missing or corrupted sounds. Takes full effect after 'Reload Sounds' or a restart. [default: true]";
              };
              reverbStrength = lib.mkOption {
                type = lib.types.str;
                default = "0.3";
                description = "How wet the reverb gets in a fully enclosed space. Lower is subtler.
Only used when environmentalReverb is on. [range: 0.0 ~ 1.0, default: 0.3]";
              };
              spatializeStereoSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Let OpenAL position stereo sounds that use distance attenuation without converting them to mono. This preserves the stereo PCM but uses roughly twice the buffer memory of mono.
Requires lwjgl3ify and AL_SOFT_source_spatialize; otherwise downmixStereoSounds can provide the fallback.
Takes full effect after 'Reload Sounds' or a restart. [default: true]";
              };
              streamQueueFormatsMatch = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables a transition-speed optimization by assuming all sounds in each streaming source's queue will have exactly the same format once decoded (including channels, sample rate, and sample size). This is an advanced setting which should only be changed by experienced developers.
NOTE: I have not checked if this is even true for vanilla. Changing this setting will most likely break things. [default: false]";
              };
              streamingBufferSize = lib.mkOption {
                type = lib.types.int;
                default = 131072;
                description = "Number of bytes to load at a time when streaming. [range: -2147483648 ~ 2147483647, default: 131072]";
              };
            };
          };
        };
        speedups = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              amortizeChunkGenOverruns = lib.mkOption {
                type = lib.types.str;
                default = "DedicatedServerOnly";
                description = "When to amortize chunk generation overruns by tracking time debt and skipping generation until the debt is paid down. Smooths out server tick times when single chunks exceed the time budget. DedicatedServerOnly enables on multiplayer servers but not singleplayer/LAN. [Requires throttleChunkGeneration]
Possible values: [Always, DedicatedServerOnly, Never]
[default: DedicatedServerOnly]";
              };
              asyncBatchedNBTParsing = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Parse batched tile entity NBT asynchronously on the client [default: true]";
              };
              asyncIconLoading = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Load texture map icons on multiple threads [default: false]";
              };
              batchDescriptionBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "Tile Entity Packet Batching Blacklist (Fully Qualified Class Names, Does not require restart) [default: ]";
              };
              batchDescriptionPacketsCode = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Batch Tile Entity Description S35PacketUpdateTileEntity Packets (Enables Code, Does not require restart) [default: true]";
              };
              batchDescriptionPacketsMixins = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Batch Tile Entity Description S35PacketUpdateTileEntity Packets (Enables Mixins, Requires Restart) [default: true]";
              };
              chunkCompressionLevel = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Compression level for chunk saving. -1=default, 0=none, 1=fastest, 9=smallest. [range: -1 ~ 9, default: -1]";
              };
              chunkGenBudgetMs = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Time budget in milliseconds for chunk generation per tick. Actual budget is min(this, remaining tick time to 50ms). Generation is skipped when recent operations suggest the budget would be exceeded. 0 = no time limit (count-based only). [Requires throttleChunkGeneration] [range: 0 ~ 50, default: 20]";
              };
              cullDistantItemFrameContents = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Skip rendering item frame contents farther than 64 blocks and entire frames farther than 96 blocks [default: true]";
              };
              fastBlockLookup = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Accelerate Block.getBlockById() and Block.getIdFromBlock(). [default: true]";
              };
              fastChunkHandling = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Removes hard caps on chunk sending and unloading speed. Experimental and probably incompatible with hybrid servers! [default: false]";
              };
              fastIntCache = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Rewrites internal cache methods to be safer and faster. Experimental, use at your own risk! [default: false]";
              };
              fastItemEntityPhysics = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Improves the performance of items significantly by not checking collisions against other entities for them. (Adapted from FalseTweaks) [default: true]";
              };
              fastRandom = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Replaces uses of java.util.Random with a faster version, skipping atomic operations. [default: true]";
              };
              forcePopulateAgeTicks = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Ticks before a visible chunk hole is force-processed regardless of budget. Only applies to chunks within view distance of a player. 0 = disabled. [range: 0 ~ 1200, default: 100]";
              };
              limitMobSpawningToViewDistance = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Limit mob spawning to the view distance [default: true]";
              };
              maxChunkGenPerPlayerPerTick = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Maximum deferred chunk generations per player per tick. Higher values fill terrain faster but increase per-tick lag from worldgen. [Requires throttleChunkGeneration] [range: 1 ~ 20, default: 4]";
              };
              maxSendSpeed = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "The maximum speed of chunkloading per player, in chunks/tick. High values may overload clients! Only active with fastChunkHandling.
For reference: Vanilla is 5, or 100 chunks/sec. At 32 render distance = 4225 chunks, loading the world would take 42.25 seconds. [range: 5 ~ 2147483647, default: 50]";
              };
              maxUnloadSpeed = lib.mkOption {
                type = lib.types.int;
                default = 220;
                description = "The maximum speed of chunk unloading, in chunks/tick. High values may overload servers! Only active with fastChunkHandling.
For reference: Vanilla is 100, or 2000 chunks/sec. At 32 render distance = 4225 chunks, unloading the world would take 2.1125 seconds. [range: 100 ~ 2147483647, default: 220]";
              };
              optimizeASMDataTable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimize ASMDataTable getAnnotationsFor for faster startup [default: true]";
              };
              optimizeJarDiscovererRegexOverhead = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Reduce regex overhead when scanning jar entries for class files during FML mod discovery [default: true]";
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
              optimizeWavefrontObjectModelLoading = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Reduce regex overhead when loading object models [default: true]";
              };
              poolZlibInstances = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Pool Inflater/Deflater instances for NBT compression to reduce native cleanup overhead [default: true]";
              };
              preventEntityChunkLoading = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevent entity ticks and random ticks from triggering chunk generation. Missing chunks return empty air blocks during blocked phases; the scheduler loads them shortly after. [Requires throttleChunkGeneration] [default: true]";
              };
              preventLoadingChunksWhenLiquidsFlow = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents flowing liquids from loading chunks [default: true]";
              };
              preventLoadingChunksWhenPathfinding = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents Vanilla entities from loading chunks when pathfinding [default: true]";
              };
              preventLoadingChunksWhenTickingBlocks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents Vanilla blocks from loading chunks when ticking
Cocoa, Crop, Fire, Grass, Vine, Farmland, Mushroom, Mycelium, Sapling, Stem, Torch [default: true]";
              };
              removeExtraIconLoad = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Remove icon loading on texture map init [default: false]";
              };
              replaceVoxelMapReflection = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Replace reflection in VoxelMap to directly access the fields instead. [default: true]";
              };
              skipSpawningWithPendingLight = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Skip mob spawning in chunks with pending lighting updates (requires Supernova) [default: true]";
              };
              skipUselessFallingBlockTicks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Skip scheduling falling block ticks when the block below is solid [default: true]";
              };
              speedupBOPBiomeDecoration = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Cache allocations in BOP biome decoration to avoid per-chunk object creation and reflection [default: true]";
              };
              speedupBOPEntityPixie = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use fast atan2 approximation for BOP Pixie entity yaw calculation [default: true]";
              };
              speedupBOPFogHandling = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speedup biome fog rendering in BiomesOPlenty [default: true]";
              };
              speedupChunkCompression = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimize chunk compression with reused deflater and batched writes [default: true]";
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
              speedupChunkUnload = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Optimized chunk unloading with fastutil collections and batched removal [default: true]";
              };
              speedupIC2ReactorSize = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speedup IC2 reactor size computation [default: true]";
              };
              speedupLeafDecay = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "BFS leaf decay with early exit on nearby logs, replacing vanilla's full scan [default: true]";
              };
              speedupPendingTickLookup = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Spatial index for pending block updates, accelerates chunk saving and unloading [default: true]";
              };
              speedupRemoveFormatting = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speed up the vanilla method to remove formatting codes [default: true]";
              };
              speedupThaumGetInfusionRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Speedup ThaumcraftApi#getInfusionRecipes [default: true]";
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
              throttleChunkGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Spread chunk generation across ticks to reduce server stalls when players move through ungenerated terrain.  [default: true]";
              };
              unboxMapGen = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Replaces a boxed primitive map in MapGenStructure with the fastutil equivalent, to reduce allocations. [default: true]";
              };
            };
          };
        };
        tweaks = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              addBOPLavenderToBoneMealPool = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add BOP lavenders to the bone meal pool in lavender fields [default: true]";
              };
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
              addTimeGet = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Adds the 'get' subcommand to /time to query the current time [default: false]";
              };
              addToggleDebugMessage = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add a debug message in the chat when toggling vanilla debug options [default: true]";
              };
              allowEatingFoodInCreative = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows players in Creative to eat food. [default: true]";
              };
              anvilMaxLevel = lib.mkOption {
                type = lib.types.int;
                default = 2147483647;
                description = "The max amount of XP levels an anvil recipe can use. [range: -2147483648 ~ 2147483647, default: 40]";
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
              betterModList = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Better ModList [default: true]";
              };
              changeCacheFileExtension = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Changes the file extension of VoxelMap's cache files from .zip to .data to stop the TechnicLauncher from deleting them when updating [default: true]";
              };
              changeSprintCategory = lib.mkOption {
                type = lib.types.str;
                default = "true";
                description = "Moves the sprint keybind to the movement category [default: true]";
              };
              chatLength = lib.mkOption {
                type = lib.types.int;
                default = 8191;
                description = "Amount of chat lines kept (Vanilla: 100) [range: 100 ~ 32767, default: 8191]";
              };
              cleanChatLogs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Removes the color codes from the chat logs [default: true]";
              };
              compactChat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Compacts identical consecutive chat messages together [default: true]";
              };
              configurableMusicDelay = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Override the vanilla delay between in-game music tracks using musicDelayMinSeconds/musicDelayMaxSeconds. [default: true]";
              };
              creativeTabLocalizationOverrides = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow creative tab gui title color via localization key [default: true]";
              };
              defaultLanPort = lib.mkOption {
                type = lib.types.int;
                default = 25565;
                description = "Specify default LAN port to open an integrated server on. Set to 0 to always open the server on an automatically allocated port. [range: 0 ~ 65535, default: 25565]";
              };
              defaultModSort = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Controls the default sorting on the mod list GUI.
0 - Default sort (load order)
1 - A to Z sort
2 - Z to A sort [range: 0 ~ 2, default: 1]";
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
              disableVoidFog = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Removes all void fog.
0 = keep void fog
1 = disable for DEFAULT worldtype only
2 = disable for all world types [range: 0 ~ 2, default: 1]";
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
              enableTextFieldCtrlShortcuts = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use CTRL (CMD on MacOS) to COPY / PASTE / SELECT ALL / CUT in text fields (Chat, NEI, Server IP etc.), fixes these shortcuts not working with some keyboard layouts [default: true]";
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
                default = [
                  "TConstruct:Smeltery:32767"
                  "TConstruct:SmelteryNether:32767"
                  "gregtech:gt.blockmachines:32767"
                  "gregtech:gt.blockcasings:32767"
                  "gregtech:gt.blockcasings2:32767"
                  "gregtech:gt.blockcasings3:32767"
                  "gregtech:gt.blockcasings4:32767"
                  "gregtech:gt.blockcasings5:32767"
                  "gregtech:gt.blockcasings8:32767"
                  "gregtech:gt.blockcasings9:32767"
                  "gregtech:gt.blockcasings10:32767"
                  "gregtech:gt.blockcasings11:32767"
                ];
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
                default = [
                  "Mob"
                  "Monster"
                ];
                description = "No stats will be registered for these enties (e.g. because another mod already adds them) [default: [Mob], [Monster]]";
              };
              extraUtilitiesEnderQuarryOverride = lib.mkOption {
                type = lib.types.int;
                default = 200000000;
                description = "Ender Quarry RF Storage Override (ExU default value: 10000000) (0 to use default value) [range: 0 ~ 2147483647, default: 0]";
              };
              f1ShowHand = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable extra F1 toggle to hide GUI but keep rendering hand [default: false]";
              };
              fadeNightVision = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Replaces night vision expiry effect with a fade-out effect [default: true]";
              };
              fadeNightVisionDuration = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "Night vision fade-out duration (in ticks) [range: -2147483648 ~ 2147483647, default: 50]";
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
              hideCrosshairInGui = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stops rendering the crosshair when a GUI screen (e.g. an inventory) is open [default: true]";
              };
              hideCrosshairInThirdPerson = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stops rendering the crosshair when you are playing in third person [default: true]";
              };
              hideDeprecatedIdNotice = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Remove the notice about numeric ID deprecation that appears when a command uses them [default: true]";
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
              hideTextureErrors = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Hides the texture errors in the log. [default: true]";
              };
              hungerGameRule = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add a gamerule to disable hunger [default: true]";
              };
              ic2CellWithContainer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Give IC2 cells containers like GregTech cells do [default: false]";
              };
              ic2DispenserITNT = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow Dispensers to dispense IC2 ITNT. [default: true]";
              };
              ic2SeedMaxStackSize = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "IC2 seed max stack size [range: 1 ~ 64, default: 64]";
              };
              improveCofhBreakBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Improve CoFH's breakBlock method [default: true]";
              };
              improveMfrBlockBreaker = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Improves MineFactory Reloaded breaker block to support other mods manipulating its drops [default: true]";
              };
              improveMfrBlockSmasher = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Improves MineFactory Reloaded smasher block to support other mods manipulating its drops [default: true]";
              };
              improvedRedstoneWireHitbox = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add a accurate hitbox to the redstone wire [default: true]";
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
              localizeForgeModOptionsButton = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Translate Forge's Mod Options button in the pause menu [default: true]";
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
              maxHoldF3CForCopy = lib.mkOption {
                type = lib.types.int;
                default = 500;
                description = "Max hold time for F3+C to copy player location instead of causing a crash. Set to 0 to disable this. [range: 0 ~ 1000, default: 500]";
              };
              modernPickBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds pick block functionality to survival mode [default: true]";
              };
              moreReadableIntCacheSize = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes the int cache size more readable [default: true]";
              };
              musicDelayMaxSeconds = lib.mkOption {
                type = lib.types.int;
                default = 300;
                description = "Maximum delay between in-game music tracks, in seconds. 1.7.10 GAME: 1200. Modern GAME: 300. Clamped to >= musicDelayMinSeconds at use time. [range: 0 ~ 3600, default: 300]";
              };
              musicDelayMinSeconds = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Minimum delay between in-game music tracks, in seconds. 1.7.10 GAME: 600. Modern GAME: 5. Only applies to long-form music types (game/creative/nether/end), not menu/credits. [range: 0 ~ 3600, default: 5]";
              };
              netherPortalRatio = lib.mkOption {
                type = lib.types.float;
                default = 8.0;
                description = "Nether portal coordinate conversion ratio (Vanilla: 8.0). Controls how Overworld and Nether coordinates are scaled when traveling through portals [range: 0.125 ~ 64.0, default: 8.0]";
              };
              particleLimit = lib.mkOption {
                type = lib.types.int;
                default = 8000;
                description = "Particle limit (Vanilla: 4000) [range: 4000 ~ 16000, default: 8000]";
              };
              preventMPSEnergyTransferEU = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Prevents ModularPowerSuits from charging and draining EU energy from other non-MPS items in inventory [default: false]";
              };
              preventMPSEnergyTransferME = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Prevents ModularPowerSuits from charging and draining ME energy from other non-MPS items in inventory [default: false]";
              };
              preventMPSEnergyTransferRF = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Prevents ModularPowerSuits from charging and draining RF energy from other non-MPS items in inventory [default: false]";
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
              removeBOPDonatorEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Remove the BOP donator effect which blocks the main thread when starting the game [default: true]";
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
              saveMineshaftData = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Save Mineshaft data (Requires threadedWorldDataSaving for changes to take effect)
Might cause small worldgen issues if disabled; equivalent to removing the file on each boot if disabled [default: true]";
              };
              showInventoryEffectIcons = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show potion effect icons in inventory screens [default: true]";
              };
              signInputIgnoresFormatCodes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Sign input counts visible characters only, ignoring color format codes like &RRGGBB [default: true]";
              };
              simulationDistance = lib.mkOption {
                type = lib.types.int;
                default = 32;
                description = "Simulation distance (needs addSimulationDistance_WIP to be active) [range: -2147483648 ~ 2147483647, default: 32]";
              };
              skipEmptySounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Skips playing empty sounds. [default: true]";
              };
              sortEntityStats = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Sort Mob stats lexicographically (Requires addModEntityStats) [default: true]";
              };
              soundEnhancementsButton = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds a button in the sounds menu for Hodgepodge's sound enhancements [default: true]";
              };
              stringPoolMode = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "String pooling mode (0 = Java intern, 1 = Guava strong interner, 2 = Guava weak interner) [range: 0 ~ 2, default: 1]";
              };
              synchronizeIC2Reactors = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Synchronize IC2 reactors to the world tick time, allowing for tick-perfect automation. [default: false]";
              };
              texturedScrollbar = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use a custom textured scrollbar [default: true]";
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
              witchPotionMetadata = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix the metadata of potions dropped and thrown by witches. [default: true]";
              };
            };
          };
        };
      };
    };
  };
}
