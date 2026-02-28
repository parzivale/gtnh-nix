{lib, ...}: {
  HardcoreEnderExpansion = lib.mkOption {
    description = "HardcoreEnderExpansion configuration (./config/HardcoreEnderExpansion.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/HardcoreEnderExpansion.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        client = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              compendiumSmoothText = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Special text rendering mode for Ender Compendium, smooths out aliasing in Large GUI scale.";
              };
              enableMusic = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Custom music playing in the End dimension and new Music Discs. Music download: https://hee-music.chylex.com";
              };
              hardcoreEnderbaconMode = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "0 = enabled on April Fools, 1 = always enabled, 2 = never enabled.";
              };
              removeVanillaDelay = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Removes long delays between vanilla music tracks. This will override music from other mods.";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              IMC = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = ["Write your message here"];
                description = "List of IMC/API messages, documentation can be found on http://hee-api.chylex.com";
              };
              achievementStartId = lib.mkOption {
                type = lib.types.int;
                default = 3500;
                description = "Starting ID of achievements, only change this if there is a conflict.";
              };
              decompositionBlacklist = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Blacklist of items that should not be decomposable or decomposed into. Visit http://hee.chylex.com/config for syntax and examples.";
              };
              enableTempleCaller = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Mechanic that allows players to reset the End, may not be desirable on servers.";
              };
              gooBattlesWater = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Ender Goo interacts with Water by battling it, this might cause lag from block updates.";
              };
              logDebuggingInfo = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Only use for debugging, enabling debug logging will have severe impact on game performance!";
              };
              overpoweredMobs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Additional abilities and increased attributes of mobs in the End, useful for modpacks with powerful weapons and armor.";
              };
              overrideBiomeMobs = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Prevents other mods from changing mobs that spawn in the End.";
              };
              overrideRemoveBrokenRecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              overrideWorldGen = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Prevents other mods from adding worldgen features to the End.";
              };
              overworldEndermanMultiplier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "Multiplies spawn weight of Endermen for each overworld biome.";
              };
            };
          };
        };
        notifications = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableBuildCheck = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "It is highly suggested to keep this option enabled. This will detect broken builds with critical errors that can crash your game. These are usually fixed very quickly, but it is important to notify people who downloaded the broken build.";
              };
              enableNewerMC = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Checks whether a new version for newer Minecraft is available.";
              };
              enableOneReportPerUpdate = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Each update only shows a single report.";
              };
              enableUpdateNotifications = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Notifies users about new updates. The notifications can be customized with other options. Due to occasional misconceptions: the notifications have no effect on the game performance.";
              };
            };
          };
        };
      };
    };
  };
}
