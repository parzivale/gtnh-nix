{lib, ...}: {
  EnderIO = lib.mkOption {
    description = "EnderIO configuration (./config/enderio/EnderIO.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/enderio/EnderIO.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "advanced settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              perInterfacePowerTrackingEnabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable per tick sampling on individual power inputs and outputs. This allows slightly more detailed messages from the RF Reader but has a negative impact on server performance.";
              };
            };
          };
        };
        "aesthetic settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              combustionGeneratorUseOpaqueModel = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to true: fluid will not be shown in combustion generator tanks. Improves FPS.";
              };
              conduitScale = lib.mkOption {
                type = lib.types.float;
                default = 0.6;
                description = "Valid values are between 0-1, smallest conduits at 0, largest at 1. In SMP, all clients must be using the same value as the server.";
              };
              useAlternateTransceiverModel = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Use TheKazador's alternative model for the Dimensional Transceiver";
              };
              useCombustionGenModel = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If set to true: WIP Combustion Generator model will be used";
              };
            };
          };
        };
        "anchor settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              travelAnchorCooldown = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "Number of ticks cooldown between activations (1 sec = 20 ticks)";
              };
              travelAnchorMaxDistance = lib.mkOption {
                type = lib.types.int;
                default = 512;
                description = "Maximum number of blocks that can be traveled from one travel anchor to another.";
              };
              travelAnchorSkipWarning = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Travel Anchors send a chat warning when skipping inaccessible anchors";
              };
              travelAnchorSneak = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add sneak as an option to activate travel anchors";
              };
            };
          };
        };
        "autocrafter settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              crafterRfPerCraft = lib.mkOption {
                type = lib.types.int;
                default = 4000;
                description = "RF used per autocrafted recipe";
              };
            };
          };
        };
        "dark steel" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              darkSteelAnvilDamageChance = lib.mkOption {
                type = lib.types.float;
                default = 0.024000000208616257;
                description = "Chance that the dark steel anvil will take damage after repairing something.";
              };
              darkSteelApiaristArmorCost = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Number of levels required for the Apiarist Armor upgrade.";
              };
              darkSteelAxeEffeciencyBoostWhenPowered = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
                description = "The increase in efficiency when powered.";
              };
              darkSteelAxePowerUsePerDamagePoint = lib.mkOption {
                type = lib.types.int;
                default = 750;
                description = "Power use (RF) per damage/durability point avoided.";
              };
              darkSteelAxeSpeedPenaltyMultiHarvest = lib.mkOption {
                type = lib.types.float;
                default = 4.0;
                description = "How much slower shift-harvesting logs is.";
              };
              darkSteelBootsJumpModifier = lib.mkOption {
                type = lib.types.float;
                default = 1.5;
                description = "Jump height modifier applied when jumping with Dark Steel Boots equipped";
              };
              darkSteelBootsJumpPowerCost = lib.mkOption {
                type = lib.types.int;
                default = 150;
                description = "Base amount of power used per jump (RF) dark steel boots. The second jump in a 'double jump' uses 2x this etc";
              };
              darkSteelDrainPowerFromInventory = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, dark steel armor will drain power stored (RF) in power containers in the players inventory.";
              };
              darkSteelFallDistanceCost = lib.mkOption {
                type = lib.types.int;
                default = 75;
                description = "Amount of power used (RF) per block height of fall distance damage negated.";
              };
              darkSteelGliderCost = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Number of levels required for the 'Glider' upgrade.";
              };
              darkSteelGliderHorizontalSpeed = lib.mkOption {
                type = lib.types.float;
                default = 0.03;
                description = "Horizontal movement speed modifier when gliding.";
              };
              darkSteelGliderVerticalSpeed = lib.mkOption {
                type = lib.types.float;
                default = -0.05;
                description = "Rate of altitude loss when gliding.";
              };
              darkSteelGliderVerticalSpeedSprinting = lib.mkOption {
                type = lib.types.float;
                default = -0.15;
                description = "Rate of altitude loss when sprinting and gliding.";
              };
              darkSteelGogglesOfRevealingCost = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Number of levels required for the Goggles of Revealing upgrade.";
              };
              darkSteelJumpOneCost = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Number of levels required for the 'Jump 1' upgrade.";
              };
              darkSteelJumpThreeCost = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Number of levels required for the 'Jump 3' upgrade.";
              };
              darkSteelJumpTwoCost = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "Number of levels required for the 'Jump 2' upgrade.";
              };
              darkSteelLadderSpeedBoost = lib.mkOption {
                type = lib.types.float;
                default = 0.05999999865889549;
                description = "Speed boost, in blocks per tick, that the DS ladder gives over the vanilla ladder.";
              };
              darkSteelNightVisionCost = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Number of levels required for the 'Night Vision' upgrade.";
              };
              darkSteelPickApplyObsidianEffeciencyAtHardess = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
                description = "If set to a value > 0, the obsidian speed and power use will be used for all blocks with hardness >= to this value.";
              };
              darkSteelPickAxeUsePerDamagePointMultiHarvest = lib.mkOption {
                type = lib.types.int;
                default = 1500;
                description = "Power use (RF) per damage/durability point avoided when shift-harvesting multiple logs";
              };
              darkSteelPickEffeciencyBoostWhenPowered = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
                description = "The increase in efficiency when powered.";
              };
              darkSteelPickEffeciencyObsidian = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "The efficiency when breaking obsidian with a powered Dark Pickaxe.";
              };
              darkSteelPickMinesTiCArdite = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When true the dark steel pick will be able to mine TiC Ardite and Cobalt [default: true]";
              };
              darkSteelPickPowerUseObsidian = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "The amount of power (RF) used to break an obsidian block.";
              };
              darkSteelPickPowerUsePerDamagePoint = lib.mkOption {
                type = lib.types.int;
                default = 750;
                description = "Power use (RF) per damage/durability point avoided.";
              };
              darkSteelPowerDamgeAbsorptionRatios = lib.mkOption {
                type = lib.types.listOf lib.types.float;
                default = [ 0.5 0.6 0.7 0.85 0.95 ];
                description = "A list of the amount of durability damage absorbed when items are powered. In order of upgrade level. 1=100% so items take no durability damage when powered.";
              };
              darkSteelPowerStorage = lib.mkOption {
                type = lib.types.int;
                default = 100000;
                description = "Amount of power stored (RF) per crystal in the armor items recipe.";
              };
              darkSteelPowerStorageBase = lib.mkOption {
                type = lib.types.int;
                default = 100000;
                description = "Base amount of power stored by dark steel items.";
              };
              darkSteelPowerStorageLevelFour = lib.mkOption {
                type = lib.types.int;
                default = 2500000;
                description = "Amount of power stored by dark steel items with a level 4 upgrade.";
              };
              darkSteelPowerStorageLevelOne = lib.mkOption {
                type = lib.types.int;
                default = 150000;
                description = "Amount of power stored by dark steel items with a level 1 upgrade.";
              };
              darkSteelPowerStorageLevelThree = lib.mkOption {
                type = lib.types.int;
                default = 1000000;
                description = "Amount of power stored by dark steel items with a level 3 upgrade.";
              };
              darkSteelPowerStorageLevelTwo = lib.mkOption {
                type = lib.types.int;
                default = 250000;
                description = "Amount of power stored by dark steel items with a level 2 upgrade.";
              };
              darkSteelShearsBlockAreaBoostWhenPowered = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The increase in effected area (radius) when powered and used on blocks.";
              };
              darkSteelShearsDurabilityFactor = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "How much more durable as vanilla shears they are.";
              };
              darkSteelShearsEffeciencyBoostWhenPowered = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
                description = "The increase in efficiency when powered.";
              };
              darkSteelShearsEntityAreaBoostWhenPowered = lib.mkOption {
                type = lib.types.float;
                default = 3.0;
                description = "The increase in effected area (radius) when powered and used on sheep.";
              };
              darkSteelShearsPowerUsePerDamagePoint = lib.mkOption {
                type = lib.types.int;
                default = 250;
                description = "Power use (RF) per damage/durability point avoided.";
              };
              darkSteelSolarChargeOthers = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If enabled allows the solar upgrade to charge non-darksteel armors that the player is wearing.";
              };
              darkSteelSolarOneCost = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "Cost in XP levels of the Solar I upgrade.";
              };
              darkSteelSolarOneGen = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "RF per SECOND generated by the Solar I upgrade. Split between all equipped DS armors.";
              };
              darkSteelSolarTwoCost = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "Cost in XP levels of the Solar II upgrade.";
              };
              darkSteelSolarTwoGen = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "RF per SECOND generated by the Solar II upgrade. Split between all equipped DS armors.";
              };
              darkSteelSoundLocatorCost = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Number of levels required for the 'Sound Locator' upgrade.";
              };
              darkSteelSoundLocatorLifespan = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "Number of ticks the 'Sound Locator' icons are displayed for.";
              };
              darkSteelSoundLocatorRange = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "Range of the 'Sound Locator' upgrade.";
              };
              darkSteelSpeedOneCost = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Number of levels required for the 'Speed 1' upgrade.";
              };
              darkSteelSpeedOneSprintModifier = lib.mkOption {
                type = lib.types.float;
                default = 0.10000000149011612;
                description = "Speed modifier applied when walking in the Dark Steel Boots with Speed I.";
              };
              darkSteelSpeedOneWalkModifier = lib.mkOption {
                type = lib.types.float;
                default = 0.10000000149011612;
                description = "Speed modifier applied when walking in the Dark Steel Boots with Speed I.";
              };
              darkSteelSpeedThreeCost = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Number of levels required for the 'Speed 3' upgrade.";
              };
              darkSteelSpeedThreeSprintMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
                description = "Speed modifier applied when walking in the Dark Steel Boots with Speed I.";
              };
              darkSteelSpeedThreeWalkMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 0.30000001192092896;
                description = "Speed modifier applied when walking in the Dark Steel Boots with Speed I.";
              };
              darkSteelSpeedTwoCost = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "Number of levels required for the 'Speed 2' upgrade.";
              };
              darkSteelSpeedTwoSprintMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 0.30000001192092896;
                description = "Speed modifier applied when walking in the Dark Steel Boots with Speed I.";
              };
              darkSteelSpeedTwoWalkMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 0.20000000298023224;
                description = "Speed modifier applied when walking in the Dark Steel Boots with Speed I.";
              };
              darkSteelSpoonCost = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Number of levels required for the 'Spoon' upgrade.";
              };
              darkSteelSprintPowerCost = lib.mkOption {
                type = lib.types.int;
                default = 83;
                description = "Amount of power stored (RF) per block walked when wearing the dark steel boots.";
              };
              darkSteelSwimCost = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Number of levels required for the 'Swim' upgrade.";
              };
              darkSteelSwordEnderPearlDropChance = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "The chance that an ender pearl will be dropped when using a dark steel sword (0 = no chance, 1 = 100% chance)";
              };
              darkSteelSwordEnderPearlDropChancePerLooting = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
                description = "The chance for each looting level that an additional ender pearl will be dropped when using a dark steel sword (0 = no chance, 1 = 100% chance)";
              };
              darkSteelSwordPowerUsePerHit = lib.mkOption {
                type = lib.types.int;
                default = 750;
                description = "The amount of power (RF) used per hit.";
              };
              darkSteelSwordSkullChance = lib.mkOption {
                type = lib.types.float;
                default = 0.10000000149011612;
                description = "The base chance that a skull will be dropped when using a powered dark steel sword (0 = no chance, 1 = 100% chance)";
              };
              darkSteelSwordSkullLootingModifier = lib.mkOption {
                type = lib.types.float;
                default = 0.07500000298023224;
                description = "The chance per looting level that a skull will be dropped when using a powered dark steel sword (0 = no chance, 1 = 100% chance)";
              };
              darkSteelSwordWitherSkullChance = lib.mkOption {
                type = lib.types.float;
                default = 0.05000000074505806;
                description = "The base chance that a wither skull will be dropped when using a powered dark steel sword (0 = no chance, 1 = 100% chance)";
              };
              darkSteelSwordWitherSkullLootingModifie = lib.mkOption {
                type = lib.types.float;
                default = 0.05000000074505806;
                description = "The chance per looting level that a wither skull will be dropped when using a powered dark steel sword (0 = no chance, 1 = 100% chance)";
              };
              darkSteelTrackmanGogglesCost = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Number of levels required for the Trackman's Goggles upgrade.";
              };
              darkSteelTravelCost = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "Number of levels required for the 'Travel' upgrade.";
              };
              darkSteelUpgradePowerFourCost = lib.mkOption {
                type = lib.types.int;
                default = 25;
                description = "Number of levels required for the 'Power 4' upgrade.";
              };
              darkSteelUpgradePowerOneCost = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Number of levels required for the 'Power 1.";
              };
              darkSteelUpgradePowerThreeCost = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Number of levels required for the 'Power 3' upgrade.";
              };
              darkSteelUpgradePowerTwoCost = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "Number of levels required for the 'Power 2.";
              };
              darkSteelUpgradeVibrantCost = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Number of levels required for the 'Empowered.";
              };
              darkSteelWalkPowerCost = lib.mkOption {
                type = lib.types.int;
                default = 83;
                description = "Amount of power stored (RF) per block walked when wearing the dark steel boots.";
              };
              fakePlayerSkullChance = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
                description = "The ratio of skull drops when a mob is killed by a 'FakePlayer', such as Killer Joe. When set to 0 no skulls will drop, at 1 the rate of skull drops is not modified";
              };
              shouldSlotZeroWrap = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should the dark steel placement, when in the first (0th) slot, place the item in the last slot. If false, will place what's in the second slot.";
              };
              ticCleaverSkullDropChance = lib.mkOption {
                type = lib.types.float;
                default = 0.10000000149011612;
                description = "The base chance that an Enderman Skull will be dropped when using TiC Cleaver";
              };
              vanillaSwordSkullChance = lib.mkOption {
                type = lib.types.float;
                default = 0.05000000074505806;
                description = "The base chance that a skull will be dropped when using a non dark steel sword (0 = no chance, 1 = 100% chance)";
              };
            };
          };
        };
        "efficiency settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              advancedFluidConduitExtractRate = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Number of liters per tick extracted by pressurized fluid conduits auto extracting";
              };
              advancedFluidConduitMaxIoRate = lib.mkOption {
                type = lib.types.int;
                default = 400;
                description = "Number of liters per tick that can pass through a single connection to an pressurized fluid conduit.";
              };
              crystallineEnderFluidConduitExtractRate = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "Number of liters per tick extracted by crystalline ender fluid conduits auto extracting";
              };
              crystallineEnderFluidConduitMaxIoRate = lib.mkOption {
                type = lib.types.int;
                default = 4000;
                description = "Number of liters per tick that can pass through a single connection to a crystalline ender fluid conduit.";
              };
              crystallinePinkSlimeEnderFluidConduitExtractRate = lib.mkOption {
                type = lib.types.int;
                default = 2000;
                description = "Number of liters per tick extracted by crystalline pink slime ender fluid conduits auto extracting";
              };
              crystallinePinkSlimeEnderFluidConduitMaxIoRate = lib.mkOption {
                type = lib.types.int;
                default = 8000;
                description = "Number of liters per tick that can pass through a single connection to a crystalline pink slime ender fluid conduit.";
              };
              enderFluidConduitExtractRate = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "Number of liters per tick extracted by ender fluid conduits auto extracting";
              };
              enderFluidConduitMaxIoRate = lib.mkOption {
                type = lib.types.int;
                default = 800;
                description = "Number of liters per tick that can pass through a single connection to an ender fluid conduit.";
              };
              enderIoRange = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "Range accessible (in blocks) when using the Ender IO.";
              };
              fluidConduitExtractRate = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "Number of liters per tick extracted by a fluid conduits auto extracting";
              };
              fluidConduitMaxIoRate = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "Number of liters per tick that can pass through a single connection to a fluid conduit.";
              };
              gasConduitExtractRate = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "Amount of gas per tick extracted by gas conduits auto extracting";
              };
              gasConduitMaxIoRate = lib.mkOption {
                type = lib.types.int;
                default = 800;
                description = "Amount of gas per tick that can pass through a single connection to a gas conduit.";
              };
              itemConduitUsePhyscialDistance = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, 'line of sight' distance rather than conduit path distance is used to calculate priorities.";
              };
              melodicEnderFluidConduitExtractRate = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "Number of liters per tick extracted by melodic ender fluid conduits auto extracting";
              };
              melodicEnderFluidConduitMaxIoRate = lib.mkOption {
                type = lib.types.int;
                default = 40000;
                description = "Number of liters per tick that can pass through a single connection to a melodic ender fluid conduit.";
              };
              stellarEnderFluidConduitExtractRate = lib.mkOption {
                type = lib.types.int;
                default = 20000;
                description = "Number of liters per tick extracted by stellar ender fluid conduits auto extracting";
              };
              stellarEnderFluidConduitMaxIoRate = lib.mkOption {
                type = lib.types.int;
                default = 80000;
                description = "Number of liters per tick that can pass through a single connection to a stellar ender fluid conduit.";
              };
              transceiverBucketTransmissionCostRF = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "The cost in RF of transporting a bucket of fluid via a Dimensional Transceiver.";
              };
              updateLightingWhenHidingFacades = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When true: correct lighting is recalculated (client side) for conduit bundles when transitioning to from being hidden behind a facade. This produces better quality rendering but can result in frame stutters when switching to/from a wrench.";
              };
              vacumChestRange = lib.mkOption {
                type = lib.types.int;
                default = 6;
                description = "The range of the vacuum chest";
              };
              wirelessChargerRange = lib.mkOption {
                type = lib.types.int;
                default = 32;
                description = "The range of the wireless charger";
              };
            };
          };
        };
        enchantments = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enchantmentSoulBoundEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If false the soul bound enchantment will not be available [default: true]";
              };
              enchantmentSoulBoundId = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "The id of the enchantment. If set to -1 the lowest unassigned id will be used.";
              };
              enchantmentSoulBoundWeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "The chance of getting this enchantment in the enchantment table";
              };
            };
          };
        };
        "farm settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              disableFarmNotifications = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable the notification text above the farm block.";
              };
              farmActionEnergyUseRF = lib.mkOption {
                type = lib.types.int;
                default = 500;
                description = "The amount of power used by a farm per action (eg plant, till, harvest)";
              };
              farmAxeActionEnergyUseRF = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "The amount of power used by a farm per wood block 'chopped'";
              };
              farmAxeDamageOnLeafBreak = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should axes in a farm take damage when breaking leaves?";
              };
              farmBonemealActionEnergyUseRF = lib.mkOption {
                type = lib.types.int;
                default = 160;
                description = "The amount of power used by a farm per bone meal used";
              };
              farmBonemealTryEnergyUseRF = lib.mkOption {
                type = lib.types.int;
                default = 80;
                description = "The amount of power used by a farm per bone meal try";
              };
              farmBonusSize = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The extra number of blocks a farm will extend from its center per upgrade";
              };
              farmContinuousEnergyUseRF = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "The amount of power used by a farm per tick";
              };
              farmDefaultSize = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "The number of blocks a farm will extend from its center";
              };
              farmEssenceBerriesEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This setting controls whether essence berry bushes from TiC can be harvested by the farm.";
              };
              farmHarvestJungleWhenCocoa = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If this is enabled the farm will harvest jungle wood even if it has cocoa beans in its inventory.";
              };
              farmHoes = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "minecraft:wooden_hoe" "minecraft:stone_hoe" "minecraft:iron_hoe" "minecraft:diamond_hoe" "minecraft:golden_hoe" "MekanismTools:ObsidianHoe" "MekanismTools:LapisLazuliHoe" "MekanismTools:OsmiumHoe" "MekanismTools:BronzeHoe" "MekanismTools:GlowstoneHoe" "MekanismTools:SteelHoe" "Steamcraft:hoeBrass" "Steamcraft:hoeGildedGold" "Railcraft:tool.steel.hoe" "TConstruct:mattock" "appliedenergistics2:item.ToolCertusQuartzHoe" "appliedenergistics2:item.ToolNetherQuartzHoe" "ProjRed|Exploration:projectred.exploration.hoeruby" "ProjRed|Exploration:projectred.exploration.hoesapphire" "ProjRed|Exploration:projectred.exploration.hoeperidot" "magicalcrops:magicalcrops_AccioHoe" "magicalcrops:magicalcrops_CrucioHoe" "magicalcrops:magicalcrops_ImperioHoe" "BiomesOPlenty:hoeAmethyst" "BiomesOPlenty:hoeMud" "Eln:Eln.Copper Hoe" "Thaumcraft:ItemHoeThaumium" "Thaumcraft:ItemHoeElemental" "Thaumcraft:ItemHoeVoid" "ThermalFoundation:tool.hoeInvar" "ThermalFoundation:tool.hoeCopper" "ThermalFoundation:tool.hoeBronze" "ThermalFoundation:tool.hoeSilver" "ThermalFoundation:tool.hoeElectrum" "ThermalFoundation:tool.hoeTin" "ThermalFoundation:tool.hoeLead" "ThermalFoundation:tool.hoeNickel" "ThermalFoundation:tool.hoePlatinum" "TwilightForest:item.steeleafHoe" "TwilightForest:item.ironwoodHoe" "IC2:itemToolBronzeHoe" ];
                description = "Use this to specify items that can be hoes in the farming station. Use the registry name (eg. modid:name).";
              };
              farmManaBeansEnabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "This setting controls whether mana beans from Thaumcraft can be harvested by the farm.";
              };
              farmParticlesCount = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "The number of particles produces by farm action.";
              };
              farmParticlesMaxRange = lib.mkOption {
                type = lib.types.float;
                default = 64.0;
                description = "The max range of the farm action particles.";
              };
              farmSaplingReserveAmount = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "The amount of saplings the farm has to have in reserve to switch to shearing all leaves. If there are less saplings in store, it will only shear part the leaves and break the others for spalings. Set this to 0 to always shear all leaves.";
              };
              farmToolTakeDamageChance = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "The chance that a tool in the farm will take damage.";
              };
            };
          };
        };
        "fluid settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              nutrientFluidFoodBoostDelay = lib.mkOption {
                type = lib.types.float;
                default = 400.0;
                description = "The delay in ticks between when nutrient distillation boosts your food value.";
              };
            };
          };
        };
        inventorypanel = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              extractCostPerItem = lib.mkOption {
                type = lib.types.str;
                default = "12.0";
                description = "Internal power used per item extracted (not a stack of items) [range: 0.0 ~ 10.0, default: 12.0]";
              };
              extractCostPerOperation = lib.mkOption {
                type = lib.types.str;
                default = "32.0";
                description = "Internal power used per extract operation (independent of stack size) [range: 0.0 ~ 10000.0, default: 32.0]";
              };
              inventoryPanelFree = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, the inv panel will not accept fluids and will be active permanently. [default: false]";
              };
              powerPerMB = lib.mkOption {
                type = lib.types.str;
                default = "800.0";
                description = "Internal power generated per mB. The default of 800/mB matches the RF generation of the Zombie generator. A panel tries to refill only once every second - setting this value too low slows down the scanning speed. [range: 1.0 ~ 10000.0, default: 800.0]";
              };
              scanCostPerSlot = lib.mkOption {
                type = lib.types.str;
                default = "0.1";
                description = "Internal power used for scanning a slot [range: 0.0 ~ 10.0, default: 0.1]";
              };
            };
          };
        };
        "item enabling" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableMEConduits = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows ME conduits. Only has an effect with AE2 installed. [default: true]";
              };
              enableOCConduits = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows OC conduits. Only has an effect with OpenComputers installed. [default: true]";
              };
              enableOCConduitsAnimatedTexture = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use the animated texture for OC conduits. [default: true]";
              };
              gasConduitEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, gas conduits will be enabled if the Mekanism Gas API is found. False to forcibly disable. [default: true]";
              };
              isGasConduitEnabled = lib.mkOption {
                type = lib.types.str;
                default = "auto";
                description = "Deprecated option. Use boolean \"gasConduitsEnabled\" below. [default: auto]";
              };
              photovoltaicCellEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false: Photovoltaic Cells will not be craftable.";
              };
              reinforcedObsidianEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When set to false reinforced obsidian is not craftable.";
              };
              reservoirEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false reservoirs will not be craftable.";
              };
              transceiverEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false: Dimensional Transceivers will not be craftable.";
              };
              travelAnchorEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When set to false: the travel anchor will not be craftable.";
              };
              travelStaffBlinkThroughClearBlocksEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If travelStaffBlinkThroughSolidBlocksEnabled is set to false and this is true: the travel staff can only be used to blink through transparent or partial blocks (e.g. torches). If both are false: only air blocks may be teleported through.";
              };
              travelStaffBlinkThroughUnbreakableBlocksEnabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Allows the travel staff to blink through unbreakable blocks such as warded blocks and bedrock.";
              };
            };
          };
        };
        "killer joe settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              killerJoeAttackHeight = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
                description = "The reach of attacks above and bellow Joe.";
              };
              killerJoeAttackLength = lib.mkOption {
                type = lib.types.float;
                default = 4.0;
                description = "The reach of attacks in front of Joe.";
              };
              killerJoeAttackWidth = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
                description = "The reach of attacks to each side of Joe.";
              };
              killerJoeHooverXpLength = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
                description = "The distance from which XP will be gathered to each side of Joe.";
              };
              killerJoeHooverXpWidth = lib.mkOption {
                type = lib.types.float;
                default = 5.0;
                description = "The distance from which XP will be gathered in front of Joe.";
              };
              killerJoeMustSee = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set whether the Killer Joe can attack through blocks.";
              };
              killerJoeNutrientUsePerAttackMb = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "The number of millibuckets of nutrient fluid used per attack.";
              };
              killerPvPoffDisablesSwing = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set whether the Killer Joe swings even if PvP is off (that swing will do nothing unless killerPvPoffIsIgnored is enabled).";
              };
              killerPvPoffIsIgnored = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set whether the Killer Joe ignores PvP settings and always hits players (killerPvPoffDisablesSwing must be off for this to work).";
              };
            };
          };
        };
        "loot config" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              lootDarkSteel = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Adds Darksteel Ingots to loot tables [default: true]";
              };
              lootDarkSteelBoots = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Adds Darksteel Boots to loot tables [default: true]";
              };
              lootElectricSteel = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Adds Electric Steel Ingots to loot tables [default: true]";
              };
              lootEnderPearl = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Adds ender pearls to loot tables [default: true]";
              };
              lootItemConduitProbe = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Adds ItemConduitProbe to loot tables [default: true]";
              };
              lootNetherWart = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Adds nether wart to loot tables [default: true]";
              };
              lootPhasedGold = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Adds Phased Gold Ingots to loot tables [default: true]";
              };
              lootPhasedIron = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Adds Phased Iron Ingots to loot tables [default: true]";
              };
              lootQuartz = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Adds quartz to loot tables [default: true]";
              };
              lootRedstoneAlloy = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Adds Redstone Alloy Ingots to loot tables [default: true]";
              };
              lootTheEnder = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Adds The Ender to loot tables [default: true]";
              };
              lootTravelStaff = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Adds Travel Staff to loot tables [default: true]";
              };
            };
          };
        };
        "magnet settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              magnetAllowDeactivatedInBaublesSlot = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true the magnet can be put into a Baubles slot even if switched off (requires Baubles to be installed and magnetAllowInBaublesSlot to be on)";
              };
              magnetAllowInBaublesSlot = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true the magnet can be put into the 'amulet' Baubles slot (requires Baubles to be installed)";
              };
              magnetAllowInMainInventory = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true the magnet will also work in the main inventory, not just the hotbar";
              };
              magnetAllowPowerExtraction = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true the magnet can be used as a battery.";
              };
              magnetBaublesType = lib.mkOption {
                type = lib.types.str;
                default = "AMULET";
                description = "The BaublesType the magnet should be, 'AMULET', 'RING', 'BELT', or UNIVERSAL (requires Baubles to be installed and magnetAllowInBaublesSlot to be on)";
              };
              magnetBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "appliedenergistics2:item.ItemCrystalSeed" "Botania:livingrock" "Botania:manaTablet" ];
                description = "These items will not be picked up by the magnet. [default: [appliedenergistics2:item.ItemCrystalSeed], [Botania:livingrock], [Botania:manaTablet]]";
              };
              magnetMaxItems = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Maximum number of items the magnet can effect at a time. (-1 for unlimited)";
              };
              magnetPowerCapacityRF = lib.mkOption {
                type = lib.types.int;
                default = 100000;
                description = "Amount of RF power stored in a fully charged magnet";
              };
              magnetPowerUsePerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "The amount of RF power used per tick when the magnet is active";
              };
              magnetRange = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Range of the magnet in blocks.";
              };
            };
          };
        };
        misc = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              allowExternalTickSpeedup = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows machines to run faster if another mod speeds up the tickrate. Running at higher tickrates is unsupported. Disable this if you run into any kind of problem.";
              };
              clearGlassConnectToFusedQuartz = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, quite clear glass will connect textures with fused quartz. [default: false]";
              };
              clearGlassSameTexture = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, quite clear glass will use the fused quartz border texture for the block instead of the white border. [default: false]";
              };
              enableWaterFromBottles = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables emptying vanilla water bottles without breaking the bottle. In combination with a water source block this allows duping of water without cost.";
              };
              fusedQuartzExplosionResistance = lib.mkOption {
                type = lib.types.str;
                default = "20.0";
                description = "How blast resistant the three Fused Quartz blocks should be. [range: 0.0 ~ 3.4028235E38, default: 2000.0]";
              };
              killerJoeMaxXpLevel = lib.mkOption {
                type = lib.types.int;
                default = 2147483647;
                description = "Maximum level of XP the killer joe can contain.";
              };
              replaceWitherSkeletons = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Separates wither and normal skeletons into different entities, enables the powered spawner to treat them differently [EXPERIMENTAL - MAY CAUSE ISSUES WITH OTHER MODS]";
              };
              strictTPItemChecking = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, turn on strict checking of item energy checking. This might cause traveling tools from third party mods to fire fake security warnings on server side and not function correctly.";
              };
              xpJuiceName = lib.mkOption {
                type = lib.types.str;
                default = "xpjuice";
                description = "Id of liquid XP fluid (WARNING: only for users who know what they are doing - changing this id can break worlds) - this should match with OpenBlocks when installed [default: xpjuice]";
              };
              xpObeliskMaxXpLevel = lib.mkOption {
                type = lib.types.int;
                default = 2147483647;
                description = "Maximum level of XP the xp obelisk can contain.";
              };
            };
          };
        };
        "mob attractor settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              attractorPowerPerTickLevelOne = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "The RF/t  power use of a levele 1 mob attractor";
              };
              attractorPowerPerTickLevelThree = lib.mkOption {
                type = lib.types.int;
                default = 80;
                description = "The RF/t  power use of a levele 3 mob attractor";
              };
              attractorPowerPerTickLevelTwo = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "The RF/t  power use of a levele 2 mob attractor";
              };
              attractorRangeLevelOne = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "The range of the mob attractor with no upgrades";
              };
              attractorRangeLevelThree = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "The range of the mob attractor with an octadic capacitor upgrade";
              };
              attractorRangeLevelTwo = lib.mkOption {
                type = lib.types.int;
                default = 32;
                description = "The range of the mob attractor with a double layer capacitor upgrade";
              };
              spawnGuardPowerPerTickLevelOne = lib.mkOption {
                type = lib.types.int;
                default = 80;
                description = "The RF/t  power use of a levele 1 spawn guard";
              };
              spawnGuardPowerPerTickLevelThree = lib.mkOption {
                type = lib.types.int;
                default = 800;
                description = "The RF/t  power use of a levele 3 spawn guard";
              };
              spawnGuardPowerPerTickLevelTwo = lib.mkOption {
                type = lib.types.int;
                default = 300;
                description = "The RF/t  power use of a levele 2 spawn guard";
              };
              spawnGuardRangeLevelOne = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "The range of the spawn guard with no upgrades";
              };
              spawnGuardRangeLevelThree = lib.mkOption {
                type = lib.types.int;
                default = 160;
                description = "The range of the spawn guard with an octadic capacitor upgrade";
              };
              spawnGuardRangeLevelTwo = lib.mkOption {
                type = lib.types.int;
                default = 96;
                description = "The range of the spawn guard with a double layer capacitor upgrade";
              };
              spawnGuardStopAllSlimesDebug = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When true slimes wont be allowed to spawn at all. Only added to aid testing in super flat worlds. [default: false]";
              };
              spawnGuardStopAllSquidSpawning = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When true no squid will be spawned. [default: false]";
              };
            };
          };
        };
        "mob config" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              dumpMobNames = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When set to true a list of all registered mobs will be dumped to config/enderio/mobTypes.txt The names are in the format required by EIOs mob blacklists. [default: false]";
              };
            };
          };
        };
        "personal settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addDurabilityTootip = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, adds durability tooltips to tools and armor";
              };
              addFuelTooltipsToAllFluidContainers = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, the RF/t and burn time of the fuel will be displayed in all tooltips for fluid containers with fuel.";
              };
              addFurnaceFuelTootip = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, adds burn duration tooltips to furnace fuels";
              };
              addOreDictionaryTooltips = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              addRegisterdNameTooltip = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              enderIoMeAccessEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If false: you will not be able to access a ME access or crafting terminal using the Ender IO.";
              };
              machineSoundVolume = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "Volume of machine sounds.";
              };
              renderChargeBar = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, render the bar when an item has RF";
              };
              renderDurabilityBar = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, render the bar when an item is damaged";
              };
              ticBeheadingSkullModifier = lib.mkOption {
                type = lib.types.float;
                default = 0.07500000298023224;
                description = "The chance per level of Beheading that a skull will be dropped when using a TiC weapon";
              };
              useMachineSounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, machines will make sounds.";
              };
              useSneakMouseWheelYetaWrench = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, shift-mouse wheel will change the conduit display mode when the YetaWrench is equipped.";
              };
              useSneakRightClickYetaWrench = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, shift-clicking the YetaWrench on a null or non wrenchable object will change the conduit display mode.";
              };
              vanillaSwordSkullLootingModifier = lib.mkOption {
                type = lib.types.float;
                default = 0.05000000074505806;
                description = "The chance per looting level that a skull will be dropped when using a non-dark steel sword (0 = no chance, 1 = 100% chance)";
              };
              yetaWrenchOverlayMode = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "What kind of overlay to use when holding the yeta wrench 0 - Sideways scrolling in ceter of screen 1 - Vertical icon bar in bottom right 2 - Old-style group of icons in bottom right [range: 0 ~ 2, default: 0]";
              };
            };
          };
        };
        "power settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              capacitorBankMaxIoRF = lib.mkOption {
                type = lib.types.int;
                default = 5000;
                description = "The maximum IO for a single capacitor in RF/t";
              };
              capacitorBankMaxStorageRF = lib.mkOption {
                type = lib.types.int;
                default = 5000000;
                description = "The maximum storage for a single capacitor in RF";
              };
              capacitorBankTierOneMaxIoRF = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "The maximum IO for a single tier one capacitor in RF/t";
              };
              capacitorBankTierOneMaxStorageRF = lib.mkOption {
                type = lib.types.int;
                default = 1000000;
                description = "The maximum storage for a single tier one capacitor in RF";
              };
              capacitorBankTierThreeMaxIoRF = lib.mkOption {
                type = lib.types.int;
                default = 25000;
                description = "The maximum IO for a single tier three capacitor in RF/t";
              };
              capacitorBankTierThreeMaxStorageRF = lib.mkOption {
                type = lib.types.int;
                default = 25000000;
                description = "The maximum storage for a single tier three capacitor in RF";
              };
              capacitorBankTierTwoMaxIoRF = lib.mkOption {
                type = lib.types.int;
                default = 5000;
                description = "The maximum IO for a single tier two capacitor in RF/t";
              };
              capacitorBankTierTwoMaxStorageRF = lib.mkOption {
                type = lib.types.int;
                default = 5000000;
                description = "The maximum storage for a single tier two capacitor in RF";
              };
              enderGeneratorRfPerTick = lib.mkOption {
                type = lib.types.int;
                default = 360;
                description = "The amount of power generated per tick.";
              };
              enderGeneratorTicksPerMbFuel = lib.mkOption {
                type = lib.types.int;
                default = 96000;
                description = "The number of ticks one bucket of fuel lasts.";
              };
              fireWaterPowerPerCycleRF = lib.mkOption {
                type = lib.types.int;
                default = 80;
                description = "The amount of power generated per BC engine cycle. Examples: BC Oil = 30, BC Fuel = 60";
              };
              fireWaterPowerTotalBurnTime = lib.mkOption {
                type = lib.types.int;
                default = 15000;
                description = "The total burn time. Examples: BC Oil = 5000, BC Fuel = 25000";
              };
              frankenzombieGeneratorRfPerTick = lib.mkOption {
                type = lib.types.int;
                default = 120;
                description = "The amount of power generated per tick.";
              };
              frankenzombieGeneratorTicksPerMbFuel = lib.mkOption {
                type = lib.types.int;
                default = 12000;
                description = "The number of ticks one bucket of fuel lasts.";
              };
              hootchPowerPerCycleRF = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "The amount of power generated per BC engine cycle. Examples: BC Oil = 30, BC Fuel = 60";
              };
              hootchPowerTotalBurnTime = lib.mkOption {
                type = lib.types.int;
                default = 6000;
                description = "The total burn time. Examples: BC Oil = 5000, BC Fuel = 25000";
              };
              maxPhotovoltaicAdvancedOutputRF = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "Maximum output in RF/t of the Advanced Photovoltaic Panels.";
              };
              maxPhotovoltaicOutputRF = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Maximum output in RF/t of the Photovoltaic Panels.";
              };
              maxPhotovoltaicVibrantOutputRF = lib.mkOption {
                type = lib.types.int;
                default = 160;
                description = "Maximum output in RF/t of the Vibrant Photovoltaic Panels.";
              };
              painterEnergyPerTaskRF = lib.mkOption {
                type = lib.types.int;
                default = 2000;
                description = "The total amount of RF required to paint one block";
              };
              photovoltaicAdvancedCellCapacityRF = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "Maximum capacity in RF/t of the Advanced Photovoltaic Panels.";
              };
              photovoltaicCellCapacityRF = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "Maximum capacity in RF/t of the Photovoltaic Panels.";
              };
              photovoltaicVibrantCellCapacityRF = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "Maximum capacity in RF/t of the Vibrant Photovoltaic Panels.";
              };
              powerConduitCanDifferentTiersConnect = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If set to false power conduits of different tiers cannot be connected. in this case a block such as a cap. bank is needed to bridge different tiered networks [default: false]";
              };
              powerConduitOutputMJ = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When set to true power conduits will output MJ if RF is not supported [default: true]";
              };
              powerConduitTierOneRF = lib.mkOption {
                type = lib.types.int;
                default = 640;
                description = "The maximum IO for the tier 1 power conduit";
              };
              powerConduitTierThreeRF = lib.mkOption {
                type = lib.types.int;
                default = 20480;
                description = "The maximum IO for the tier 3 power conduit";
              };
              powerConduitTierTwoRF = lib.mkOption {
                type = lib.types.int;
                default = 5120;
                description = "The maximum IO for the tier 2 power conduit";
              };
              powerConduitTiersEndergy = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 20 40 80 160 320 1280 2560 10240 40960 81920 327680 2000000000 ];
                description = "The maximum IO for the endergy power conduit";
              };
              rocketFuelPowerPerCycleRF = lib.mkOption {
                type = lib.types.int;
                default = 160;
                description = "The amount of power generated per BC engine cycle. Examples: BC Oil = 3, BC Fuel = 6";
              };
              rocketFuelPowerTotalBurnTime = lib.mkOption {
                type = lib.types.int;
                default = 7000;
                description = "The total burn time. Examples: BC Oil = 5000, BC Fuel = 25000";
              };
              sliceAndSpliceLevelEightPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 80;
                description = "The number of RF/t consumed by a Slice'N'Splice with an silver capacitor upgrade.";
              };
              sliceAndSpliceLevelFivePowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 1280;
                description = "The number of RF/t consumed by a Slice'N'Splice with an melodic capacitor upgrade.";
              };
              sliceAndSpliceLevelFourPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 640;
                description = "The number of RF/t consumed by a Slice'N'Splice with an crystalline capacitor upgrade.";
              };
              sliceAndSpliceLevelNinePowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 160;
                description = "The number of RF/t consumed by a Slice'N'Splice with an endergetic capacitor upgrade.";
              };
              sliceAndSpliceLevelOnePowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 80;
                description = "The number of RF/t consumed by an unupgraded Slice'N'Splice";
              };
              sliceAndSpliceLevelSevenPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 5120;
                description = "The number of RF/t consumed by a Slice'N'Splice with an totemic capacitor upgrade.";
              };
              sliceAndSpliceLevelSixPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 2560;
                description = "The number of RF/t consumed by a Slice'N'Splice with an stellar capacitor upgrade.";
              };
              sliceAndSpliceLevelTenPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 320;
                description = "The number of RF/t consumed by a Slice'N'Splice with an endergised capacitor upgrade.";
              };
              sliceAndSpliceLevelThreePowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 320;
                description = "The number of RF/t consumed by a Slice'N'Splice with an octadic capacitor upgrade.";
              };
              sliceAndSpliceLevelTwoPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 160;
                description = "The number of RF/t consumed by a Slice'N'Splice with a double layer capacitor upgrade.";
              };
              stirlingGeneratorBaseRfPerTick = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "The amount of power generated per tick.";
              };
              stirlingGeneratorBurnTimeMultiplierT1 = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
                description = "[Deprecated]Burn time multiplier for the Stirling Generator, Tier 1 machine";
              };
              stirlingGeneratorBurnTimeMultiplierT2 = lib.mkOption {
                type = lib.types.float;
                default = 0.6666666865348816;
                description = "[Deprecated]Burn time multiplier for the Stirling Generator, Tier 2 machine";
              };
              stirlingGeneratorBurnTimeMultiplierT3 = lib.mkOption {
                type = lib.types.float;
                default = 0.6666666865348816;
                description = "[Deprecated]Burn time multiplier for the Stirling Generator, Tier 3 machine";
              };
              stirlingGeneratorBurnTimeMultipliers = lib.mkOption {
                type = lib.types.listOf lib.types.float;
                default = [ 0.5 0.6666666865348816 ];
                description = "Burn time multipliers for the Stirling Generator";
              };
              stirlingGeneratorEnergyMultiplierT1 = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "[Deprecated]Energy multiplier for the Stirling Generator, Tier 1 machine";
              };
              stirlingGeneratorEnergyMultiplierT2 = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
                description = "[Deprecated]Energy multiplier for the Stirling Generator, Tier 2 machine";
              };
              stirlingGeneratorEnergyMultiplierT3 = lib.mkOption {
                type = lib.types.float;
                default = 4.0;
                description = "[Deprecated]Energy multiplier for the Stirling Generator, Tier 3 machine";
              };
              stirlingGeneratorEnergyMultipliers = lib.mkOption {
                type = lib.types.listOf lib.types.float;
                default = [ 1.0 2.0 3.0 5.0 8.0 13.0 21.0 ];
                description = "Energy multipliers for the Stirling Generator";
              };
              transceiverEnergyLoss = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
                description = "Amount of energy lost when transferred by Dimensional Transceiver; 0 is no loss, 1 is 100% loss";
              };
              transceiverInternalBuffer = lib.mkOption {
                type = lib.types.int;
                default = 500000;
                description = "Maximum RF for the send/receive buffer. Need to be at least transceiverMaxIoRF.";
              };
              transceiverMaxIoRF = lib.mkOption {
                type = lib.types.int;
                default = 204800;
                description = "Maximum RF/t sent and received by a Dimensional Transceiver per tick. Input and output limits are not cumulative";
              };
              transceiverUpkeepCostRF = lib.mkOption {
                type = lib.types.int;
                default = 500;
                description = "Number of RF/t required to keep a Dimensional Transceiver connection open";
              };
              vatPowerUserPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Power use (RF/t) used by the vat.";
              };
              zombieGeneratorRfPerTick = lib.mkOption {
                type = lib.types.int;
                default = 80;
                description = "The amount of power generated per tick.";
              };
              zombieGeneratorTicksPerMbFuel = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "The number of ticks one bucket of fuel lasts.";
              };
              zombieGeneratorsBurnTimeMultipliers = lib.mkOption {
                type = lib.types.listOf lib.types.float;
                default = [ 0.5 0.6666666865348816 ];
                description = "Burn time multipliers for the Zombie-Type Generators";
              };
              zombieGeneratorsEnergyMultipliers = lib.mkOption {
                type = lib.types.listOf lib.types.float;
                default = [ 1.0 2.0 3.0 5.0 8.0 13.0 21.0 ];
                description = "Energy multipliers for the Zombie-Type Generators";
              };
            };
          };
        };
        "poweredspawner settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              brokenSpawnerDropChance = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "The chance a broken spawner will be dropped when a spawner is broken. 1 = 100% chance, 0 = 0% chance";
              };
              brokenSpawnerToolBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "RotaryCraft:rotarycraft_item_bedpick" ];
                description = "When a spawner is broken with these tools they will not drop a broken spawner [default: [RotaryCraft:rotarycraft_item_bedpick]]";
              };
              powerSpawnerAddSpawnerCost = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "The number of levels it costs to add a broken spawner";
              };
              poweredSpawnerDespawnTimeSeconds = lib.mkOption {
                type = lib.types.int;
                default = 120;
                description = "Number of seconds in which spawned entities are protected from despawning";
              };
              poweredSpawnerLevelEightPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 160;
                description = "RF per tick for a level 1 spawner";
              };
              poweredSpawnerLevelFivePowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 2000;
                description = "RF per tick for a level 5 spawner";
              };
              poweredSpawnerLevelFourPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 4500;
                description = "RF per tick for a level 4 spawner";
              };
              poweredSpawnerLevelNinePowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 500;
                description = "RF per tick for a level 2 spawner";
              };
              poweredSpawnerLevelOnePowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 160;
                description = "RF per tick for a level 1 (non-upgraded) spawner. See PoweredSpanerConfig_Core.json for mob type multipliers";
              };
              poweredSpawnerLevelSevenPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 500;
                description = "RF per tick for a level 7 spawner";
              };
              poweredSpawnerLevelSixPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "RF per tick for a level 6 spawner";
              };
              poweredSpawnerLevelTenPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 1500;
                description = "RF per tick for a level 3 spawner";
              };
              poweredSpawnerLevelThreePowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 1500;
                description = "RF per tick for a level 3 spawner";
              };
              poweredSpawnerLevelTwoPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 500;
                description = "RF per tick for a level 2 spawner";
              };
              poweredSpawnerMaxDelayTicks = lib.mkOption {
                type = lib.types.int;
                default = 800;
                description = "Min tick delay between spawns for a non-upgraded spawner";
              };
              poweredSpawnerMaxNearbyEntities = lib.mkOption {
                type = lib.types.int;
                default = 6;
                description = "Max number of entities in the nearby area until no more are spawned. A zero value will remove this check";
              };
              poweredSpawnerMaxPlayerDistance = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Max distance of the closest player for the spawner to be active. A zero value will remove the player check";
              };
              poweredSpawnerMaxSpawnTries = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Number of tries to find a suitable spawning location";
              };
              poweredSpawnerMinDelayTicks = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "Min tick delay between spawns for a non-upgraded spawner";
              };
              poweredSpawnerSpawnCount = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Number of entities to spawn each time";
              };
              poweredSpawnerSpawnRange = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Spawning range in X/Z";
              };
              poweredSpawnerUseVanillaSpawChecks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, regular spawn checks such as lighting level and dimension will be made before spawning mobs";
              };
            };
          };
        };
        rail = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enderRailCapSameDimensionPowerAtCrossDimensionCost = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When set to true the RF cost of sending a cart within the same dimension will be capped to the cross dimension cost [default: true]";
              };
              enderRailEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether Ender Rails are enabled [default: true]";
              };
              enderRailPowerRequireCrossDimensions = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "The amount of power required to transport a cart across dimensions";
              };
              enderRailPowerRequiredPerBlock = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "The amount of power required to teleport a cart per block in the same dimension";
              };
              enderRailTeleportPlayers = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true player in minecarts will be teleported. WARN: WIP, seems to cause a memory leak. [default: false]";
              };
              enderRailTicksBeforeForceSpawningLinkedCarts = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "The number of ticks to wait for the track to clear before force spawning the next cart in a (RailCraft) linked set";
              };
            };
          };
        };
        "recipe settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addPeacefulRecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When enabled peaceful recipes are added for soulbinder based crafting components.";
              };
              allowTileEntitiesAsPaintSource = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When enabled blocks with tile entities (e.g. machines) can be used as paint targets.";
              };
              crateSyntheticRecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Automatically create alloy smelter recipes with double and triple inputs and different slot allocations (1+1+1, 2+1, 1+2, 3 and 2) for single-input recipes.";
              };
              enchanterBaseLevelCost = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Base level cost added to all recipes in the enchanter.";
              };
              numConduitsPerRecipe = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "The number of conduits crafted per recipe.";
              };
              reinforcedObsidianUseDarkSteelBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When set to true four dark steel blocks are required instead of ingots when making reinforced obsidian.";
              };
              soulBinderRequiresEndermanSkull = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When true the Soul Binder requires an Enderman Skull to craft [default: true]";
              };
              transceiverUseEasyRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When enabled the dim trans. will use a cheaper recipe";
              };
              useAlternateBinderRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Create conduit binder in crafting table instead of furnace";
              };
              useHardRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When enabled machines cost significantly more.";
              };
              useModMetals = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true copper and tin will be used in recipes when registered in the ore dictionary";
              };
              useSteelInChassi = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When enabled machine chassis will require steel instead of iron.";
              };
            };
          };
        };
        "soul binder settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              soulBinderAttractorCystalLevels = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "The number of levels required to create an attractor crystal.";
              };
              soulBinderAttractorCystalRF = lib.mkOption {
                type = lib.types.int;
                default = 1000000;
                description = "The number of RF required to create an attractor crystal.";
              };
              soulBinderBrokenSpawnerLevels = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "The number of levels required to change the type of a broken spawner.";
              };
              soulBinderBrokenSpawnerRF = lib.mkOption {
                type = lib.types.int;
                default = 25000000;
                description = "The number of RF required to change the type of a broken spawner.";
              };
              soulBinderEnderCystalLevels = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "The number of levels required to create an ender crystal.";
              };
              soulBinderEnderCystalRF = lib.mkOption {
                type = lib.types.int;
                default = 1000000;
                description = "The number of RF required to create an ender crystal.";
              };
              soulBinderEnderRailLevels = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "The number of levels required to create an ender rail.";
              };
              soulBinderEnderRailRF = lib.mkOption {
                type = lib.types.int;
                default = 500000;
                description = "The number of RF required to create an ender rail.";
              };
              soulBinderLevelEightPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 500;
                description = "The number of RF/t consumed by a soul binder with an silver capacitor upgrade.";
              };
              soulBinderLevelFivePowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 8000;
                description = "The number of RF/t consumed by a soul binder with an melodic capacitor upgrade.";
              };
              soulBinderLevelFourPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 4000;
                description = "The number of RF/t consumed by a soul binder with an crystalline capacitor upgrade.";
              };
              soulBinderLevelNinePowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "The number of RF/t consumed by a soul binder with an endergetic capacitor upgrade.";
              };
              soulBinderLevelOnePowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 500;
                description = "The number of RF/t consumed by an unupgraded soul binder.";
              };
              soulBinderLevelSevenPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 32000;
                description = "The number of RF/t consumed by a soul binder with an totemic capacitor upgrade.";
              };
              soulBinderLevelSixPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 16000;
                description = "The number of RF/t consumed by a soul binder with an stellar capacitor upgrade.";
              };
              soulBinderLevelTenPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 2000;
                description = "The number of RF/t consumed by a soul binder with an endergised capacitor upgrade.";
              };
              soulBinderLevelThreePowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 2000;
                description = "The number of RF/t consumed by a soul binder with an octadic capacitor or a endergised upgrade.";
              };
              soulBinderLevelTwoPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "The number of RF/t consumed by a soul binder with a double layer capacitor or a endergetic capacitor upgrade.";
              };
              soulBinderMaxXPLevel = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Maximum level of XP the soul binder can contain.";
              };
              soulBinderPrecientCystalLevels = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "The number of levels required to create an precient crystal.";
              };
              soulBinderPrecientCystalRF = lib.mkOption {
                type = lib.types.int;
                default = 100000;
                description = "The number of RF required to create an precient crystal.";
              };
              soulBinderReanimationLevels = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "The number of levels required to re-animate a mob head.";
              };
              soulBinderReanimationRF = lib.mkOption {
                type = lib.types.int;
                default = 1000000;
                description = "The number of RF required to to re-animated a mob head.";
              };
              soulVesselBlackList = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "Entities listed here will can not be captured in a Soul Vial [default: ]";
              };
              soulVesselCapturesBosses = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When set to false, any mob with a 'boss bar' won't be able to be captured in the Soul Vial [default: false]";
              };
            };
          };
        };
        "staff settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              teleportStaffAction = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Sets the action for right-click with the staff of teleportation. Values: 0: Do nothing 1: Teleport to look 2: Teleport to anchor 3: Teleport to anchor, or look if no anchor (default)";
              };
              teleportStaffFailedBlinkDistance = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "Number of blocks teleported when no block is being looked at.";
              };
              teleportStaffMaxBlinkDistance = lib.mkOption {
                type = lib.types.int;
                default = 512;
                description = "Max number of blocks teleported when travelling to player look.";
              };
              teleportStaffMaxDistance = lib.mkOption {
                type = lib.types.int;
                default = 2048;
                description = "Max number of blocks teleported when travelling to a Travel Anchor.";
              };
              teleportStaffSneakAction = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Sets the action for sneak right-click with the staff of teleportation. Values: 0: Do nothing 1: Teleport to look (default) 2: Teleport to anchor 3: Teleport to anchor, or look if no anchor";
              };
              travelAnchorZoomScale = lib.mkOption {
                type = lib.types.str;
                default = "0.2";
                description = "Set the max zoomed size of a travel anchor as an aprox. percentage of screen height [range: 0.0 ~ 1.0, default: 0.2]";
              };
              travelStaffAllowInBaublesSlot = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true the travel staff can be put into Baubles slots (requires Baubles to be installed)";
              };
              travelStaffBaublesType = lib.mkOption {
                type = lib.types.str;
                default = "UNIVERSAL";
                description = "The BaublesType the Travel Staff should be, 'AMULET', 'RING', 'BELT', or 'UNIVERSAL' (requires Baubles to be installed and travelStaffAllowInBaublesSlot to be on)";
              };
              travelStaffBlinkBlackList = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "minecraft:bedrock" "Thaumcraft:blockWarded" ];
                description = "Lists the blocks that cannot be teleported through in the form 'modID:blockName' [default: [minecraft:bedrock], [Thaumcraft:blockWarded]]";
              };
              travelStaffBlinkEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false: the travel staff can not be used to shift-right click teleport, or blink.";
              };
              travelStaffBlinkPauseTicks = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Minimum number of ticks between 'blinks'. Values of 10 or less allow a limited sort of flight.";
              };
              travelStaffBlinkThroughSolidBlocksEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false: the travel staff can be used to blink through any block.";
              };
              travelStaffEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false: the travel staff will not be craftable.";
              };
              travelStaffKeybindEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false: the Travel Staff Blink keybind will not be useable. (keybind allows when staff is anywhere in inventory, might not be wanted)";
              };
              travelStaffMaxBlinkDistance = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "Max number of blocks teleported when shift clicking the staff.";
              };
              travelStaffMaxDistance = lib.mkOption {
                type = lib.types.int;
                default = 128;
                description = "Maximum number of blocks that can be traveled using the Staff of Traveling.";
              };
              travelStaffPowerPerBlockRF = lib.mkOption {
                type = lib.types.float;
                default = 250.0;
                description = "Number of RF required per block traveled using the Staff of Traveling.";
              };
              travelStaffSearchOptimize = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to true: blinking by travel staff has reduced search branch. You can now teleport onto the roof. This config is experimental, so if you encounter any strange behavior, please report to GTNH developer.";
              };
              validateTravelEventServerside = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to true: Server will validate if player actually can teleport. False will allow hacking, but also allows Staff of Traveling Keybind mod to work.";
              };
            };
          };
        };
        telepad = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              lockCoords = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, the coordinates cannot be set via the GUI, the coord selector must be used.";
              };
              lockDimension = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, the dimension cannot be set via the GUI, the coord selector must be used.";
              };
              powerCoefficient = lib.mkOption {
                type = lib.types.int;
                default = 100000;
                description = "Power for a teleport is calculated by the formula: power = [this value] * ln(0.005*distance + 1)";
              };
              powerInterdimensional = lib.mkOption {
                type = lib.types.int;
                default = 100000;
                description = "The amount of RF required for an interdimensional teleport.";
              };
              telepadPowerPerTickRF = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "The number of RF/t consumed by a telepad.";
              };
              telepadPowerStorageRF = lib.mkOption {
                type = lib.types.int;
                default = 100000;
                description = "The amount of RF a telepad can store.";
              };
            };
          };
        };
        weather = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              weatherObeliskClearFluid = lib.mkOption {
                type = lib.types.int;
                default = 20000;
                description = "The fluid required (in mB) to set the world to clear weather";
              };
              weatherObeliskRainFluid = lib.mkOption {
                type = lib.types.int;
                default = 5000;
                description = "The fluid required (in mB) to set the world to rainy weather";
              };
              weatherObeliskThunderFluid = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "The fluid required (in mB) to set the world to thundering weather";
              };
            };
          };
        };
      };
    };
  };
}
