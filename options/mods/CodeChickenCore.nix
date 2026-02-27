{lib, ...}: {
  CodeChickenCore = lib.mkOption {
    description = "CodeChickenCore configuration (./config/CodeChickenCore.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/CodeChickenCore.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        checkUpdates = lib.mkOption {
          type = lib.types.str;
          default = "false";
        };
        "dev.deobfuscate" = lib.mkOption {
          type = lib.types.str;
          default = "false";
          description = "set to true to completely deobfuscate mcp names";
        };
        "dev.runtimePublic" = lib.mkOption {
          type = lib.types.str;
          default = "false";
          description = "Such mods are doing the wrong thing and should be fixed.";
        };
        checks = lib.mkOption {
          default = {};
          description = "Configuration options for checking various requirements for a modpack.";
          type = lib.types.submodule {
            options = {
              checkRAM = lib.mkOption {
                type = lib.types.str;
                default = "true";
                description = "If set to true, check RAM available for Minecraft before continuing to load";
              };
              minRAM = lib.mkOption {
                type = lib.types.str;
                default = "3GB";
                description = "Amount of RAM minimum this modpack needs to load";
              };
              modPack = lib.mkOption {
                type = lib.types.str;
                default = "GTNH";
                description = "Name of the modpack";
              };
              recRAM = lib.mkOption {
                type = lib.types.str;
                default = "4GB";
                description = "Lower bound of recommended RAM";
              };
              recRAMUpper = lib.mkOption {
                type = lib.types.str;
                default = "6GB";
                description = "Upper bound of recommended RAM";
              };
              wiki = lib.mkOption {
                type = lib.types.str;
                default = "See <a href=\"https://gtnh.miraheze.org/m/3S2\">the Wiki</a> for details.";
                description = "Webpage describing RAM settings";
              };
            };
          };
        };
        tweaks = lib.mkOption {
          default = {};
          description = "Various tweaks that can be applied to game mechanics.";
          type = lib.types.submodule {
            options = {
              doFireTickOut = lib.mkOption {
                type = lib.types.str;
                default = "true";
                description = "If set to true and doFireTick is disabled in the game rules, fire will still dissipate if it's not over a fire source";
              };
              environmentallyFriendlyCreepers = lib.mkOption {
                type = lib.types.str;
                default = "false";
                description = "If set to true, creepers will not destroy landscape. (A version of mobGriefing setting just for creepers)";
              };
              finiteWater = lib.mkOption {
                type = lib.types.str;
                default = "true";
                description = "If set to true two adjacent water source blocks will not generate a third.";
              };
              replaceLavaFX = lib.mkOption {
                type = lib.types.str;
                default = "false";
                description = "Set this to true to use the pre1.5 lava textures";
              };
              replaceWaterFX = lib.mkOption {
                type = lib.types.str;
                default = "false";
                description = "Set this to true to use the pre1.5 water textures";
              };
              softLeafReplace = lib.mkOption {
                type = lib.types.str;
                default = "false";
                description = "If set to false, leaves will only replace air when growing";
              };
            };
          };
        };
      };
    };
  };
}
