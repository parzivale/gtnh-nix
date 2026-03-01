{lib, ...}: {
  core_common = lib.mkOption {
    description = "core_common configuration (./config/cofh/core/common.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/cofh/core/common.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        Enchantment = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Holding = lib.mkOption {
                type = lib.types.int;
                default = 103;
              };
              Multishot = lib.mkOption {
                type = lib.types.int;
                default = 104;
              };
            };
          };
        };
        General = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              EnableDismantleLogging = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to TRUE for this to log when a block is dismantled.";
              };
              EnableGenericDeathMessage = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to TRUE to display death messages for any named entity.";
              };
              EnableItemStacking = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to FALSE to disable items on the ground from trying to stack. This can improve server performance.";
              };
              EnableUpdateNotifications = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to TRUE to be informed of non-critical updates. You will still receive critical update notifications.";
              };
            };
          };
        };
        Holiday = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              HoHoNo = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to TRUE to disable Christmas cheer. Scrooge. :(";
              };
              IHateApril = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to TRUE to disable April Foolishness.";
              };
            };
          };
        };
        Security = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              OpsCanAccessSecureBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to TRUE to allow for Server Ops to access 'secure' blocks. Your players will be warned upon server connection.";
              };
            };
          };
        };
        Version = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Identifier = lib.mkOption {
                type = lib.types.str;
                default = "1.7.10R3.1.4";
              };
            };
          };
        };
        World = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              FlatBedrock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This will flatten the bedrock layer.";
              };
              FlatBedrockLayers = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "The number of layers of bedrock to flatten to. (Max: 8)";
              };
              ReplaceVanillaGeneration = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "This allows for vanilla Minecraft ore generation to be REPLACED. Configure in the Vanilla.json file; vanilla defaults have been provided. If you rename the Vanilla.json file, this option WILL NOT WORK.";
              };
              RetroactiveFlatBedrock = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If FlatBedrock is enabled, this will enforce it in previously generated chunks.";
              };
              RetroactiveOreGeneration = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "This will retroactively generate ores in previously generated chunks.";
              };
              Tweaks = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    TreeGrowthChance = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                      description = "Set this to a value > 1 to make trees grow more infrequently. Rate is 1 in N. Example: If this value is set to 3, trees will take 3x the time to grow, on average.";
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
}
