{lib, ...}: {
  EnderZoo = lib.mkOption {
    description = "EnderZoo configuration (./config/enderzoo/EnderZoo.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/enderzoo/EnderZoo.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        charges = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              concussionChargeEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If false Concussion Charges will be disabled [default: true]";
              };
              confusingChargeEffectDuration = lib.mkOption {
                type = lib.types.int;
                default = 300;
                description = "Numer of ticks the confusion effect active. Scales with distance from the expolosion";
              };
              confusingChargeEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If false Confusing Charges will be disabled [default: true]";
              };
              confusingChargeRange = lib.mkOption {
                type = lib.types.float;
                default = 6.0;
                description = "The range of the confusion charges effect";
              };
              enderChargeEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If false Ender Charges will be disabled [default: true]";
              };
              enderChargeMaxTeleportRange = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "The max range effected entities will be teleported. Distance is randomised";
              };
              enderChargeRange = lib.mkOption {
                type = lib.types.float;
                default = 6.0;
                description = "The range of the ender charges effect";
              };
            };
          };
        };
        "concussion creeper" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              concussionCreeperConfusionDuration = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Sets the durtaion in ticks of the confusion effect applied on explosion";
              };
              concussionCreeperEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Wether ConcussionCreepers are enabled [default: true]";
              };
              concussionCreeperExplosionRange = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "The range of the 'teleport explosion'";
              };
              concussionCreeperHealth = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
                description = "Health of Concussion Creeper. 40=Enderman health, 20=Zombie health";
              };
              concussionCreeperMaxTeleportRange = lib.mkOption {
                type = lib.types.int;
                default = 32;
                description = "Sets the max range entites can be telported when the creeper explodes";
              };
              concussionCreeperOldTexture = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, uses the old texture for the Concussion Creeper.";
              };
            };
          };
        };
        debug = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              spawnConfigPrintDetailedOutput = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When enabled detailed information about spawn config will be printed to the log. [default: false]";
              };
            };
          };
        };
        difficulty = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enderZooDifficultyModifierEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When enabled health and base damage for all Ender Zoo mobs will be modified based on difficulty [default: true]";
              };
              enderZooEasyAttackModifier = lib.mkOption {
                type = lib.types.float;
                default = 0.9;
                description = "When in easy difficulty base attack damage is multiplied by this value";
              };
              enderZooEasyHealthModifier = lib.mkOption {
                type = lib.types.float;
                default = 0.9;
                description = "When in easy difficulty base health is multiplied by this value, rounded to the nearest whole 'heart'";
              };
              enderZooHardAttackModifier = lib.mkOption {
                type = lib.types.float;
                default = 1.1;
                description = "When in easy difficulty base attack damage is multiplied by this value";
              };
              enderZooHardHealthModifier = lib.mkOption {
                type = lib.types.float;
                default = 1.1;
                description = "When in hard mode base health is multiplied by this value, rounded to the nearest whole 'heart'";
              };
              enderZooNormalAttackModifier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "When in easy difficulty base attack damage is multiplied by this value";
              };
              enderZooNormalHealthModifier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "When in normal difficultry base health is multiplied by this value, rounded to the nearest whole 'heart'";
              };
              globalDifficultyModifierEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When enabled health and base damage for all non Ender Zoo mobs will be modified based on difficulty [default: true]";
              };
              globalEasyAttackModifier = lib.mkOption {
                type = lib.types.float;
                default = 0.9;
                description = "When in easy difficulty base attack damage is multiplied by this value";
              };
              globalEasyHealthModifier = lib.mkOption {
                type = lib.types.float;
                default = 0.9;
                description = "When in easy difficulty base health is multiplied by this value, rounded to the nearest whole 'heart'";
              };
              globalHardAttackModifier = lib.mkOption {
                type = lib.types.float;
                default = 1.1;
                description = "When in easy difficulty base attack damage is multiplied by this value";
              };
              globalHardHealthModifier = lib.mkOption {
                type = lib.types.float;
                default = 1.1;
                description = "When in hard mode base health is multiplied by this value, rounded to the nearest whole 'heart'";
              };
              globalNormalAttackModifier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "When in easy difficulty base attack damage is multiplied by this value";
              };
              globalNormalHealthModifier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "When in normal difficultry base health is multiplied by this value, rounded to the nearest whole 'heart'";
              };
            };
          };
        };
        "dire slime" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              direSlimeAttackDamage = lib.mkOption {
                type = lib.types.float;
                default = 3.0;
                description = "Base attack damage of the dire slime.";
              };
              direSlimeAttackDamageLarge = lib.mkOption {
                type = lib.types.float;
                default = 8.0;
                description = "Base attack damage of the large dire slime.";
              };
              direSlimeAttackDamageMedium = lib.mkOption {
                type = lib.types.float;
                default = 5.0;
                description = "Base attack damage of the medium dire slime.";
              };
              direSlimeChance = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
                description = "The chance that a Dire Slime will be spawned (0 = never, 1 = always).";
              };
              direSlimeChanceLarge = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
                description = "The chance a large will spawn when a medium Dire Slimes is killed (eg 0.02 for a 2% chance)";
              };
              direSlimeChanceMedium = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
                description = "The chance a medium will spawn when a small Dire Slimes is killed (eg 0.12 for a 12% chance).";
              };
              direSlimeEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If false Dire Slime will be disabled [default: true]";
              };
              direSlimeHealth = lib.mkOption {
                type = lib.types.float;
                default = 4.0;
                description = "Base health of the Dire Slime.";
              };
              direSlimeHealthLarge = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
                description = "Base health of the medium Dire Slime.";
              };
              direSlimeHealthMedium = lib.mkOption {
                type = lib.types.float;
                default = 8.0;
                description = "Base health of the medium Dire Slime.";
              };
            };
          };
        };
        "dire wolf" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              direWolfAggresiveRange = lib.mkOption {
                type = lib.types.float;
                default = 3.0;
                description = "If a player gets within this range they will be attacked";
              };
              direWolfAttackDamage = lib.mkOption {
                type = lib.types.float;
                default = 8.0;
                description = "Base attack damage of the dire wolf";
              };
              direWolfEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If false Dire Wolves will be disabled [default: true]";
              };
              direWolfHardAttackModifier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "The increase to damage when playing on hard";
              };
              direWolfHealth = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
                description = "Base health of the Dire Wolf";
              };
              direWolfHowlChance = lib.mkOption {
                type = lib.types.float;
                default = 0.01;
                description = "The chance a dire wolf will howl when it is asked to play a sound. Doubled at night, and doubled again near full moon. Defaults to 0.05 (5%)";
              };
              direWolfHowlDelay = lib.mkOption {
                type = lib.types.int;
                default = 18000;
                description = "Minimum time, in ticks, between dire wolf howls. This does not include pack howls. Defaults to 15 minutes";
              };
              direWolfHowlVolumeMult = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
                description = "The volume multiplier for the dire wolf's howl. 12 is default.";
              };
              direWolfPackAttackEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When true all nearby dire wolves will join an attack [default: true]";
              };
              direWolfPackHowlAmount = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "The amount of other dire wolves that will \"join in\" with the initial howl, per pack howl. 2x near full moon.";
              };
              direWolfPackHowlChance = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
                description = "The chance that when a dire wolf howls, nearby dire wolves will \"join in\" to a pack howl. 4x near full moon. Defaults to 0.2 (20%)";
              };
            };
          };
        };
        enchantments = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enchantmentWitherArrowDuration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "Duration of the wither effect in ticks";
              };
              enchantmentWitherArrowId = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "The id of the enchantment. If set to -1 the lowest unassigned id will be used.";
              };
              enchantmentWitherArrowMaxEnchantability = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "The maximum required level";
              };
              enchantmentWitherArrowMinEnchantability = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "The minimum required enchantability level";
              };
              enchantmentWitherArrowWeight = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The weight (or chance of getting) the enchantment. eg sharpness=10, knockback = 5, fire aspect = 2, silk touch = 1";
              };
              enchantmentWitherWeaponDuration = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "Duration of the wither effect in ticks";
              };
              enchantmentWitherWeaponId = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "The id of the enchantment. If set to -1 the lowest unassigned id will be used.";
              };
              enchantmentWitherWeaponMaxEnchantability = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "The maximum required level";
              };
              enchantmentWitherWeaponMinEnchantability = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "The minimum required enchantability level";
              };
              enchantmentWitherWeaponWeight = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The weight (or chance of getting) the enchantment. eg sharpness=10, knockback = 5, fire aspect = 2, silk touch = 1";
              };
              useAltWitherPotionEffectMask = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true if the wither effect is conflicting with another potion (e.g. leaping) [default: false]";
              };
            };
          };
        };
        enderminy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enderminyAttackDamage = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Attack damage of Enderminies. 7=Enderman damage, 3=Zombie damage";
              };
              enderminyAttacksCreepers = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When true Enderminies will attack creepers [default: true]";
              };
              enderminyAttacksPlayerOnSight = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When true an Enderminy will attack a player if it looks at them, otherwise they are neutral mobs. [default: false]";
              };
              enderminyEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Wether Enderminies are enabled [default: true]";
              };
              enderminyGroupAgro = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When true attacking one Enderminy will cause other Enderminies who witness the attack to attack the player as well [default: true]";
              };
              enderminyHealth = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Health of Enderminies. 40=Enderman health, 20=Zombie health";
              };
              enderminyMaxGroupSize = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Maximum number of Enderminies that will spawn in a single group";
              };
              enderminyMinSpawnY = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "The minimum Y level at which enderminies will spawn";
              };
              enderminyOldTexture = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, uses the old texture for the Enderminy.";
              };
              enderminySpawnInLitAreas = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When true enderminies will spawn in well lit areas, when false they will only spawn in dark areas. [default: false]";
              };
              enderminySpawnOnlyOnGrass = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When true enderminies will spawn only on grass blocks. [default: true]";
              };
            };
          };
        };
        "fallen knight" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              fallKnightMountedArchesMaintainDistance = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When true mounted archer knigts will attempt to keep distance between themselves and their target [default: true]";
              };
              fallenKnightArchersSwitchToMelee = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When true archer knigts will switch to a sword when target is within melee range. Doesn't apply to mounted archers if fallKnightMountedArchesMaintainDistance is true [default: true]";
              };
              fallenKnightBaseDamage = lib.mkOption {
                type = lib.types.float;
                default = 4.0;
                description = "Base damage of a knight";
              };
              fallenKnightChanceArmorUpgrade = lib.mkOption {
                type = lib.types.float;
                default = 0.20000000298023224;
                description = "The chance the type of armor equipped will be improved";
              };
              fallenKnightChanceArmorUpgradeHard = lib.mkOption {
                type = lib.types.float;
                default = 0.4000000059604645;
                description = "The chance the type of armor equipped will be improved when dificult is hard";
              };
              fallenKnightChanceMounted = lib.mkOption {
                type = lib.types.float;
                default = 0.75;
                description = "The chance a spawned knight will be mounted";
              };
              fallenKnightChancePerArmorPiece = lib.mkOption {
                type = lib.types.float;
                default = 0.699999988079071;
                description = "The chance each armor piece has of being added to a spawned knight";
              };
              fallenKnightChancePerArmorPieceHard = lib.mkOption {
                type = lib.types.float;
                default = 0.8999999761581421;
                description = "The chance each armor piece has of being added to a spawned knight when difficulty is set to hard";
              };
              fallenKnightChargeSpeed = lib.mkOption {
                type = lib.types.float;
                default = 1.2;
                description = "The speed at which a knight will charge its target";
              };
              fallenKnightEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Wether Fallen Knights are enabled [default: true]";
              };
              fallenKnightFollowRange = lib.mkOption {
                type = lib.types.float;
                default = 40.0;
                description = "Follow range of a knight";
              };
              fallenKnightHealth = lib.mkOption {
                type = lib.types.float;
                default = 20.0;
                description = "Health of a knight";
              };
              fallenKnightRangedMaxAttackPause = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "The max number of ticks between ranged attacks";
              };
              fallenKnightRangedMaxRange = lib.mkOption {
                type = lib.types.float;
                default = 15.0;
                description = "The max attack range when using a bow";
              };
              fallenKnightRangedMinAttackPause = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "The min number of ticks between ranged attacks";
              };
              fallenKnightRangedRatio = lib.mkOption {
                type = lib.types.float;
                default = 0.25;
                description = "The precentage of spawned knoghts equipped with bows";
              };
            };
          };
        };
        "fallen mount" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              fallenMountBaseAttackDamage = lib.mkOption {
                type = lib.types.float;
                default = 4.0;
                description = "Base attack damage of the mount";
              };
              fallenMountChanceArmorUpgrade = lib.mkOption {
                type = lib.types.float;
                default = 0.009999999776482582;
                description = "The chance a mount's armor will be upgraded";
              };
              fallenMountChanceArmorUpgradeHard = lib.mkOption {
                type = lib.types.float;
                default = 0.05000000074505806;
                description = "The chance a mount's armor will be upgraded when difficulty is hard";
              };
              fallenMountChanceArmored = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
                description = "The chance a spawned mount will be armored";
              };
              fallenMountChanceArmoredHard = lib.mkOption {
                type = lib.types.float;
                default = 0.8999999761581421;
                description = "The chance a spawned mount will be armored when difficult is hard";
              };
              fallenMountChargeSpeed = lib.mkOption {
                type = lib.types.float;
                default = 2.5;
                description = "he speed at which a mount will charge its target";
              };
              fallenMountEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If false fallen mounts will be disabled [default: true]";
              };
              fallenMountHealth = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
                description = "Base attack health of the mount";
              };
              fallenMountShadedByRider = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When true a mount will not burn in the sun unless its rider is [default: true]";
              };
            };
          };
        };
        guardian = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              guardiansBowDamageBonus = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
                description = "The damage bonus applied to arrows fire from the bow.";
              };
              guardiansBowDrawTime = lib.mkOption {
                type = lib.types.int;
                default = 14;
                description = "The number of ticks it takes to fully draw the guardians bow. A 'vanilla' bow takes 20 ticks.";
              };
              guardiansBowEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If false the Guardians Bow will be disabled [default: true]";
              };
              guardiansBowForceMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 3.0;
                description = "Effects the speed with which arrows leave the bow. A 'vanilla' bow has a multiplier of 2.";
              };
              guardiansBowFovMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 0.3499999940395355;
                description = "The reduction in FOV when the bow is fullen drawn (the zoom level). A 'vanilla' bow has a value of 0.15";
              };
            };
          };
        };
        "wither cat" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              witherCatAngryAttackDamageHardModifier = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
                description = "The increase to damage when playing on hard";
              };
              witherCatAttackDamage = lib.mkOption {
                type = lib.types.float;
                default = 3.0;
                description = "Base attack damage of the wither cat";
              };
              witherCatEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If false Wither Cats will be disabled [default: true]";
              };
              witherCatHealth = lib.mkOption {
                type = lib.types.float;
                default = 12.0;
                description = "Base health of the wither cat";
              };
            };
          };
        };
        "wither witch" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              witherWitchEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If false Wither Witches will be disabled [default: true]";
              };
              witherWitchHealth = lib.mkOption {
                type = lib.types.float;
                default = 30.0;
                description = "Base attack damage of the mount";
              };
              witherWitchMaxCats = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The maximum number of cats spawned with a Wither Witch";
              };
              witherWitchMinCats = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "The minimum number of cats spawned with a Wither Witch";
              };
            };
          };
        };
      };
    };
  };
}
