{lib, ...}: {
  angermod = lib.mkOption {
    description = "angermod configuration (./config/GTNewHorizons/angermod.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GTNewHorizons/angermod.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        blacklist = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              EndBlocks = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "gregtech:gt.blockores" ];
                description = "Define all Blocks here where Enderman should become angry when you break them [default: [gregtech:gt.blockores]]";
              };
              KamikazeItemBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "gt.metatool.01.34" "gt.metatool.01.36" "canesword" "daggerOfSacrifice" "glass_sacrificial_dagger" "glass_dagger_of_sacrifice" ];
                description = "If the player is using one of these items, entities will not explode if they are killed [default: [flint]]";
              };
              NetherBlocks = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "gregtech:gt.blockores" ];
                description = "Define all Blocks here where Pigmen should become angry when you break them [default: [gregtech:gt.blockores]]";
              };
            };
          };
        };
        debug = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              DoDebugMessages = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable debug output to fml-client-latest.log [default: false]";
              };
            };
          };
        };
        limits = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Enderman = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "The maximum range where Enderman shall become angry [range: 2 ~ 128, default: 16]";
              };
              FriendlyMobRevengeRadius = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "The maximum range where animals will flee/become angry once the food-trigger is.. triggered [range: 2 ~ 128, default: 16]";
              };
              KamikazeChance = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Chance, in percent, how often a Kamikaze event will happen [range: 1 ~ 100, default: 5]";
              };
              Pigmen = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "The maximum range where Pigmen shall become angry [range: 2 ~ 128, default: 16]";
              };
              SpawnProtectionMoveTolerance = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "How many Blocks will the player be able to move away from his initial spawn location until his protection fades [range: 1 ~ 2048, default: 5]";
              };
              SpawnProtectionTimeout = lib.mkOption {
                type = lib.types.int;
                default = 90;
                description = "The maximum number of seconds a player will be protected from damage if he is just standing still and doing nothing [range: 1 ~ 2048, default: 10]";
              };
            };
          };
        };
        mobrevengetrigger = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ChickenFoodTrigger = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "chicken" "egg" ];
                description = "If the food eaten by the player contains these keywords, all CHICKEN around will become angry (or flee) [default: [chicken], [egg]]";
              };
              CowFoodTrigger = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "beef" ];
                description = "If the food eaten by the player contains these keywords, all COWS around will become angry (or flee) [default: [beef]]";
              };
              PigFoodTrigger = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "pork" ];
                description = "If the food eaten by the player contains these keywords, all PIGS around will become angry (or flee) [default: [pork]]";
              };
              SheepFoodTrigger = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "mutton" ];
                description = "If the food eaten by the player contains these keywords, all SHEEP around will become angry (or flee) [default: [mutton]]";
              };
            };
          };
        };
        modulecontrol = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BlockBreakEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/disable block-breaking-makes-mobs-angry module [default: false]";
              };
              FriendlyMobRevenge = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to true, sheep will attack/flee if you eat mutton, pigs if you eat pork,... The attack/flee is based on additional mods you have installed [default: false]";
              };
              KamikazeMobRevenge = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Guess what it is ... [default: false]";
              };
              ProtectionEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Define if new players / respawned players shall be ignored from monsters until they attack something, move or the timer runs out [default: false]";
              };
            };
          };
        };
        protection = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              KamikazeMobsDoTerrainDamage = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If set to true, the kamikaze event will cause terrain damage (but still follow gamerule 'mobGriefing') [default: false]";
              };
            };
          };
        };
        whitelist = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              WhitelistedProtectionItems = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "EMT:BaseBaubles" ];
                description = "Set items here which change players invulnerability. You will notice those, as they will spam the console with *protection fades* messages [default: [EMT:BaseBaubles]]";
              };
            };
          };
        };
      };
    };
  };
  blocklimiter = lib.mkOption {
    description = "blocklimiter configuration (./config/GTNewHorizons/blocklimiter.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GTNewHorizons/blocklimiter.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        debug = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              DoDebugMessages = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable debug output to fml-client-latest.log [default: false]";
              };
            };
          };
        };
        main = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BlockList = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "Define your Blocks here. Syntax is: [modID]:[BlockID];[DimID];... if you don't add a Dimension (e.g. minecraft:dirt) it will be denied in every dimension [default: ]";
              };
              DenyCreativeMode = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true to prevent even Server-OPs/Admins from placing forbidden blocks and using forbidden items [default: false]";
              };
              ItemList = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "Avaritia:Endest_Pearl;0;-1;1;7;" "TConstruct:buckets:24;0;-1;1;7;" "IguanaTweaksTConstruct:clayBucketsTinkers:24;0;-1;1;7;" "TwilightForest:item.tfspawnegg:182;0;-1;1;26;27;28;29;30;" "TwilightForest:item.tfspawnegg:189;0;-1;1;26;27;28;29;30;" "TwilightForest:item.tfspawnegg:190;0;-1;1;26;27;28;29;30;" "TwilightForest:item.tfspawnegg:205;0;-1;1;26;27;28;29;30;" "TwilightForest:item.tfspawnegg:217;0;-1;1;26;27;28;29;30;" "TwilightForest:item.tfspawnegg:224;0;-1;1;26;27;28;29;30;" "TwilightForest:item.tfspawnegg:226;0;-1;1;26;27;28;29;30;" "TwilightForest:item.tfspawnegg:231;0;-1;1;26;27;28;29;30;" ];
                description = "Define your Items here. Syntax is: [modID]:[ItemID];[DimID];... if you don't add a Dimension (e.g. minecraft:dirt instead of minecraft:dirt;12) it will be denied in every dimension [default: ]";
              };
              ItemRejectMessages = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "You can't use that here" "You are too jelly to use this" "The item seems to be broken..." "YOU SHALL NOT USE (this Item)" ];
                description = "Define a few reject messages that are being sent to the player if they try to use a monitored item [default: [You can't use that here], [You are too jelly to use this], [The item seems to be broken...], [YOU SHALL NOT USE (this Item)]]";
              };
              PlaySFXOnBlockDeny = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:ambient.weather.thunder";
                description = "Leave it blank for no sound effect, or put in a valid sound-reference like this: [modID]:[soundeffectID] [default: minecraft:ambient.weather.thunder]";
              };
              PlaySFXOnItemDeny = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:ambient.weather.thunder";
                description = "Leave it blank for no sound effect, or put in a valid sound-reference like this: [modID]:[soundeffectID] [default: minecraft:ambient.weather.thunder]";
              };
              RejectMessages = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "You can't place that here" "You are too jelly to place this" "The block doesn't want to be here" "YOU SHALL NOT PLACE (this Block)" "*poof*" ];
                description = "Define a few reject messages that are being sent to the player if they try to place a monitored Block [default: [You can't place that here], [You are too jelly to place this], [The block doesn't want to be here], [YOU SHALL NOT PLACE (this Block)], [*poof*]]";
              };
            };
          };
        };
      };
    };
  };
  dreamcraft = lib.mkOption {
    description = "dreamcraft configuration (./config/GTNewHorizons/dreamcraft.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GTNewHorizons/dreamcraft.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        debug = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              DoDebugMessages = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable debug output to fml-client-latest.log [default: false]";
              };
            };
          };
        };
        deepdarkvoidminer = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              DebugPrintAddedOres = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to enable logging of ores added to the Deep Dark void miner, with weights and metadata IDs. This is useful for debugging. [default: false]";
              };
              DebugPrintAllOres = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to enable logging of all valid ores. This is useful for debugging, or finding names to add to the weight config. [default: false]";
              };
              GTPPMaterialWeights = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "List of GT++ material names to adjust weight. Example line: \"Cerite : 0.3\". Intervening whitespace will be ignored. Use the debug options to get valid names. Use weight <= 0 to disable an ore entirely. Anything not specified in the list will have weight 1. See: gtPlusPlus.core.material.ORES [default: ]";
              };
              MaterialWeights = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "List of GregTech material names to adjust weight. Example line: \"Aluminium : 0.3\". Intervening whitespace will be ignored. Use the debug options to get valid names. Use weight <= 0 to disable an ore entirely. Anything not specified in the list will have weight 1. See: gregtech.api.enums.Materials [default: ]";
              };
              WerkstoffWeights = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "List of BartWorks material names to adjust weight. Example line: \"Bismutite : 0.3\". Intervening whitespace will be ignored. Use the debug options to get valid names. Use weight <= 0 to disable an ore entirely. Anything not specified in the list will have weight 1. See: bartworks.system.material.Werkstoff [default: ]";
              };
            };
          };
        };
        limits = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              PotionTimer = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
            };
          };
        };
        modfixes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              AvaritiaFixEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to enable the modfix for Avaritia SkullFireSword [default: false]";
              };
              GenerateOil = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to enable OilSpawn from this Mod. Make sure to disable Oil-Spawn in BuildCraft if you do [default: false]";
              };
              HoverModeFixEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              MinetweakerFurnaceFixEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to allow Minetweaker to override the vanilla furnace fuel handler, allowing the burn value of WOOD material items to be changed. [default: true]";
              };
              avaritia = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Avaritia_SkullFireSwordEntityTargets = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "net.minecraft.entity.monster.EntitySkeleton" "galaxyspace.SolarSystem.planets.venus.entities.EntityEvolvedFireSkeleton" "micdoodle8.mods.galacticraft.core.entities.EntityEvolvedSkeleton" "toast.specialMobs.entity.skeleton.Entity_SpecialSkeleton" "toast.specialMobs.entity.skeleton.EntityBrutishSkeleton" "toast.specialMobs.entity.skeleton.EntityFireSkeleton" "toast.specialMobs.entity.skeleton.EntityGatlingSkeleton" "toast.specialMobs.entity.skeleton.EntityGiantSkeleton" "toast.specialMobs.entity.skeleton.EntityNinjaSkeleton" "toast.specialMobs.entity.skeleton.EntityPoisonSkeleton" "toast.specialMobs.entity.skeleton.EntitySniperSkeleton" "toast.specialMobs.entity.skeleton.EntitySpitfireSkeleton" "toast.specialMobs.entity.skeleton.EntityThiefSkeleton" "twilightforest.entity.EntityTFSkeletonDruid" ];
                      description = "The Canonical Class-Name of the Entity [default: [net.minecraft.entity.monster.EntitySkeleton], [galaxyspace.SolarSystem.planets.venus.entities.EntityEvolvedFireSkeleton], [micdoodle8.mods.galacticraft.core.entities.EntityEvolvedSkeleton]]";
                    };
                  };
                };
              };
              oilgen = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    OilBiomeBoostFactor = lib.mkOption {
                      type = lib.types.str;
                      default = "3.5";
                      description = "Boost factor of oil spheres in certain Biomes that are listed in -OilBoostBiomes- [range: 0.0 ~ 50.0, default: 2.5]";
                    };
                    OilBiomeIDBlackList = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "16" "21" "29" "43" "44" "52" "62" "65" "76" "87" "97" "99" "107" "113" "123" "192" ];
                      description = "List BiomeIDs (Numbers only; One per line!) where no oil should be generated [default: ]";
                    };
                    OilBoostBiomes = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "0" "2" "5" "12" "30" "32" "42" "45" "48" "51" "57" "58" "64" "70" "71" "92" "95" "104" "110" "115" "119" "122" "193" "202" "224" "225" "226" "228" "230" "235" ];
                      description = "List BiomeIDs (Numbers only; One per line!) where the boost multiplicator is applied. Leave empty to disable Biome-Boost [default: ]";
                    };
                    OilDepositThresholdLarge = lib.mkOption {
                      type = lib.types.int;
                      default = 14;
                      description = "Threshold at which an oil-deposit will be considered as 'large' and the fountain will be higher and thicker. [range: 0 ~ 100, default: 14]";
                    };
                    OilDepositThresholdMedium = lib.mkOption {
                      type = lib.types.int;
                      default = 11;
                      description = "Threshold at which an oil-deposit will be considered as 'medium' and the fountain will be higher and thicker. [range: 0 ~ 100, default: 11]";
                    };
                    OilDepostMinDistance = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                      description = "The minimum distance of 2 Oil-Deposits in chunks. Modulo-Based; A 2 here means an deposit can only spawn in chunks that have a number that is a multiple of 2 (Chunknumber * 16 = X/Z coord) [range: 0 ~ 1024, default: 2]";
                    };
                    OilDimensionWhitelist = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "0" ];
                      description = "List DimensionIDs (Numbers only; One per line!) here where the OilGenerator should do its work [default: [0]]";
                    };
                    OilFountainSizeLarge = lib.mkOption {
                      type = lib.types.int;
                      default = 16;
                      description = "Visible height of the fountain above the oil-deposit for LARGE deposits [range: 0 ~ 100, default: 16]";
                    };
                    OilFountainSizeSmall = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                      description = "Visible height of the fountain above the oil-deposit for MEDIUM deposits [range: 0 ~ 100, default: 5]";
                    };
                    OilSphereChance = lib.mkOption {
                      type = lib.types.str;
                      default = "60.0";
                      description = "General OilGen factor [range: 0.0 ~ 2000.0, default: 30.0]";
                    };
                    OilSphereMaxSize = lib.mkOption {
                      type = lib.types.int;
                      default = 15;
                      description = "The maximum radius of an underground OilSphere. The final size is calculated by OilSphereMinRadius + Random(OilSphereMaxSize-OilSphereMinRadius) [range: 3 ~ 50, default: 15]";
                    };
                    OilSphereMinRadius = lib.mkOption {
                      type = lib.types.int;
                      default = 8;
                      description = "The minimum radius of an underground OilSphere [range: 0 ~ 20, default: 8]";
                    };
                  };
                };
              };
            };
          };
        };
        modules = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              AdminErrorLog = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to true, every op/admin will receive all errors occoured during the startup phase as ingame message on join [default: true]";
              };
              BabyChest = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "A complete, full working example for a custom chest, with its own renderer for items and blocks, custom sound and a GUI [default: true]";
              };
              CustomDrops = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to enable CustomDrops module. This needs a separate config file which is created once you start with this setting enabled [default: false]";
              };
              CustomFuels = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to enable CustomFuels module. Allows you to set burn-time values to almost any item [default: false]";
              };
              CustomToolTips = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to enable CustomToolTips module. This needs a separate config file which is created once you start with this setting enabled [default: false]";
              };
              DebugVersionDisplay = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to display modpack version on debug GUI (F3) [default: true]";
              };
              ForestryStampsAndChunkLoaderCoinsEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables crafting recipes for Forestry stamps and Chunk Loader Coins. Only works on single player [default: true]";
              };
              ForestryStampsAndChunkLoaderCoinsServerEnabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables crafting recipes for Forestry stamps and Chunk Loader Coins on server [default: false]";
              };
              "GTNH Pause menu buttons" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to display GTNH buttons in the pause menu [default: true]";
              };
              HazardousItems = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to enable HazardousItems module. This needs a separate config file which is created once you start with this setting enabled [default: false]";
              };
              ItemInHandInfo = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              LoginMessage = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to show login message with modpack version [default: true]";
              };
              ModPackVersion = lib.mkOption {
                type = lib.types.str;
                default = "2.8.4";
                description = "Version of the Modpack [default: 2.8.4]";
              };
              OreDictItems = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to prevent the OreDict register for SpaceStones and SpaceDusts [default: true]";
              };
              worldaccelerator = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    BlacklistedTileEntiyClassNames = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "com.rwtema.extrautils.tileentity.enderquarry.TileEntityEnderQuarry" "advsolar.common.tiles.TileEntityUltimateSolarPanel" "advsolar.common.tiles.TileEntitySolarPanel" "advsolar.common.tiles.TileEntityQuantumSolarPanel" "advsolar.common.tiles.TileEntityHybridSolarPanel" "advsolar.common.tiles.TileEntityAdvancedSolarPanel" "com.supsolpans.tiles.TileAdminSolarPanel" "com.supsolpans.tiles.TilePhotonicSolarPanel" "com.supsolpans.tiles.TileSingularSolarPanel" "com.supsolpans.tiles.TileSpectralSolarPanel" "emt.tile.solar.air.TileEntityAirSolar" "emt.tile.solar.air.TileEntityDoubleAirSolar" "emt.tile.solar.air.TileEntityTripleAirSolar" "emt.tile.solar.air.TileEntityQuadrupleAirSolar" "emt.tile.solar.air.TileEntityQuintupleAirSolar" "emt.tile.solar.air.TileEntitySextupleAirSolar" "emt.tile.solar.air.TileEntitySeptupleAirSolar" "emt.tile.solar.air.TileEntityOctupleAirSolar" "emt.tile.solar.compressed.TileEntityCompressedSolar" "emt.tile.solar.compressed.TileEntityDoubleCompressedSolar" "emt.tile.solar.compressed.TileEntityTripleCompressedSolar" "emt.tile.solar.compressed.TileEntityQuadrupleAirSolar" "emt.tile.solar.compressed.TileEntityQuintupleAirSolar" "emt.tile.solar.compressed.TileEntitySextupleAirSolar" "emt.tile.solar.compressed.TileEntitySeptupleAirSolar" "emt.tile.solar.compressed.TileEntityOctupleAirSolar" "emt.tile.solar.dark.TileEntityDarkSolar" "emt.tile.solar.dark.TileEntityDoubleDarkSolar" "emt.tile.solar.dark.TileEntityTripleDarkSolar" "emt.tile.solar.dark.TileEntityQuadrupleAirSolar" "emt.tile.solar.dark.TileEntityQuintupleAirSolar" "emt.tile.solar.dark.TileEntitySextupleAirSolar" "emt.tile.solar.dark.TileEntitySeptupleAirSolar" "emt.tile.solar.dark.TileEntityOctupleAirSolar" "emt.tile.solar.earth.TileEntityDoubleEarthSolar" "emt.tile.solar.earth.TileEntityEarthSolar" "emt.tile.solar.earth.TileEntityTripleEarthSolar" "emt.tile.solar.earth.TileEntityQuadrupleAirSolar" "emt.tile.solar.earth.TileEntityQuintupleAirSolar" "emt.tile.solar.earth.TileEntitySextupleAirSolar" "emt.tile.solar.earth.TileEntitySeptupleAirSolar" "emt.tile.solar.earth.TileEntityOctupleAirSolar" "emt.tile.solar.fire.TileEntityDoubleFireSolar" "emt.tile.solar.fire.TileEntityFireSolar" "emt.tile.solar.fire.TileEntityTripleFireSolar" "emt.tile.solar.fire.TileEntityQuadrupleAirSolar" "emt.tile.solar.fire.TileEntityQuintupleAirSolar" "emt.tile.solar.fire.TileEntitySextupleAirSolar" "emt.tile.solar.fire.TileEntitySeptupleAirSolar" "emt.tile.solar.fire.TileEntityOctupleAirSolar" "emt.tile.solar.order.TileEntityDoubleOrderSolar" "emt.tile.solar.order.TileEntityOrderSolar" "emt.tile.solar.order.TileEntityTripleOrderSolar" "emt.tile.solar.order.TileEntityQuadrupleAirSolar" "emt.tile.solar.order.TileEntityQuintupleAirSolar" "emt.tile.solar.order.TileEntitySextupleAirSolar" "emt.tile.solar.order.TileEntitySeptupleAirSolar" "emt.tile.solar.order.TileEntityOctupleAirSolar" "emt.tile.solar.water.TileEntityDoubleWaterSolar" "emt.tile.solar.water.TileEntityTripleWaterSolar" "emt.tile.solar.water.TileEntityWaterSolar" "emt.tile.solar.water.TileEntityQuadrupleAirSolar" "emt.tile.solar.water.TileEntityQuintupleAirSolar" "emt.tile.solar.water.TileEntitySextupleAirSolar" "emt.tile.solar.water.TileEntitySeptupleAirSolar" "emt.tile.solar.water.TileEntityOctupleAirSolar" "com.lulan.compactkineticgenerators.tileentity.TileCkgE" "com.lulan.compactkineticgenerators.tileentity.TileCkgH" "com.lulan.compactkineticgenerators.tileentity.TileCkgL" "com.lulan.compactkineticgenerators.tileentity.TileCkgM" "com.lulan.compactkineticgenerators.tileentity.TileCkwaE" "com.lulan.compactkineticgenerators.tileentity.TileCkwaH" "com.lulan.compactkineticgenerators.tileentity.TileCkwaL" "com.lulan.compactkineticgenerators.tileentity.TileCkwaM" "com.lulan.compactkineticgenerators.tileentity.TileCkwmE" "com.lulan.compactkineticgenerators.tileentity.TileCkwmH" "com.lulan.compactkineticgenerators.tileentity.TileCkwmL" "com.lulan.compactkineticgenerators.tileentity.TileCkwmM" "com.supsolpans.tiles.TileSpectralSolarPanel" "com.supsolpans.tiles.TileSingularSolarPanel" "com.supsolpans.tiles.TileAdminSolarPanel" "com.supsolpans.tiles.TilePhotonicSolarPanel" "gtPlusPlus.core.tileentities.general.TileEntityFishTrap" "gtPlusPlus.core.tileentities.general.TileEntityDecayablesChest" "net.bdew.gendustry.machines.apiary.TileApiary" "goodgenerator.blocks.tileEntity.EssentiaHatch" "magicbees.tileentity.TileEntityApimancersDrainerCommon" "magicbees.tileentity.TileEntityApimancersDrainerGT" ];
                      description = "The Canonical Class-Names of TileEntities that should be ignored by the WorldAccelerator [default: [com.rwtema.extrautils.tileentity.enderquarry.TileEntityEnderQuarry]]";
                    };
                  };
                };
              };
            };
          };
        };
        pollution = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              PollutionThresholdAirFilter = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "the threshold of pollution above which the electric air filters will start to work [range: 0 ~ 2147483647, default: 10000]";
              };
              bonusByTierT1 = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "T1 bonus tier in this formula: globalMultiplicator * bonusByTier * mufflerAmount * turbineEfficiency * maintenanceEff * Floor(scalingFactor^effectiveTier). This gives the pollution cleaned by the electric air filter per second [range: 0.0 ~ 100.0, default: 1.0]";
              };
              bonusByTierT2 = lib.mkOption {
                type = lib.types.str;
                default = "1.05";
                description = "T2 bonus tier in this formula: globalMultiplicator * bonusByTier * mufflerAmount * turbineEfficiency * maintenanceEff * Floor(scalingFactor^effectiveTier). This gives the pollution cleaned by the electric air filter per second [range: 0.0 ~ 100.0, default: 1.05]";
              };
              bonusByTierT3 = lib.mkOption {
                type = lib.types.str;
                default = "1.1";
                description = "T3 bonus tier in this formula: globalMultiplicator * bonusByTier * mufflerAmount * turbineEfficiency * maintenanceEff * Floor(scalingFactor^effectiveTier). This gives the pollution cleaned by the electric air filter per second [range: 0.0 ~ 100.0, default: 1.1]";
              };
              boostPerAbsorptionFilter = lib.mkOption {
                type = lib.types.str;
                default = "2.0";
                description = "boost applied when a filter has been set in the electric air filter. [range: 1.0 ~ 100.0, default: 2.0]";
              };
              globalMultiplicator = lib.mkOption {
                type = lib.types.str;
                default = "30.0";
                description = "global multiplicator in this formula: globalMultiplicator * bonusByTier * mufflerAmount * turbineEfficiency * maintenanceEff * Floor(scalingFactor^effectiveTier). This gives the pollution cleaned by the electric air filter per second [range: 0.0 ~ 100.0, default: 30.0]";
              };
              scalingFactor = lib.mkOption {
                type = lib.types.str;
                default = "2.5";
                description = "scaling factor in this formula: globalMultiplicator * bonusByTier * mufflerAmount * turbineEfficiency * maintenanceEff * Floor(scalingFactor^effectiveTier). This gives the pollution cleaned by the electric air filter per second [range: 0.0 ~ 100.0, default: 2.5]";
              };
              usagesPerAbsorptionFilter = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "Number of usage per absorption filter. [range: 1 ~ 100, default: 30]";
              };
            };
          };
        };
      };
    };
  };
}
