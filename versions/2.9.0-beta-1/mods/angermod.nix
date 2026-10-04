{ lib, ... }:
{
  angermod_cfg = lib.mkOption {
    description = "angermod_cfg configuration (./config/angermod.cfg)";
    default = { };
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/angermod.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        block-break-anger = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Breaking certain blocks will anger mobs. [default: false]";
              };
              endBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "gregtech:gt.blockores2" ];
                description = "Define all Blocks here where Enderman should become angry when you break them. [default: [gregtech:gt.blockores]]";
              };
              endermanAggroRange = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "The range at which endermen will get angered by broken blocks in the End. [range: 2 ~ 128, default: 16]";
              };
              netherBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "gregtech:gt.blockores2" ];
                description = "Define all Blocks here where Zombie Pigmen should become angry when you break them. [default: [gregtech:gt.blockores]]";
              };
              pigmanAggroRange = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "The range at which zombie pigmen will get angered by broken blocks in the Nether. [range: 2 ~ 128, default: 16]";
              };
            };
          };
        };
        friendly-animal-revenge = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              chickenFoodTrigger = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "chicken"
                  "egg"
                ];
                description = "If the food eaten by the player contains these keywords, all CHICKENS around will become angry (or flee) [default: [chicken], [egg]]";
              };
              cowFoodTrigger = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "beef" ];
                description = "If the food eaten by the player contains these keywords, all COWS around will become angry (or flee) [default: [beef]]";
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to true, sheep will attack/flee if you eat mutton, pigs if you eat pork,... The attack/flee is based on additional mods you have installed. [default: false]";
              };
              pigFoodTrigger = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "pork" ];
                description = "If the food eaten by the player contains these keywords, all PIGS around will become angry (or flee) [default: [pork]]";
              };
              revengeRadius = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "[range: 2 ~ 128, default: 16]";
              };
              sheepFoodTrigger = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "mutton" ];
                description = "If the food eaten by the player contains these keywords, all SHEEP around will become angry (or flee) [default: [mutton]]";
              };
            };
          };
        };
        kamikaze = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              butcherItems = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "gt.metatool.01.34"
                  "gt.metatool.01.36"
                  "canesword"
                  "daggerOfSacrifice"
                  "glass_sacrificial_dagger"
                  "glass_dagger_of_sacrifice"
                ];
                description = "If the player is using one of these items, entities will not explode if they are killed. [default: [flint]]";
              };
              chance = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Chance, in percent, how often a Kamikaze event will happen. [range: 0 ~ 100, default: 5]";
              };
              doTerrainDamage = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If set to true, the kamikaze event will cause terrain damage (but will still follow the 'mobGriefing' gamerule) [default: false]";
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Killed passive mobs have a chance to explode unless killed with the right tool. [default: false]";
              };
            };
          };
        };
        spawn-protection = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "New / respawned players will be ignored by monsters until they attack something, move, or their timer runs out. [default: false]";
              };
              maxDuration = lib.mkOption {
                type = lib.types.int;
                default = 90;
                description = "The maximum number of seconds a player will be protected from damage if he is just standing still and doing nothing. [range: 1 ~ 2048, default: 10]";
              };
              moveTolerance = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "The number of blocks the player is able to move away from their initial spawn location before their protection fades. [range: 1 ~ 2048, default: 5]";
              };
              protectionAffectingItems = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "EMT:BaseBaubles" ];
                description = "Set items here which change players invulnerability to prevent this mod from conflicting with them. You will notice those, as they will spam the console with *protection fades* messages. [default: [EMT:BaseBaubles]]";
              };
            };
          };
        };
      };
    };
  };
}
