{lib, ...}: {
  rewards = lib.mkOption {
    description = "rewards configuration (./config/lootgames/rewards.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/lootgames/rewards.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        rewards = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              game_of_light = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    stage_1 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          default_loot_table = lib.mkOption {
                            type = lib.types.str;
                            default = "chest1";
                            description = "Name of the loot table, items from which will be generated in the chest of this stage. This can be adjusted per dimension in \"per_dim_configs\". [default: dungeonChest]";
                          };
                          max_items = lib.mkOption {
                            type = lib.types.int;
                            default = 4;
                            description = "Maximum amount of item stacks to be generated in chest. [range: 1 ~ 256, default: 8]";
                          };
                          min_items = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                            description = "Minimum amount of item stacks to be generated in chest. [range: 0 ~ 256, default: 4]";
                          };
                          per_dim_configs = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = [ ];
                            description = "General Example: [ \"0|minecraft:chests/simple_dungeon\" ] [default: ]";
                          };
                        };
                      };
                    };
                    stage_2 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          default_loot_table = lib.mkOption {
                            type = lib.types.str;
                            default = "chest2";
                            description = "Name of the loot table, items from which will be generated in the chest of this stage. This can be adjusted per dimension in \"per_dim_configs\". [default: mineshaftCorridor]";
                          };
                          max_items = lib.mkOption {
                            type = lib.types.int;
                            default = 6;
                            description = "Maximum amount of item stacks to be generated in chest. [range: 1 ~ 256, default: 10]";
                          };
                          min_items = lib.mkOption {
                            type = lib.types.int;
                            default = 3;
                            description = "Minimum amount of item stacks to be generated in chest. [range: 0 ~ 256, default: 5]";
                          };
                          per_dim_configs = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = [ ];
                            description = "General Example: [ \"0|minecraft:chests/simple_dungeon\" ] [default: ]";
                          };
                        };
                      };
                    };
                    stage_3 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          default_loot_table = lib.mkOption {
                            type = lib.types.str;
                            default = "chest3";
                            description = "Name of the loot table, items from which will be generated in the chest of this stage. This can be adjusted per dimension in \"per_dim_configs\". [default: pyramidJungleChest]";
                          };
                          max_items = lib.mkOption {
                            type = lib.types.int;
                            default = 8;
                            description = "Maximum amount of item stacks to be generated in chest. [range: 1 ~ 256, default: 11]";
                          };
                          min_items = lib.mkOption {
                            type = lib.types.int;
                            default = 4;
                            description = "Minimum amount of item stacks to be generated in chest. [range: 0 ~ 256, default: 6]";
                          };
                          per_dim_configs = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = [ ];
                            description = "General Example: [ \"0|minecraft:chests/simple_dungeon\" ] [default: ]";
                          };
                        };
                      };
                    };
                    stage_4 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          default_loot_table = lib.mkOption {
                            type = lib.types.str;
                            default = "chest4";
                            description = "Name of the loot table, items from which will be generated in the chest of this stage. This can be adjusted per dimension in \"per_dim_configs\". [default: strongholdCorridor]";
                          };
                          max_items = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                            description = "Maximum amount of item stacks to be generated in chest. [range: 1 ~ 256, default: 12]";
                          };
                          min_items = lib.mkOption {
                            type = lib.types.int;
                            default = 5;
                            description = "Minimum amount of item stacks to be generated in chest. [range: 0 ~ 256, default: 7]";
                          };
                          per_dim_configs = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = [ ];
                            description = "General Example: [ \"0|minecraft:chests/simple_dungeon\" ] [default: ]";
                          };
                        };
                      };
                    };
                  };
                };
              };
              minesweeper = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    stage_1 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          default_loot_table = lib.mkOption {
                            type = lib.types.str;
                            default = "chest1";
                            description = "Name of the loot table, items from which will be generated in the chest of this stage. This can be adjusted per dimension in \"per_dim_configs\". [default: dungeonChest]";
                          };
                          max_items = lib.mkOption {
                            type = lib.types.int;
                            default = 4;
                            description = "Maximum amount of item stacks to be generated in chest. [range: 1 ~ 256, default: 8]";
                          };
                          min_items = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                            description = "Minimum amount of item stacks to be generated in chest. [range: 0 ~ 256, default: 4]";
                          };
                          per_dim_configs = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = [ ];
                            description = "General Example: [ \"0|minecraft:chests/simple_dungeon\" ] [default: ]";
                          };
                        };
                      };
                    };
                    stage_2 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          default_loot_table = lib.mkOption {
                            type = lib.types.str;
                            default = "chest2";
                            description = "Name of the loot table, items from which will be generated in the chest of this stage. This can be adjusted per dimension in \"per_dim_configs\". [default: mineshaftCorridor]";
                          };
                          max_items = lib.mkOption {
                            type = lib.types.int;
                            default = 6;
                            description = "Maximum amount of item stacks to be generated in chest. [range: 1 ~ 256, default: 10]";
                          };
                          min_items = lib.mkOption {
                            type = lib.types.int;
                            default = 3;
                            description = "Minimum amount of item stacks to be generated in chest. [range: 0 ~ 256, default: 5]";
                          };
                          per_dim_configs = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = [ ];
                            description = "General Example: [ \"0|minecraft:chests/simple_dungeon\" ] [default: ]";
                          };
                        };
                      };
                    };
                    stage_3 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          default_loot_table = lib.mkOption {
                            type = lib.types.str;
                            default = "chest3";
                            description = "Name of the loot table, items from which will be generated in the chest of this stage. This can be adjusted per dimension in \"per_dim_configs\". [default: pyramidJungleChest]";
                          };
                          max_items = lib.mkOption {
                            type = lib.types.int;
                            default = 8;
                            description = "Maximum amount of item stacks to be generated in chest. [range: 1 ~ 256, default: 11]";
                          };
                          min_items = lib.mkOption {
                            type = lib.types.int;
                            default = 4;
                            description = "Minimum amount of item stacks to be generated in chest. [range: 0 ~ 256, default: 6]";
                          };
                          per_dim_configs = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = [ ];
                            description = "General Example: [ \"0|minecraft:chests/simple_dungeon\" ] [default: ]";
                          };
                        };
                      };
                    };
                    stage_4 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          default_loot_table = lib.mkOption {
                            type = lib.types.str;
                            default = "chest4";
                            description = "Name of the loot table, items from which will be generated in the chest of this stage. This can be adjusted per dimension in \"per_dim_configs\". [default: strongholdCorridor]";
                          };
                          max_items = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                            description = "Maximum amount of item stacks to be generated in chest. [range: 1 ~ 256, default: 12]";
                          };
                          min_items = lib.mkOption {
                            type = lib.types.int;
                            default = 5;
                            description = "Minimum amount of item stacks to be generated in chest. [range: 0 ~ 256, default: 7]";
                          };
                          per_dim_configs = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = [ ];
                            description = "General Example: [ \"0|minecraft:chests/simple_dungeon\" ] [default: ]";
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
}
