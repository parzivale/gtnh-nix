{lib, ...}: {
  lootgames = lib.mkOption {
    description = "lootgames configuration (./config/LootGames/lootgames.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/LootGames/lootgames.cfg";
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
              DungeonLoggerLogLevel = lib.mkOption {
                type = lib.types.str;
                default = "INFO";
                description = "LogLevel for the separate DungeonGenerator Logger. Valid options: info, debug, trace [default: INFO]";
              };
            };
          };
        };
        games = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ExplodeEvent = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable or disable struct exploding on max failed attempts [default: true]";
              };
              LavaEvent = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable or disable struct filling with lava on max failed attempts [default: true]";
              };
              MobEvent = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable or disable struct filling with monsters on max failed attempts [default: true]";
              };
              gol = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Debug = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Enable or disable Debugging of this game (Only enable this if you expect a bug. This will blow up your logfile...) [default: false]";
                    };
                    ExpandPlayFieldAtStage = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                      description = "At which stage should the playfield become a full 3x3 pattern? Set 0 to disable and keep the 4-block size; set 1 to always start with 3x3 [range: 0 ~ 4, default: 2]";
                    };
                    MaxDigits = lib.mkOption {
                      type = lib.types.int;
                      default = 30;
                    };
                    MaxGameTries = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                      description = "How many attempts does a player have? 1 means the struct will fail after the first misclicked block [range: 1 ~ 256, default: 3]";
                    };
                    StartDigits = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                      description = "How many digits should be randomly choosen at game-start? [range: 1 ~ 256, default: 2]";
                    };
                    Timeout = lib.mkOption {
                      type = lib.types.int;
                      default = 15;
                      description = "How long does it take to timeout a game? Value is in seconds. If no player input is done in that time, the game will go to sleep. The next player will start fresh [range: 5 ~ 600, default: 60]";
                    };
                    gamestages = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          stagei = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                DimensionalConfig = lib.mkOption {
                                  type = lib.types.listOf lib.types.str;
                                  default = [ ];
                                  description = "Syntax: <DimensionID>;<LootTableName>;<AdditionalDigitsRequired>; one line for each Dimension. If you use AdditionalDigitsRequired, make sure to use the same or an higher number on each stage [default: []]";
                                };
                                DisplayTime = lib.mkOption {
                                  type = lib.types.int;
                                  default = 1200;
                                  description = "The amount of time (in milliseconds; 1000ms = 1s) to wait at playback before moving to the next color [range: 100 ~ 2000, default: 1200]";
                                };
                                LootTable = lib.mkOption {
                                  type = lib.types.str;
                                  default = "chest1";
                                  description = "The loottable for the chest in this stage [default: dungeonChest]";
                                };
                                MaxItems = lib.mkOption {
                                  type = lib.types.int;
                                  default = 8;
                                  description = "Maximum amount of items to be spawned [range: 1 ~ 256, default: 2]";
                                };
                                MinDigitsRequired = lib.mkOption {
                                  type = lib.types.int;
                                  default = 5;
                                  description = "Minimum correct digits required to complete this stage and unlock the chest. This can be adjusted per-Dimension in S:DimensionalConfig [range: 1 ~ 256, default: 5]";
                                };
                                MinItems = lib.mkOption {
                                  type = lib.types.int;
                                  default = 4;
                                  description = "Minimum amount of items to be spawned [range: 1 ~ 256, default: 2]";
                                };
                                RandomizeSequence = lib.mkOption {
                                  type = lib.types.bool;
                                  default = false;
                                  description = "If true, the pattern will randomize on each level in this stage [default: false]";
                                };
                              };
                            };
                          };
                          stageii = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                DimensionalConfig = lib.mkOption {
                                  type = lib.types.listOf lib.types.str;
                                  default = [ ];
                                  description = "Syntax: <DimensionID>;<LootTableName>;<AdditionalDigitsRequired>; one line for each Dimension. If you use AdditionalDigitsRequired, make sure to use the same or an higher number on each stage [default: []]";
                                };
                                DisplayTime = lib.mkOption {
                                  type = lib.types.int;
                                  default = 800;
                                  description = "The amount of time (in milliseconds; 1000ms = 1s) to wait at playback before moving to the next color [range: 100 ~ 2000, default: 800]";
                                };
                                LootTable = lib.mkOption {
                                  type = lib.types.str;
                                  default = "chest2";
                                  description = "The loottable for the chest in this stage [default: mineshaftCorridor]";
                                };
                                MaxItems = lib.mkOption {
                                  type = lib.types.int;
                                  default = 10;
                                  description = "Maximum amount of items to be spawned [range: 1 ~ 256, default: 4]";
                                };
                                MinDigitsRequired = lib.mkOption {
                                  type = lib.types.int;
                                  default = 10;
                                  description = "Minimum correct digits required to complete this stage and unlock the chest. This can be adjusted per-Dimension in S:DimensionalConfig [range: 1 ~ 256, default: 10]";
                                };
                                MinItems = lib.mkOption {
                                  type = lib.types.int;
                                  default = 5;
                                  description = "Minimum amount of items to be spawned [range: 1 ~ 256, default: 4]";
                                };
                                RandomizeSequence = lib.mkOption {
                                  type = lib.types.bool;
                                  default = false;
                                  description = "If true, the pattern will randomize on each level in this stage [default: false]";
                                };
                              };
                            };
                          };
                          stageiii = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                DimensionalConfig = lib.mkOption {
                                  type = lib.types.listOf lib.types.str;
                                  default = [ ];
                                  description = "Syntax: <DimensionID>;<LootTableName>;<AdditionalDigitsRequired>; one line for each Dimension. If you use AdditionalDigitsRequired, make sure to use the same or an higher number on each stage [default: []]";
                                };
                                DisplayTime = lib.mkOption {
                                  type = lib.types.int;
                                  default = 600;
                                  description = "The amount of time (in milliseconds; 1000ms = 1s) to wait at playback before moving to the next color [range: 100 ~ 2000, default: 600]";
                                };
                                LootTable = lib.mkOption {
                                  type = lib.types.str;
                                  default = "chest3";
                                  description = "The loottable for the chest in this stage [default: pyramidJungleChest]";
                                };
                                MaxItems = lib.mkOption {
                                  type = lib.types.int;
                                  default = 11;
                                  description = "Maximum amount of items to be spawned [range: 1 ~ 256, default: 6]";
                                };
                                MinDigitsRequired = lib.mkOption {
                                  type = lib.types.int;
                                  default = 15;
                                  description = "Minimum correct digits required to complete this stage and unlock the chest. This can be adjusted per-Dimension in S:DimensionalConfig [range: 1 ~ 256, default: 15]";
                                };
                                MinItems = lib.mkOption {
                                  type = lib.types.int;
                                  default = 6;
                                  description = "Minimum amount of items to be spawned [range: 1 ~ 256, default: 6]";
                                };
                                RandomizeSequence = lib.mkOption {
                                  type = lib.types.bool;
                                  default = false;
                                  description = "If true, the pattern will randomize on each level in this stage [default: false]";
                                };
                              };
                            };
                          };
                          stageiv = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                DimensionalConfig = lib.mkOption {
                                  type = lib.types.listOf lib.types.str;
                                  default = [ ];
                                  description = "Syntax: <DimensionID>;<LootTableName>;<AdditionalDigitsRequired>; one line for each Dimension. If you use AdditionalDigitsRequired, make sure to use the same or an higher number on each stage [default: []]";
                                };
                                DisplayTime = lib.mkOption {
                                  type = lib.types.int;
                                  default = 500;
                                  description = "The amount of time (in milliseconds; 1000ms = 1s) to wait at playback before moving to the next color [range: 100 ~ 2000, default: 500]";
                                };
                                LootTable = lib.mkOption {
                                  type = lib.types.str;
                                  default = "chest4";
                                  description = "The loottable for the chest in this stage [default: strongholdCorridor]";
                                };
                                MaxItems = lib.mkOption {
                                  type = lib.types.int;
                                  default = 12;
                                  description = "Maximum amount of items to be spawned [range: 1 ~ 256, default: 8]";
                                };
                                MinDigitsRequired = lib.mkOption {
                                  type = lib.types.int;
                                  default = 25;
                                  description = "Minimum correct digits required to complete this stage and unlock the chest. This can be adjusted per-Dimension in S:DimensionalConfig [range: 1 ~ 256, default: 20]";
                                };
                                MinItems = lib.mkOption {
                                  type = lib.types.int;
                                  default = 7;
                                  description = "Minimum amount of items to be spawned [range: 1 ~ 256, default: 8]";
                                };
                                RandomizeSequence = lib.mkOption {
                                  type = lib.types.bool;
                                  default = true;
                                  description = "If true, the pattern will randomize on each level in this stage [default: true]";
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
            };
          };
        };
        main = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              MinigamesEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Switch to enable or disable the Master-Blocks. If disabled, no minigames will spawn. You can change this ingame [default: false]";
              };
              disableDonorListDownloading = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disables downloading of donors list. It will speed-up mod loading, when you don't have an access to the Pastebin or play offline. [default: false]";
              };
            };
          };
        };
        worldgen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              DimensionWhitelist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "0;12" ];
                description = "List DimensionIDs where LootGame Dungeons are allowed to spawn, with Rhombus Size. Syntax is <DimensionID>:<Rhombus Size> [default: [0; 20]]";
              };
              RetroGenDungeons = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable or disable RetroGen [default: false]";
              };
              WorldGenEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable or disable WorldGen [default: false]";
              };
              WorldGenRhombusSize = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
            };
          };
        };
      };
    };
  };
}
