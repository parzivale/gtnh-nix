{lib, ...}: {
  InfernalMobs = lib.mkOption {
    description = "InfernalMobs configuration (./config/InfernalMobs.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/InfernalMobs.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        entitiesalwaysinfernal = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BabyHeatscarSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              BlueSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Crystal = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityARVillager = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityAfrit = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityAirElemental = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityAlienBug = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityAlienVillager = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityAntlion = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityAntlionBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityAntlionMiniBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityArcher = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityArix = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityArmorCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityArmourStand = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityAttackBat = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBabaYaga = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBabyCaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBabyGhast = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBabySpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBanshee = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBat = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBileDemon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBird = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBlackWidow = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBlackberrySlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBlaze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBlazeBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBlindingEnderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBlindingSilverfish = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBloodSnail = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBlueberrySlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBossBlaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBossDragon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBossEnderDemon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBotFly = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBoulderFist = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBrainyZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBrownMooshroom = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBrutishPigZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBrutishSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBrutishZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityButterfly = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCaramelSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCentipede = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityChameleonTick = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityChaosGuardian = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityChicken = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityChiselSnowman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityChocolateCow = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityChromaticSheep = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCinder = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCinderBlaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityClink = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityConba = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityConcussionCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityConflagrationBlaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCorpse = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCovenWitch = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCow = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCrawler = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCreeperBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCrushroom = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCryptZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCrystalBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCultistCleric = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityCultistKnight = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCultistLeader = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCultistPortal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityCursedEnderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCustomDragon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDarkCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDarkMark = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDeath = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDeathCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDeathsHorse = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDemon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDesertSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDireSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDireWolf = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDirtCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDominationWitch = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDoomCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDoppelganger = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDoppleganger = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDragon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDragonfly = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDrowningCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDweller = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEarthElemental = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEldritchCrab = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEldritchGolem = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEldritchGuardian = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEldritchWarden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEmberBlaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEnderCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEnderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEnderminy = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEndermite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEndersteed = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEnt = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEpion = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEttin = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEvolvedBlaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEvolvedBossCrab = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEvolvedBossSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEvolvedBossWolf = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEvolvedColdBlaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEvolvedCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEvolvedEnderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEvolvedFireCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEvolvedFireSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEvolvedFireSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEvolvedGiantSnail = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEvolvedSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEvolvedSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEvolvedZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEye = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFaintGhast = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFakeCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFallenAngel = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFallenKnight = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFallenMount = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFamiliar = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFighterGhast = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFireAnt = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFireAntSoldier = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFireBat = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFireCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFireElemental = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFireSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFireZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFishingPigZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFishingSilverfish = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFishingZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFlyingCaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFlyingSilverfish = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFlyingSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFollower = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFox = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFriendlySpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFrostweaver = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGatlingSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGeken = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGeonach = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGhast = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGhastBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGhostSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGhoulZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGiantBrainyZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGiantPigZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGiantSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGiantSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGiantZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGlob = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGoblin = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGoblinGulg = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGoblinMog = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGoldChicken = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGolemBase = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGolemTH = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGorgomite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGrapeSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGravekeeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGravelCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGravityCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGrue = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGuardian = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGuardianPanther = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityHellfireBlaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityHellhound = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityHolyElemental = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityHornedHuntsman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityHorse = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityHorseUndead = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityHorseUndeadS = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityHungryPigZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityHungrySpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityHungryZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityHusk = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityIceDemon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityIcyEnderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityIllusionCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityIllusionSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityIllusionZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityImp = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityInfernoBlaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityInhabitedZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityIronGolem = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityJabberwock = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityJengu = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityJoltBlaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityJumpingCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityJumpingSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityJungleSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityKingGhast = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityKobold = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLavaMonster = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLavaWebSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLeech = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLemonSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLeonard = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLightningCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLightningEnderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLilith = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLobber = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLocust = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLordOfTorment = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLostSoul = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLowerGuardian = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLuggage = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLunarWolf = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMagmaCrawler = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMagmaCube = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMandrake = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityManticore = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMeatSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMedSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMercurialSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMidgeSwarm = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMindSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMindrake = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMiniBossEnderEye = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMiniBossFireFiend = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMiniCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMiniEnderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMiniGhast = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMiniMe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMinorDemonGrunt = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMinorDemonGruntEarth = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMinorDemonGruntFire = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMinorDemonGruntGuardian = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMinorDemonGruntGuardianEarth = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMinorDemonGruntGuardianFire = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMinorDemonGruntGuardianIce = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMinorDemonGruntGuardianWind = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMinorDemonGruntIce = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMinorDemonGruntWind = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMirageEnderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMirrorFace = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMobAngryEnderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMobBabyEnderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMobEnderGuardian = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMobEndermage = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMobEnderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMobFireGolem = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMobForestGhost = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMobHauntedMiner = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMobHomelandEnderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMobInfestedBat = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMobLouse = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMobParalyzedEnderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMobScorchingLens = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMobVampiricBat = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMoneySpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMooshroom = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMosquito = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMotherCaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMotherSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMummyBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityNetherHound = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityNewSnowGolem = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityNightmare = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityNinjaSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityOcelot = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityOrePig = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityOwl = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPaleSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityParasyticLouse = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPassiveCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPech = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPhantom = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPig = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPigZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPinkWither = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPixie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPlaguePigZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPlagueZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPoisonSilverfish = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPoisonSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPoisonSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPoltergeist = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPondSkater = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPorcodon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPrayingMantis = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPunchroom = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityQueenGhast = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityRabbit = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityRageWitch = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityReflection = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityReiver = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityRemobra = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityRespawnedDragon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityRobot = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityRobotVillager = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityRoc = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityRosester = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySafeTaintSheep = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityScholarChicken = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityScorpion = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityScytodes = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySeawolf = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySelfShearingSheep = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySentry = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityShade = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityShadeElemental = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityShadowsWitch = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityShambler = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySheeder = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySheep = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityShulker = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySickBlaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySilverfish = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySkeletonBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySlimeBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySlimeling = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySludgeling = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySmallEarthGolem = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySmallSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySmolderBlaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySnapper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySniperSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySnowman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySolifuge = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySolifugeSmall = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySoul = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySpectre = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySpirit = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySpitfireSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySplittingCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySpriggan = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySquid = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityStaballoyConstruct = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityStrawberrySlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityStray = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySwarm = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFAdherent = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFArmoredGiant = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFBighorn = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFBlockGoblin = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFBoar = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFBunny = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFDeathTome = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFDeer = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFFireBeetle = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFGiantMiner = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFGoblinKnightLower = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFGoblinKnightUpper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFHarbingerCube = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFHedgeSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFHelmetCrab = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFHostileWolf = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFHydra = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFHydraHead = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFIceCrystal = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFIceExploder = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFIceShooter = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFKingSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFKnightPhantom = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFKobold = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFLich = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFLichMinion = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFLoyalZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFMazeSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFMiniGhast = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFMinoshroom = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFMinotaur = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFMistWolf = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFMobileFirefly = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFMosquitoSwarm = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFNaga = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFPenguin = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFPinchBeetle = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFQuestRam = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFRaven = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFRedcap = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFRedcapSapper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFRovingCube = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFSkeletonDruid = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFSlimeBeetle = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFSnowGuardian = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFSnowQueen = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFSquirrel = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFSwarmSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFTinyBird = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFTowerBroodling = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFTowerGhast = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFTowerGolem = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFTowerTermite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFTroll = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFUrGhast = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFWinterWolf = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFWraith = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFYeti = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFYetiAlpha = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTaintChicken = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTaintCow = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTaintCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTaintPig = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTaintSheep = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTaintSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTaintSpore = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTaintSporeSwarmer = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTaintSwarm = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTaintVillager = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTaintacle = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTaintacleGiant = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTaintacleMinion = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTaintacleSmall = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTarantula = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTarantulaBaby = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTarantulaMiniboss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTentacles = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityThaumicSlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityThiefEnderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityThiefSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityToad = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityToughCaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityToughSilverfish = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityToughSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTravelingTrunk = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTreefyd = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTrent = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityUmberGolemDungeonTypes = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityUndeadWitch = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityUnholyGhast = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityVampire = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityVampirePigZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityVelvetWorm = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityVespid = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityVillageGuard = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityVillager = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityVillagerWere = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityVoltSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWasp = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWaterElemental = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWatermelonSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWebCaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWebSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWendigo = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWildfireBlaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWildsWitch = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWindWitch = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWingedFireDemon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWingedMonkey = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWisp = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWispNether = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWitch = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWitchCat = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWitchCaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWitchHunter = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWitchSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWither = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWitherCat = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWitherSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWitherWitch = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWolf = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWolfBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWolfman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityZoataur = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityZombieAnt = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityZombieVillager = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Entity_SpecialBlaze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Entity_SpecialCaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Entity_SpecialCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Entity_SpecialEnderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Entity_SpecialGhast = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Entity_SpecialPigZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Entity_SpecialSilverfish = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Entity_SpecialSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Entity_SpecialSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Entity_SpecialSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Entity_SpecialWitch = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Entity_SpecialZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              HeatscarSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              ImpEntity = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              KingBlueSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              NitroCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        entitybasehealth = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BabyHeatscarSpider = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
              };
              BlueSlime = lib.mkOption {
                type = lib.types.float;
                default = 4.0;
              };
              EntityAfrit = lib.mkOption {
                type = lib.types.float;
                default = 16.5;
              };
              EntityAntlionMiniBoss = lib.mkOption {
                type = lib.types.float;
                default = 100.0;
              };
              EntityArix = lib.mkOption {
                type = lib.types.float;
                default = 16.5;
              };
              EntityArmorCreeper = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityBabyCaveSpider = lib.mkOption {
                type = lib.types.float;
                default = 4.0;
              };
              EntityBabyGhast = lib.mkOption {
                type = lib.types.float;
                default = 11.0;
              };
              EntityBabySpider = lib.mkOption {
                type = lib.types.float;
                default = 4.0;
              };
              EntityBanshee = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityBlackWidow = lib.mkOption {
                type = lib.types.float;
                default = 15.0;
              };
              EntityBlackberrySlime = lib.mkOption {
                type = lib.types.float;
                default = 7.0;
              };
              EntityBlaze = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityBlindingEnderman = lib.mkOption {
                type = lib.types.float;
                default = 41.0;
              };
              EntityBlindingSilverfish = lib.mkOption {
                type = lib.types.float;
                default = 8.0;
              };
              EntityBloodSnail = lib.mkOption {
                type = lib.types.float;
                default = 5.0;
              };
              EntityBlueberrySlime = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
              };
              EntityBossDragon = lib.mkOption {
                type = lib.types.float;
                default = 250.0;
              };
              EntityBotFly = lib.mkOption {
                type = lib.types.float;
                default = 15.0;
              };
              EntityBrainyZombie = lib.mkOption {
                type = lib.types.float;
                default = 25.0;
              };
              EntityBrutishPigZombie = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityBrutishSkeleton = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityBrutishZombie = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityCaramelSlime = lib.mkOption {
                type = lib.types.float;
                default = 5.0;
              };
              EntityCaveSpider = lib.mkOption {
                type = lib.types.float;
                default = 24.0;
              };
              EntityCentipede = lib.mkOption {
                type = lib.types.float;
                default = 25.0;
              };
              EntityChameleonTick = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityCinder = lib.mkOption {
                type = lib.types.float;
                default = 16.5;
              };
              EntityCinderBlaze = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityClink = lib.mkOption {
                type = lib.types.float;
                default = 16.5;
              };
              EntityConcussionCreeper = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityConflagrationBlaze = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityCrawler = lib.mkOption {
                type = lib.types.float;
                default = 75.0;
              };
              EntityCreeper = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityCrushroom = lib.mkOption {
                type = lib.types.float;
                default = 80.0;
              };
              EntityCryptZombie = lib.mkOption {
                type = lib.types.float;
                default = 27.5;
              };
              EntityCultistCleric = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityCultistKnight = lib.mkOption {
                type = lib.types.float;
                default = 36.0;
              };
              EntityCultistLeader = lib.mkOption {
                type = lib.types.float;
                default = 125.0;
              };
              EntityCursedEnderman = lib.mkOption {
                type = lib.types.float;
                default = 60.0;
              };
              EntityDarkCreeper = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityDeath = lib.mkOption {
                type = lib.types.float;
                default = 1100.0;
              };
              EntityDeathCreeper = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityDesertSpider = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityDireSlime = lib.mkOption {
                type = lib.types.float;
                default = 4.0;
              };
              EntityDireWolf = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityDirtCreeper = lib.mkOption {
                type = lib.types.float;
                default = 21.0;
              };
              EntityDominationWitch = lib.mkOption {
                type = lib.types.float;
                default = 26.0;
              };
              EntityDoomCreeper = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityDragon = lib.mkOption {
                type = lib.types.float;
                default = 800.0;
              };
              EntityDragonfly = lib.mkOption {
                type = lib.types.float;
                default = 15.0;
              };
              EntityDrowningCreeper = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityDweller = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityEldritchGolem = lib.mkOption {
                type = lib.types.float;
                default = 250.0;
              };
              EntityEldritchGuardian = lib.mkOption {
                type = lib.types.float;
                default = 50.0;
              };
              EntityEldritchWarden = lib.mkOption {
                type = lib.types.float;
                default = 200.0;
              };
              EntityEmberBlaze = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityEnderCreeper = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityEnderman = lib.mkOption {
                type = lib.types.float;
                default = 80.0;
              };
              EntityEnderminy = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityEnt = lib.mkOption {
                type = lib.types.float;
                default = 16.5;
              };
              EntityEpion = lib.mkOption {
                type = lib.types.float;
                default = 11.0;
              };
              EntityEttin = lib.mkOption {
                type = lib.types.float;
                default = 33.0;
              };
              EntityEvolvedBlaze = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityEvolvedBossCrab = lib.mkOption {
                type = lib.types.float;
                default = 300.0;
              };
              EntityEvolvedColdBlaze = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityEvolvedCreeper = lib.mkOption {
                type = lib.types.float;
                default = 25.0;
              };
              EntityEvolvedEnderman = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityEvolvedFireCreeper = lib.mkOption {
                type = lib.types.float;
                default = 25.0;
              };
              EntityEvolvedFireSkeleton = lib.mkOption {
                type = lib.types.float;
                default = 25.0;
              };
              EntityEvolvedFireSpider = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityEvolvedGiantSnail = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityEvolvedSkeleton = lib.mkOption {
                type = lib.types.float;
                default = 25.0;
              };
              EntityEvolvedSpider = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityEvolvedZombie = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityFaintGhast = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
              EntityFallenKnight = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityFallenMount = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityFighterGhast = lib.mkOption {
                type = lib.types.float;
                default = 31.0;
              };
              EntityFireAnt = lib.mkOption {
                type = lib.types.float;
                default = 15.0;
              };
              EntityFireAntSoldier = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityFireBat = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
              EntityFireCreeper = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityFireSkeleton = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityFireZombie = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityFishingPigZombie = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityFishingSilverfish = lib.mkOption {
                type = lib.types.float;
                default = 8.0;
              };
              EntityFishingZombie = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityFlyingCaveSpider = lib.mkOption {
                type = lib.types.float;
                default = 12.0;
              };
              EntityFlyingSilverfish = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
              EntityFlyingSpider = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
              };
              EntityFrostweaver = lib.mkOption {
                type = lib.types.float;
                default = 66.0;
              };
              EntityGatlingSkeleton = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityGeonach = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityGhast = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
              EntityGhostSpider = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
              };
              EntityGhoulZombie = lib.mkOption {
                type = lib.types.float;
                default = 16.5;
              };
              EntityGiantBrainyZombie = lib.mkOption {
                type = lib.types.float;
                default = 60.0;
              };
              EntityGiantPigZombie = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityGiantSkeleton = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityGiantSpider = lib.mkOption {
                type = lib.types.float;
                default = 64.0;
              };
              EntityGiantZombie = lib.mkOption {
                type = lib.types.float;
                default = 80.0;
              };
              EntityGlob = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              EntityGoblinGulg = lib.mkOption {
                type = lib.types.float;
                default = 400.0;
              };
              EntityGorgomite = lib.mkOption {
                type = lib.types.float;
                default = 5.5;
              };
              EntityGrapeSlime = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
              };
              EntityGravelCreeper = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityGravityCreeper = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityGrue = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityGuardian = lib.mkOption {
                type = lib.types.float;
                default = 12.0;
              };
              EntityHellfireBlaze = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityHellhound = lib.mkOption {
                type = lib.types.float;
                default = 72.0;
              };
              EntityHungryPigZombie = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityHungrySpider = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityHungryZombie = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityIcyEnderman = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityIllusionCreeper = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityIllusionSpider = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityIllusionZombie = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityImp = lib.mkOption {
                type = lib.types.float;
                default = 50.0;
              };
              EntityInfernoBlaze = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityJoltBlaze = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityJumpingCreeper = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityJumpingSpider = lib.mkOption {
                type = lib.types.float;
                default = 25.0;
              };
              EntityJungleSpider = lib.mkOption {
                type = lib.types.float;
                default = 6.0;
              };
              EntityKingGhast = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityKobold = lib.mkOption {
                type = lib.types.float;
                default = 44.0;
              };
              EntityLavaMonster = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
              };
              EntityLavaWebSpider = lib.mkOption {
                type = lib.types.float;
                default = 60.0;
              };
              EntityLeech = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
              EntityLemonSlime = lib.mkOption {
                type = lib.types.float;
                default = 6.0;
              };
              EntityLeonard = lib.mkOption {
                type = lib.types.float;
                default = 600.0;
              };
              EntityLightningCreeper = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityLightningEnderman = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityLilith = lib.mkOption {
                type = lib.types.float;
                default = 200.0;
              };
              EntityLobber = lib.mkOption {
                type = lib.types.float;
                default = 33.0;
              };
              EntityLocust = lib.mkOption {
                type = lib.types.float;
                default = 100.0;
              };
              EntityLordOfTorment = lib.mkOption {
                type = lib.types.float;
                default = 500.0;
              };
              EntityMagmaCube = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              EntityMandrake = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityMidgeSwarm = lib.mkOption {
                type = lib.types.float;
                default = 15.0;
              };
              EntityMindSpider = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              EntityMiniCreeper = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityMiniEnderman = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityMiniGhast = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
              EntityMirageEnderman = lib.mkOption {
                type = lib.types.float;
                default = 60.0;
              };
              EntityMobAngryEnderman = lib.mkOption {
                type = lib.types.float;
                default = 32.0;
              };
              EntityMobBabyEnderman = lib.mkOption {
                type = lib.types.float;
                default = 15.0;
              };
              EntityMobEnderGuardian = lib.mkOption {
                type = lib.types.float;
                default = 80.0;
              };
              EntityMobEndermage = lib.mkOption {
                type = lib.types.float;
                default = 80.0;
              };
              EntityMobEnderman = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityMobFireGolem = lib.mkOption {
                type = lib.types.float;
                default = 24.0;
              };
              EntityMobHauntedMiner = lib.mkOption {
                type = lib.types.float;
                default = 100.0;
              };
              EntityMobHomelandEnderman = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityMobLouse = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
              };
              EntityMobScorchingLens = lib.mkOption {
                type = lib.types.float;
                default = 18.0;
              };
              EntityMoneySpider = lib.mkOption {
                type = lib.types.float;
                default = 8.0;
              };
              EntityMosquito = lib.mkOption {
                type = lib.types.float;
                default = 15.0;
              };
              EntityMotherCaveSpider = lib.mkOption {
                type = lib.types.float;
                default = 28.0;
              };
              EntityMotherSpider = lib.mkOption {
                type = lib.types.float;
                default = 33.0;
              };
              EntityNightmare = lib.mkOption {
                type = lib.types.float;
                default = 100.0;
              };
              EntityNinjaSkeleton = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityPaleSpider = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
              };
              EntityPassiveCreeper = lib.mkOption {
                type = lib.types.float;
                default = 112.0;
              };
              EntityPech = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityPhantom = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityPigZombie = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityPlaguePigZombie = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityPlagueZombie = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityPoisonSilverfish = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
              EntityPoisonSkeleton = lib.mkOption {
                type = lib.types.float;
                default = 80.0;
              };
              EntityPoisonSpider = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
              };
              EntityPoltergeist = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityPondSkater = lib.mkOption {
                type = lib.types.float;
                default = 15.0;
              };
              EntityPrayingMantis = lib.mkOption {
                type = lib.types.float;
                default = 25.0;
              };
              EntityPunchroom = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityQueenGhast = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityRageWitch = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityReflection = lib.mkOption {
                type = lib.types.float;
                default = 100.0;
              };
              EntityReiver = lib.mkOption {
                type = lib.types.float;
                default = 66.0;
              };
              EntityRemobra = lib.mkOption {
                type = lib.types.float;
                default = 11.0;
              };
              EntityRoc = lib.mkOption {
                type = lib.types.float;
                default = 16.5;
              };
              EntityScorpion = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityScytodes = lib.mkOption {
                type = lib.types.float;
                default = 25.0;
              };
              EntityShadowsWitch = lib.mkOption {
                type = lib.types.float;
                default = 26.0;
              };
              EntityShambler = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntitySilverfish = lib.mkOption {
                type = lib.types.float;
                default = 8.0;
              };
              EntitySkeleton = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntitySlime = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              EntitySludgeling = lib.mkOption {
                type = lib.types.float;
                default = 7.0;
              };
              EntitySmallSpider = lib.mkOption {
                type = lib.types.float;
                default = 48.0;
              };
              EntitySmolderBlaze = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntitySnapper = lib.mkOption {
                type = lib.types.float;
                default = 25.0;
              };
              EntitySniperSkeleton = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntitySolifuge = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntitySolifugeSmall = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
              EntitySpectre = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntitySpider = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
              };
              EntitySpirit = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntitySpitfireSkeleton = lib.mkOption {
                type = lib.types.float;
                default = 80.0;
              };
              EntitySplittingCreeper = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntitySpriggan = lib.mkOption {
                type = lib.types.float;
                default = 16.5;
              };
              EntityStrawberrySlime = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
              };
              EntityStray = lib.mkOption {
                type = lib.types.float;
                default = 20.01;
              };
              EntityTFArmoredGiant = lib.mkOption {
                type = lib.types.float;
                default = 80.0;
              };
              EntityTFBlockGoblin = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityTFDeathTome = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityTFFireBeetle = lib.mkOption {
                type = lib.types.float;
                default = 25.0;
              };
              EntityTFGiantMiner = lib.mkOption {
                type = lib.types.float;
                default = 80.0;
              };
              EntityTFGoblinKnightLower = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityTFGoblinKnightUpper = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityTFHedgeSpider = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
              };
              EntityTFHelmetCrab = lib.mkOption {
                type = lib.types.float;
                default = 13.0;
              };
              EntityTFHostileWolf = lib.mkOption {
                type = lib.types.float;
                default = 8.0;
              };
              EntityTFIceCrystal = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
              EntityTFIceExploder = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityTFIceShooter = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityTFKingSpider = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityTFKnightPhantom = lib.mkOption {
                type = lib.types.float;
                default = 35.0;
              };
              EntityTFKobold = lib.mkOption {
                type = lib.types.float;
                default = 13.0;
              };
              EntityTFLich = lib.mkOption {
                type = lib.types.float;
                default = 100.0;
              };
              EntityTFLichMinion = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityTFMiniGhast = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
              EntityTFMinotaur = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityTFMistWolf = lib.mkOption {
                type = lib.types.float;
                default = 8.0;
              };
              EntityTFMosquitoSwarm = lib.mkOption {
                type = lib.types.float;
                default = 12.0;
              };
              EntityTFPinchBeetle = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityTFRedcap = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityTFRedcapSapper = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityTFSkeletonDruid = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityTFSlimeBeetle = lib.mkOption {
                type = lib.types.float;
                default = 25.0;
              };
              EntityTFSnowGuardian = lib.mkOption {
                type = lib.types.float;
                default = 12.0;
              };
              EntityTFSnowQueen = lib.mkOption {
                type = lib.types.float;
                default = 200.0;
              };
              EntityTFSwarmSpider = lib.mkOption {
                type = lib.types.float;
                default = 3.0;
              };
              EntityTFTowerBroodling = lib.mkOption {
                type = lib.types.float;
                default = 7.0;
              };
              EntityTFTowerGhast = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityTFTowerGolem = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityTFTroll = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityTFWinterWolf = lib.mkOption {
                type = lib.types.float;
                default = 8.0;
              };
              EntityTFWraith = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityTFYeti = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityTaintChicken = lib.mkOption {
                type = lib.types.float;
                default = 8.0;
              };
              EntityTaintCreeper = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityTaintPig = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityTaintSpider = lib.mkOption {
                type = lib.types.float;
                default = 5.0;
              };
              EntityTaintSpore = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
              };
              EntityTaintSporeSwarmer = lib.mkOption {
                type = lib.types.float;
                default = 75.0;
              };
              EntityTaintSwarm = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityTaintVillager = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityTaintacle = lib.mkOption {
                type = lib.types.float;
                default = 50.0;
              };
              EntityTaintacleGiant = lib.mkOption {
                type = lib.types.float;
                default = 155.0;
              };
              EntityTaintacleSmall = lib.mkOption {
                type = lib.types.float;
                default = 8.0;
              };
              EntityTarantula = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityTarantulaMiniboss = lib.mkOption {
                type = lib.types.float;
                default = 300.0;
              };
              EntityTentacles = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
              EntityThaumicSlime = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              EntityThiefEnderman = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityThiefSkeleton = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityToughCaveSpider = lib.mkOption {
                type = lib.types.float;
                default = 28.0;
              };
              EntityToughSilverfish = lib.mkOption {
                type = lib.types.float;
                default = 28.0;
              };
              EntityToughSpider = lib.mkOption {
                type = lib.types.float;
                default = 32.0;
              };
              EntityTreefyd = lib.mkOption {
                type = lib.types.float;
                default = 100.0;
              };
              EntityUndeadWitch = lib.mkOption {
                type = lib.types.float;
                default = 187.1999969482422;
              };
              EntityUnholyGhast = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
              EntityVampirePigZombie = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityVelvetWorm = lib.mkOption {
                type = lib.types.float;
                default = 25.0;
              };
              EntityVespid = lib.mkOption {
                type = lib.types.float;
                default = 5.5;
              };
              EntityWasp = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityWatermelonSlime = lib.mkOption {
                type = lib.types.float;
                default = 24.0;
              };
              EntityWebCaveSpider = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
              };
              EntityWebSpider = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityWendigo = lib.mkOption {
                type = lib.types.float;
                default = 33.0;
              };
              EntityWildfireBlaze = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              EntityWildsWitch = lib.mkOption {
                type = lib.types.float;
                default = 26.0;
              };
              EntityWindWitch = lib.mkOption {
                type = lib.types.float;
                default = 26.0;
              };
              EntityWisp = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityWitch = lib.mkOption {
                type = lib.types.float;
                default = 26.0;
              };
              EntityWitchCaveSpider = lib.mkOption {
                type = lib.types.float;
                default = 12.0;
              };
              EntityWitchSpider = lib.mkOption {
                type = lib.types.float;
                default = 17.0;
              };
              EntityWither = lib.mkOption {
                type = lib.types.float;
                default = 300.0;
              };
              EntityWitherCat = lib.mkOption {
                type = lib.types.float;
                default = 14.0;
              };
              EntityWitherSkeleton = lib.mkOption {
                type = lib.types.float;
                default = 26.0;
              };
              EntityWitherWitch = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
              };
              EntityWolfman = lib.mkOption {
                type = lib.types.float;
                default = 80.0;
              };
              EntityZoataur = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              EntityZombie = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              EntityZombieAnt = lib.mkOption {
                type = lib.types.float;
                default = 25.0;
              };
              Entity_SpecialBlaze = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              Entity_SpecialCaveSpider = lib.mkOption {
                type = lib.types.float;
                default = 14.0;
              };
              Entity_SpecialCreeper = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              Entity_SpecialEnderman = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
              };
              Entity_SpecialGhast = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
              Entity_SpecialPigZombie = lib.mkOption {
                type = lib.types.float;
                default = 50.0;
              };
              Entity_SpecialSilverfish = lib.mkOption {
                type = lib.types.float;
                default = 8.0;
              };
              Entity_SpecialSkeleton = lib.mkOption {
                type = lib.types.float;
                default = 22.0;
              };
              Entity_SpecialSlime = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              Entity_SpecialSpider = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
              };
              Entity_SpecialWitch = lib.mkOption {
                type = lib.types.float;
                default = 26.0;
              };
              Entity_SpecialZombie = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
              HeatscarSpider = lib.mkOption {
                type = lib.types.float;
                default = 50.0;
              };
              KingBlueSlime = lib.mkOption {
                type = lib.types.float;
                default = 100.0;
              };
              NitroCreeper = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              AntiMobFarmCheckInterval = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "time in seconds between mob check intervals. Higher values cost more performance, but might be more accurate.";
              };
              AntiMobfarmingEnabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Anti Mob farming mechanic. Might cause overhead if enabled.";
              };
              "MM_1UP enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Alchemist enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Berserk enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Blastoff enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Bulwark enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Choke enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Cloaking enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Darkness enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Ender enabled" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "MM_Exhaust enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Fiery enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Ghastly enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Gravity enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Lifesteal enabled" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "MM_Ninja enabled" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "MM_Poisonous enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Quicksand enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Regen enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Rust enabled" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "MM_Sapper enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Sprint enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Sticky enabled" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "MM_Storm enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Vengeance enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Weakness enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Webber enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MM_Wither enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              dimensionIDBlackList = lib.mkOption {
                type = lib.types.str;
                default = "50";
                description = "List of DimensionIDs where InfernalMobs will NEVER spawn";
              };
              disableGUIoverlay = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disables the ingame Health and Name overlay";
              };
              droppedItemIDsElite = lib.mkOption {
                type = lib.types.str;
                default = "potion@8225-0-1,potion@8229-0-1,iron_axe,iron_sword,iron_hoe,iron_helmet,iron_chestplate,iron_leggings,iron_boots,piston,dispenser,sticky_piston,dropper,iron_ingot-0-2,gold_ingot-0-1,golden_helmet,golden_chestplate,golden_leggings,golden_boots,speckled_melon-0-1,magma_cream-0-1,bow,chainmail_helmet,chainmail_chestplate,chainmail_leggings,chainmail_boots";
                description = "List of equally likely to drop Items for Elites, seperated by commas, syntax: ID-meta-stackSize-stackSizeRandomizer, everything but ID is optional, see changelog";
              };
              droppedItemIDsInfernal = lib.mkOption {
                type = lib.types.str;
                default = "potion@8225-1-3,potion@8229-1-3,blaze_powder-0-3,diamond-0-2,ender_pearl-0-2,diamond_axe,diamond_sword,diamond_hoe,diamond_helmet,diamond_chestplate,diamond_leggings,diamond_boots,gold_block-0-1,diamond_block-0-1,emerald_block-0-1,enchanted_book,ghast_tear-0-2";
                description = "List of equally likely to drop Items for Infernals, seperated by commas, syntax: ID-meta-stackSize-stackSizeRandomizer, everything but ID is optional, see changelog";
              };
              droppedItemIDsUltra = lib.mkOption {
                type = lib.types.str;
                default = "potion@8225-0-2,potion@8229-0-2,ender_pearl-0-1,diamond-0-1,blaze_powder-0-2,golden_axe,golden_sword,golden_hoe,chainmail_helmet,chainmail_chestplate,chainmail_leggings,chainmail_boots,glowstone,iron_door,speckled_melon-0-2,magma_cream-0-2,fire_charge-0-1,enchanted_book,bow,golden_apple,ghast_tear-0-1";
                description = "List of equally likely to drop Items for Ultras, seperated by commas, syntax: ID-meta-stackSize-stackSizeRandomizer, everything but ID is optional, see changelog";
              };
              eliteRarity = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "One in THIS many Mobs will become atleast rare";
              };
              infernoRarity = lib.mkOption {
                type = lib.types.int;
                default = 7;
                description = "One in THIS many already ultra Mobs will become infernal";
              };
              maxEliteModifiers = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Maximum number of Modifiers an Elite mob will receive";
              };
              maxInfernoModifiers = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "Maximum number of Modifiers an Inferno mob will receive";
              };
              maxOneShotDamage = lib.mkOption {
                type = lib.types.float;
                default = 12.0;
              };
              maxUltraModifiers = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Maximum number of Modifiers an Ultra mob will receive";
              };
              minEliteModifiers = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Minimum number of Modifiers an Elite mob will receive";
              };
              minInfernoModifiers = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "Minimum number of Modifiers an Inferno mob will receive";
              };
              minUltraModifiers = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Minimum number of Modifiers an Ultra mob will receive";
              };
              mobFarmDamageThreshold = lib.mkOption {
                type = lib.types.float;
                default = 150.0;
                description = "Damage in chunk per interval that triggers anti farm effects";
              };
              mobHealthFactor = lib.mkOption {
                type = lib.types.str;
                default = "1.8";
                description = "Multiplier applied ontop of all of the modified Mobs health";
              };
              ultraRarity = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "One in THIS many already rare Mobs will become atleast ultra";
              };
              useSimpleEntityClassnames = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use Entity class names instead of ingame Entity names for the config";
              };
            };
          };
        };
        mm_1up = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              healAmountMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "Multiplies the mob maximum health when healing back up, cannot get past maximum mob health";
              };
            };
          };
        };
        mm_alchemist = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              coolDownMillis = lib.mkOption {
                type = lib.types.float;
                default = 6000.0;
                description = "Time between ability uses";
              };
            };
          };
        };
        mm_berserk = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              berserkMaxDamage = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
                description = "Maximum amount of damage that a mob with Berserk can deal (0, or less than zero for unlimited berserk damage)";
              };
              damageMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
                description = "Damage multiplier, limited by maxOneShotDamage";
              };
            };
          };
        };
        mm_blastoff = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              coolDownMillis = lib.mkOption {
                type = lib.types.float;
                default = 15000.0;
                description = "Time between ability uses";
              };
            };
          };
        };
        mm_bulwark = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              damageMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
                description = "Damage (taken) multiplier, only makes sense for values < 1.0";
              };
            };
          };
        };
        mm_cloaking = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              cloakingDurationTicks = lib.mkOption {
                type = lib.types.float;
                default = 200.0;
                description = "Time mob is cloaked";
              };
              coolDownMillis = lib.mkOption {
                type = lib.types.float;
                default = 12000.0;
                description = "Time between ability uses";
              };
            };
          };
        };
        mm_darkness = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              darknessDurationTicks = lib.mkOption {
                type = lib.types.float;
                default = 120.0;
                description = "Time attacker is darkened";
              };
            };
          };
        };
        mm_fiery = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              fieryDurationSecs = lib.mkOption {
                type = lib.types.float;
                default = 3.0;
                description = "Time attacker is set on fire";
              };
            };
          };
        };
        mm_ghastly = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              coolDownMillis = lib.mkOption {
                type = lib.types.float;
                default = 6000.0;
                escription = "Time between ability uses";
              };
            };
          };
        };
        mm_gravity = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              coolDownMillis = lib.mkOption {
                type = lib.types.float;
                default = 5000.0;
                description = "Time between ability uses";
              };
              maxDistance = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "Range of ability.";
              };
            };
          };
        };
        mm_poisonous = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              poisonDurationTicks = lib.mkOption {
                type = lib.types.float;
                default = 120.0;
                description = "Time attacker is poisoned";
              };
            };
          };
        };
        mm_regen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              coolDownMillis = lib.mkOption {
                type = lib.types.float;
                default = 500.0;
                description = "Time between ability uses";
              };
            };
          };
        };
        mm_sapper = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              hungerDurationTicks = lib.mkOption {
                type = lib.types.float;
                default = 120.0;
                description = "Time attacker is hungering";
              };
            };
          };
        };
        mm_sprint = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              coolDownMillis = lib.mkOption {
                type = lib.types.float;
                default = 5000.0;
                description = "Time between ability uses";
              };
            };
          };
        };
        mm_storm = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              coolDownMillis = lib.mkOption {
                type = lib.types.float;
                default = 15000.0;
                description = "Time between ability uses";
              };
            };
          };
        };
        mm_vengeance = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              vengeanceMaxDamage = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
                description = "Maximum amount of damage that is reflected (0, or less than zero for unlimited vengeance damage)";
              };
              vengeanceMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
                description = "Multiplies damage received, result is subtracted from attacking entity's health";
              };
            };
          };
        };
        mm_weakness = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              weaknessDurationTicks = lib.mkOption {
                type = lib.types.float;
                default = 120.0;
                description = "Time attacker is weakened";
              };
            };
          };
        };
        mm_webber = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              coolDownMillis = lib.mkOption {
                type = lib.types.float;
                default = 15000.0;
                description = "Time between ability uses";
              };
            };
          };
        };
        mm_wither = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              witherDurationTicks = lib.mkOption {
                type = lib.types.float;
                default = 120.0;
                description = "Time attacker is withered";
              };
            };
          };
        };
        permittedentities = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BabyHeatscarSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BlueSlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Crystal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityAfrit = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityAlienBug = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityAntlion = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityAntlionBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityAntlionMiniBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityArix = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityArmorCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBabaYaga = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBabyCaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBabyGhast = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBabySpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBanshee = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBlackWidow = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBlackberrySlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBlaze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBlazeBoss = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBlindingEnderman = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBlindingSilverfish = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBloodSnail = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBlueberrySlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBossBlaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBossDragon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityBotFly = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBrainyZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBrutishPigZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBrutishSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityBrutishZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityCaramelSlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityCaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityCentipede = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityChameleonTick = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityChaosGuardian = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityCinder = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityCinderBlaze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityClink = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityConba = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityConcussionCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityConflagrationBlaze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityCrawler = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityCreeperBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCrushroom = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityCryptZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityCultistCleric = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityCultistKnight = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityCultistLeader = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityCultistPortal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityCursedEnderman = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityCustomDragon = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityDarkCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityDeath = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDeathCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityDesertSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityDireSlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityDireWolf = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityDirtCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityDominationWitch = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityDoomCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityDragon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityDragonfly = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityDrowningCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityDweller = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEldritchCrab = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEldritchGolem = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEldritchGuardian = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEldritchWarden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEmberBlaze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEnderCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEnderman = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEnderminy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEndermite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEnt = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEpion = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEttin = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEvolvedBlaze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEvolvedBossCrab = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEvolvedBossSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityEvolvedBossWolf = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEvolvedColdBlaze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEvolvedCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEvolvedEnderman = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEvolvedFireCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEvolvedFireSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEvolvedFireSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEvolvedGiantSnail = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEvolvedSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEvolvedSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityEvolvedZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFaintGhast = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFakeCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityFallenKnight = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFallenMount = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFighterGhast = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFireAnt = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFireAntSoldier = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFireBat = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFireCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFireSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFireZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFishingPigZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFishingSilverfish = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFishingZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFlyingCaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFlyingSilverfish = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFlyingSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityFrostweaver = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGatlingSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGeken = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGeonach = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGhast = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGhostSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGhoulZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGiantBrainyZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGiantPigZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGiantSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGiantSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGiantZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGlob = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGoblinGulg = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGoblinMog = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityGorgomite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGrapeSlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGravelCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGravityCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGrue = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityGuardian = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityHellfireBlaze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityHellhound = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityHornedHuntsman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityHungryPigZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityHungrySpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityHungryZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityHusk = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityIcyEnderman = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityIllusionCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityIllusionSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityIllusionZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityImp = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityInfernoBlaze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityInhabitedZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityJabberwock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityJengu = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityJoltBlaze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityJumpingCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityJumpingSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityJungleSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityKingGhast = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityKobold = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityLavaMonster = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityLavaWebSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityLeech = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityLemonSlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityLeonard = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLightningCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityLightningEnderman = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityLilith = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLobber = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityLocust = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityLordOfTorment = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityMagmaCrawler = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMagmaCube = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMandrake = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityManticore = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMeatSlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMedSlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMercurialSlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMidgeSwarm = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMindSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMiniCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMiniEnderman = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMiniGhast = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMirageEnderman = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMobAngryEnderman = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMobBabyEnderman = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMobEnderGuardian = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMobEndermage = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMobEnderman = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMobFireGolem = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMobForestGhost = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMobHauntedMiner = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMobHomelandEnderman = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMobLouse = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMobParalyzedEnderman = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMobScorchingLens = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMoneySpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMosquito = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMotherCaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMotherSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityMummyBoss = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityNightmare = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityNinjaSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityPaleSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityParasyticLouse = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityPassiveCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityPech = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityPhantom = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityPigZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityPinkWither = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityPlaguePigZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityPlagueZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityPoisonSilverfish = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityPoisonSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityPoisonSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityPoltergeist = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityPondSkater = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityPrayingMantis = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityPunchroom = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityQueenGhast = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityRageWitch = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityReflection = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityReiver = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityRemobra = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityRespawnedDragon = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityRoc = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySafeTaintSheep = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityScorpion = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityScytodes = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySentry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityShadowsWitch = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityShambler = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySheeder = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityShulker = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySickBlaze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySilverfish = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySkeleton = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySkeletonBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntitySlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySlimeBoss = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySludgeling = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySmallSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySmolderBlaze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySnapper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySniperSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySolifuge = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySolifugeSmall = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySoul = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySpectre = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySpirit = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySpitfireSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySplittingCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntitySpriggan = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityStrawberrySlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityStray = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFAdherent = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFArmoredGiant = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFBlockGoblin = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFDeathTome = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFFireBeetle = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFGiantMiner = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFGoblinKnightLower = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFGoblinKnightUpper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFHarbingerCube = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFHedgeSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFHelmetCrab = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFHostileWolf = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFHydra = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFIceCrystal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFIceExploder = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFIceShooter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFKingSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFKnightPhantom = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFKobold = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFLich = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFLichMinion = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFMazeSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFMiniGhast = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFMinoshroom = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFMinotaur = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFMistWolf = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFMosquitoSwarm = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFNaga = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFPinchBeetle = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFRedcap = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFRedcapSapper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFRovingCube = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFSkeletonDruid = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFSlimeBeetle = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFSnowGuardian = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFSnowQueen = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFSwarmSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFTowerBroodling = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFTowerGhast = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFTowerGolem = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFTowerTermite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFTroll = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFUrGhast = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTFWinterWolf = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFWraith = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFYeti = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTFYetiAlpha = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTaintChicken = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTaintCow = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTaintCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTaintPig = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTaintSheep = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTaintSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTaintSpore = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTaintSporeSwarmer = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTaintSwarm = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTaintVillager = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTaintacle = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTaintacleGiant = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTaintacleMinion = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTaintacleSmall = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTarantula = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTarantulaBaby = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTarantulaMiniboss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityTentacles = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityThaumicSlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityThiefEnderman = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityThiefSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityToughCaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityToughSilverfish = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityToughSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTreefyd = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityTrent = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityUmberGolemDungeonTypes = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityUndeadWitch = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityUnholyGhast = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityVampirePigZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityVelvetWorm = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityVespid = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityVoltSlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWasp = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWatermelonSlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWebCaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWebSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWendigo = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWildfireBlaze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWildsWitch = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWindWitch = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWisp = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWispNether = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWitch = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWitchCaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWitchSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWither = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityWitherCat = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWitherSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWitherWitch = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWolfBoss = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityWolfman = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityZoataur = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityZombieAnt = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EntityZombieVillager = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Entity_SpecialBlaze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Entity_SpecialCaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Entity_SpecialCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Entity_SpecialEnderman = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Entity_SpecialGhast = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Entity_SpecialPigZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Entity_SpecialSilverfish = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Entity_SpecialSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Entity_SpecialSlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Entity_SpecialSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Entity_SpecialWitch = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Entity_SpecialZombie = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              HeatscarSpider = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              KingBlueSlime = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              NitroCreeper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
      };
    };
  };
}
