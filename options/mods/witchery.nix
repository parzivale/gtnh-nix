{lib, ...}: {
  witchery = lib.mkOption {
    description = "witchery configuration (./config/witchery.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/witchery.cfg";
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
              AddSmeltingForAllSaplingsToWoodAsh = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowBiomeModificationRituals = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowChatMasquerading = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowCovenWitchVisits = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowDeathItemRecoveryRite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowDeathsHoodToFreezeVictims = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowGoddessStatueRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              AllowHellOnEarthFires = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowInterModBlockBreakEvents = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowModArsMagica2 = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowModForestry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowModIntegration = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowModMineFactoryReloaded = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowModMystcraft = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowModNEI = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowModThaumcraft = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowModTreecapitator = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowNameplateMasquerading = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowPlayerToPlayerWolfInfection = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowStakingVampires = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowVampireQuests = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowVampireRitual = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowVampireWerewolfHybrids = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowVoidBrambleRecipe = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AllowVolatilityPotionBlockDamage = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ApothecaryVillagerID = lib.mkOption {
                type = lib.types.int;
                default = 2435;
              };
              BranchGlyphSet = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              CovenWitchSpawnWeight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              CreeperHeartsExplodeWithDamageWhenEaten = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DecurseDirectedEnabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              DecurseDirectedProtectRadius = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
              DecurseTeleportPullEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DecurseTeleportPullProtectRadius = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
              DiseaseBlockRemovalChance = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              DoubleFumeFilterChance = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              DreamDimensionID = lib.mkOption {
                type = lib.types.int;
                default = 55;
              };
              GUIOnLeft = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GenerateApothecaries = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GenerateBookShops = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GenerateCovens = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GenerateHobgoblinHuts = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GenerateShacks = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GenerateWickerMen = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GenerateWitchHuts = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              HUDShowVampireTargetBloodText = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              HellhoundSpawnWeight = lib.mkOption {
                type = lib.types.int;
                default = 50;
              };
              HobgoblinDespawnBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              HobgoblinGodSpawnChance = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              HobgoblinSpawnChance = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              HobgoblinSpawnWeight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              MantrapOpacity = lib.mkOption {
                type = lib.types.str;
                default = "0.3";
              };
              MirrorDimensionID = lib.mkOption {
                type = lib.types.int;
                default = 70;
              };
              MutandisAdditionalBlocks = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "witchery:glintweed,0" "tallgrass,2" ];
              };
              NaturesPowerReplaceableBlocks = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "mycelium" ];
              };
              NewFairestOfThemAllSpawnChance = lib.mkOption {
                type = lib.types.str;
                default = "0.01";
              };
              PercentageOfPlayersSleepingForBuff = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              PotionStartID = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
              Render3dGlintEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              RenderHuntsmanGlintEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              RespectOtherDeathChestMods = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              RestrictPoppetShelvesToVanillaAndSpiritDimensions = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              RestrictTaglockCollectionForOPs = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              RestrictTaglockCollectionOnNonPVPServers = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              RiteOfEclipseCooldownInSecs = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              ShrinkMirrorWorld = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              SpiritSpawnWeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              StrawmanSpawnerRules = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "Zombie" "Zombie" "Skeleton" ];
              };
              TormentDimensionID = lib.mkOption {
                type = lib.types.int;
                default = 56;
              };
              TownBiomeForestAllowed = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TownBiomeHillsAllowed = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TownBiomeJungleAllowed = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              TownBiomeMesaAllowed = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TownBiomeMountainAllowed = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TownBiomePlainsAllowed = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TownBiomeSandyAllowed = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TownBiomeSnowyAllowed = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TownBiomeWastelandAllowed = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TownBlacksmithClusterGroups = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              TownBlacksmithClusterMax = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              TownBlacksmithClusterMin = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              TownBlacksmithClusterWeight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              TownBookshopAllowedBooks = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "book" "witchery:ingredient,46" "witchery:ingredient,47" "witchery:ingredient,48" "witchery:ingredient,49" "witchery:ingredient,81" "witchery:ingredient,106" "witchery:ingredient,107" "witchery:ingredient,127" "witchery:bookbiomes2" "witchery:cauldronbook" "Thaumcraft:ItemThaumonomicon" "TConstruct:manualBook" "TConstruct:manualBook,1" "TConstruct:manualBook,2" "TConstruct:manualBook,3" ];
              };
              TownChurchClusterGroups = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              TownChurchClusterMax = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              TownChurchClusterMin = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              TownChurchClusterWeight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              TownDoubleFieldClusterGroups = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              TownDoubleFieldClusterMax = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              TownDoubleFieldClusterMin = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              TownDoubleFieldClusterWeight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              TownGardenHouseClusterGroups = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              TownGardenHouseClusterMax = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              TownGardenHouseClusterMin = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              TownGardenHouseClusterWeight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              TownGuardTowerClusterGroups = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              TownGuardTowerClusterMax = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              TownGuardTowerClusterMin = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              TownGuardTowerClusterWeight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              TownHallClusterGroups = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              TownHallClusterMax = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              TownHallClusterMin = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              TownHallClusterWeight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              TownHouse3ClusterGroups = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              TownHouse3ClusterMax = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              TownHouse3ClusterMin = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              TownHouse3ClusterWeight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              TownHouseClusterGroups = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              TownHouseClusterMax = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              TownHouseClusterMin = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              TownHouseClusterWeight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              TownKeepMode = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              TownKeepWeight = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              TownSingleFieldClusterGroups = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              TownSingleFieldClusterMax = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              TownSingleFieldClusterMin = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              TownSingleFieldClusterWeight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              TownWallMode = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              TownWallWeight = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              TownWoodHutClusterGroups = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              TownWoodHutClusterMax = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              TownWoodHutClusterMin = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              TownWoodHutClusterWeight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              TownZombieAttackReductionMode = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              VampireDeathItemKeepAliveMins = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              VampireHunterSpawnChance = lib.mkOption {
                type = lib.types.str;
                default = "0.01";
              };
              WorldGenFrequency = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              WorldGenInTwilightForest = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        potions = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "witchery:potion.absorbmagic" = lib.mkOption {
                type = lib.types.int;
                default = 45;
              };
              "witchery:potion.allergydark" = lib.mkOption {
                type = lib.types.int;
                default = 46;
              };
              "witchery:potion.allergysun" = lib.mkOption {
                type = lib.types.int;
                default = 47;
              };
              "witchery:potion.attractprojectiles" = lib.mkOption {
                type = lib.types.int;
                default = 48;
              };
              "witchery:potion.brewingexpertise" = lib.mkOption {
                type = lib.types.int;
                default = 49;
              };
              "witchery:potion.chilled" = lib.mkOption {
                type = lib.types.int;
                default = 50;
              };
              "witchery:potion.colorful" = lib.mkOption {
                type = lib.types.int;
                default = 51;
              };
              "witchery:potion.diseased" = lib.mkOption {
                type = lib.types.int;
                default = 52;
              };
              "witchery:potion.doublejump" = lib.mkOption {
                type = lib.types.int;
                default = 53;
              };
              "witchery:potion.enderinhibition" = lib.mkOption {
                type = lib.types.int;
                default = 54;
              };
              "witchery:potion.enslaved" = lib.mkOption {
                type = lib.types.int;
                default = 55;
              };
              "witchery:potion.featherfall" = lib.mkOption {
                type = lib.types.int;
                default = 56;
              };
              "witchery:potion.feelnopain" = lib.mkOption {
                type = lib.types.int;
                default = 57;
              };
              "witchery:potion.floating" = lib.mkOption {
                type = lib.types.int;
                default = 58;
              };
              "witchery:potion.fortune" = lib.mkOption {
                type = lib.types.int;
                default = 59;
              };
              "witchery:potion.gasmask" = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              "witchery:potion.grotesque" = lib.mkOption {
                type = lib.types.int;
                default = 61;
              };
              "witchery:potion.hellishaura" = lib.mkOption {
                type = lib.types.int;
                default = 62;
              };
              "witchery:potion.illfitting" = lib.mkOption {
                type = lib.types.int;
                default = 63;
              };
              "witchery:potion.insane" = lib.mkOption {
                type = lib.types.int;
                default = 64;
              };
              "witchery:potion.keepeffects" = lib.mkOption {
                type = lib.types.int;
                default = 65;
              };
              "witchery:potion.keepinventory" = lib.mkOption {
                type = lib.types.int;
                default = 66;
              };
              "witchery:potion.love" = lib.mkOption {
                type = lib.types.int;
                default = 67;
              };
              "witchery:potion.mortalcoil" = lib.mkOption {
                type = lib.types.int;
                default = 68;
              };
              "witchery:potion.overheating" = lib.mkOption {
                type = lib.types.int;
                default = 69;
              };
              "witchery:potion.paralysed" = lib.mkOption {
                type = lib.types.int;
                default = 70;
              };
              "witchery:potion.poisonweapons" = lib.mkOption {
                type = lib.types.int;
                default = 71;
              };
              "witchery:potion.queasy" = lib.mkOption {
                type = lib.types.int;
                default = 72;
              };
              "witchery:potion.reflectdamage" = lib.mkOption {
                type = lib.types.int;
                default = 73;
              };
              "witchery:potion.reflectprojectiles" = lib.mkOption {
                type = lib.types.int;
                default = 74;
              };
              "witchery:potion.reincarnate" = lib.mkOption {
                type = lib.types.int;
                default = 75;
              };
              "witchery:potion.repellattacker" = lib.mkOption {
                type = lib.types.int;
                default = 76;
              };
              "witchery:potion.resizing" = lib.mkOption {
                type = lib.types.int;
                default = 77;
              };
              "witchery:potion.sinking" = lib.mkOption {
                type = lib.types.int;
                default = 78;
              };
              "witchery:potion.snowtrail" = lib.mkOption {
                type = lib.types.int;
                default = 79;
              };
              "witchery:potion.spiked" = lib.mkOption {
                type = lib.types.int;
                default = 80;
              };
              "witchery:potion.sprouting" = lib.mkOption {
                type = lib.types.int;
                default = 81;
              };
              "witchery:potion.stoutbelly" = lib.mkOption {
                type = lib.types.int;
                default = 82;
              };
              "witchery:potion.swimming" = lib.mkOption {
                type = lib.types.int;
                default = 83;
              };
              "witchery:potion.volatility" = lib.mkOption {
                type = lib.types.int;
                default = 91;
              };
              "witchery:potion.wakingnightmare" = lib.mkOption {
                type = lib.types.int;
                default = 92;
              };
              "witchery:potion.wolfsbane" = lib.mkOption {
                type = lib.types.int;
                default = 93;
              };
              "witchery:potion.worship" = lib.mkOption {
                type = lib.types.int;
                default = 94;
              };
              "witchery:potion.wrappedinvine" = lib.mkOption {
                type = lib.types.int;
                default = 95;
              };
            };
          };
        };
      };
    };
  };
}
