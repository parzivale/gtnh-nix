{lib, ...}: {
  ServerUtilities = lib.mkOption {
    description = "ServerUtilities configuration (./serverutilities/serverutilities.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./serverutilities/serverutilities.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        afk = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables afk timer. [default: true]";
              };
              enabled_singleplayer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables afk timer in singleplayer. [default: true]";
              };
              notification_timer = lib.mkOption {
                type = lib.types.str;
                default = "5m";
                description = "After how much time it will display notification to all players. [default: 5m]";
              };
            };
          };
        };
        auto_shutdown = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables auto-shutdown. [default: false]";
              };
              enabled_singleplayer = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables auto-shutdown in singleplayer worlds. [default: false]";
              };
              times = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = ["04:00" "16:00"];
                description = "Server will automatically shut down when system time matches a value. Format: HH:MM. [default: [04:00], [16:00]]";
              };
            };
          };
        };
        backups = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              additional_backup_files = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "journeymap/data/sp/\$WORLDNAME/**"
                  "TCNodeTracker/\$WORLDNAME/**"
                  "saves/NEI/global/**"
                  "saves/NEI/local/\$WORLDNAME/**"
                  "visualprospecting/client/*/\$WORLDNAME_*/**"
                  "visualprospecting/server/\$WORLDNAME_*/**"
                ];
                description = "List of additional paths to include in backup. Use / as separator, * as wildcard, \$WORLDNAME for save name.";
              };
              backup_folder_path = lib.mkOption {
                type = lib.types.str;
                default = "./backups/";
                description = "Path to backups folder. [default: ./backups/]";
              };
              # Stored as S: — ServerUtilities reads this as a string and parses it
              backup_timer = lib.mkOption {
                type = lib.types.str;
                default = "0.5";
                description = "Time between backups in hours. [range: 0.0 ~ max, default: 0.5]";
              };
              backups_to_keep = lib.mkOption {
                type = lib.types.int;
                default = 12;
                description = "Number of backup files to keep before deleting old ones. [range: 1 ~ 2147483647, default: 12]";
              };
              compression_level = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "How much the backup file will be compressed. 0 = uncompressed, 1 = best speed, 9 = smallest. [range: 0 ~ 9, default: 1]";
              };
              delete_custom_name_backups = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Delete backups that have a custom name set through /backup start <name> [default: true]";
              };
              display_file_size = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prints (current size | total size) when backup is done [default: true]";
              };
              enable_backups = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables backups. [default: true]";
              };
              max_folder_size = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Max size of backup folder in GB. 0 = disabled, use backups_to_keep instead. [range: 0 ~ 2147483647, default: 0]";
              };
              need_online_players = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Backups won't run if no players are online. [default: true]";
              };
              only_backup_claimed_chunks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Only include claimed chunks in backup. Faster and smaller but unclaimed chunks will be unrecoverable. [default: false]";
              };
              silent_backup = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Silence backup notifications. [default: false]";
              };
              use_separate_thread = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Run backup in a separated thread (recommended) [default: true]";
              };
            };
          };
        };
        chat = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              add_nickname_tilde = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Adds ~ to player names that have changed nickname to prevent trolling. [default: false]";
              };
              replace_tab_names = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Replaces player names in the TAB screen with the names used in chat. [default: true]";
              };
            };
          };
        };
        commands = lib.mkOption {
          default = {};
          description = "Toggle individual commands on or off.";
          type = lib.types.submodule {
            options = {
              back = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              backup = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              chunks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              dump_chunkloaders = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              dump_permissions = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              dump_stats = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              fly = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              god = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              heal = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              home = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              inv = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              kickme = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              killall = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              leaderboard = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              mute = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              nbtedit = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              nick = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              pregen = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              ranks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "rec" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              reload = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              rtp = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              seek_block = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              spawn = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              tpa = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
              tpl = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              trash_can = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              vanish = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              warp = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: true]";
              };
            };
          };
        };
        debugging = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              dev_sidebar_buttons = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "See dev-only sidebar buttons. They probably don't do anything. [default: false]";
              };
              gui_widget_bounds = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "See GUI widget bounds when you hold B. [default: false]";
              };
              log_chunkloading = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Print a message in console every time a chunk is forced or unforced. [default: false]";
              };
              log_config_editing = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Log config editing. [default: false]";
              };
              log_events = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Log all events that extend EventBase. [default: false]";
              };
              log_network = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Log incoming and outgoing network messages. [default: false]";
              };
              log_teleport = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Log player teleporting. [default: false]";
              };
              print_more_errors = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Print more errors. [default: false]";
              };
              print_more_info = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Print more info. [default: false]";
              };
              special_commands = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables special debug commands. [default: false]";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enable_pause_when_empty_property = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Backports 1.20's 'pause-when-empty-seconds' server property. [default: true]";
              };
              merge_offline_mode_players = lib.mkOption {
                type = lib.types.str;
                default = "TRUE";
                description = "Merges player profiles for players who logged in offline. Possible values: [TRUE, FALSE, DEFAULT] [default: TRUE]";
              };
            };
          };
        };
        login = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enable_motd = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables message of the day. [default: false]";
              };
              enable_starting_items = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables starting items. [default: false]";
              };
              # Values in this list should be quoted strings if they contain spaces, e.g. ["\"Hello player!\""]
              motd = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = ["\"Hello player!\""];
                description = "Message of the day displayed when player joins. [default: [Hello player!]]";
              };
              # Format: '{id:"ID",Count:X,Damage:X,tag:{}}' — use /print_item to get NBT of item in hand
              starting_items = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [];
                description = "Items to give player when they first join. Format: '{id:\"ID\",Count:X,Damage:X,tag:{}}'";
              };
            };
          };
        };
        ranks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              command_permissions = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Add permissions for commands and allow them to be controlled by ranks. [default: true]";
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables Ranks. [default: true]";
              };
              override_chat = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds chat colors/rank-specific syntax. [default: true]";
              };
            };
          };
        };
        tasks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              cleanup = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    enabled = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Enables periodic removal of entities [default: false]";
                    };
                    experience = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Include experience orbs in cleanup [default: true]";
                    };
                    hostiles = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Include hostile mobs in cleanup [default: true]";
                    };
                    # True D: float — ServerUtilities reads this via getDouble()
                    interval = lib.mkOption {
                      type = lib.types.float;
                      default = 2.0;
                      description = "How often the cleanup should run in hours [range: 4.9E-324 ~ max, default: 2.0]";
                    };
                    items = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Include items on the ground in cleanup [default: true]";
                    };
                    passives = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Include passive mobs in cleanup [default: false]";
                    };
                    silent = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Silence cleanup warning that are sent prior to starting [default: false]";
                    };
                  };
                };
              };
            };
          };
        };
        teams = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              autocreate_mp = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Automatically creates a team for player on multiplayer, based on their username and with a random color. [default: false]";
              };
              autocreate_sp = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Automatically creates (or joins) a team on singleplayer/LAN with ID 'singleplayer'. [default: true]";
              };
              disable_teams = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable teams entirely [default: false]";
              };
              force_team_prefix = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Forces player chat messages to be prefixed with their team name. [default: false]";
              };
              grief_protection = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Don't allow other players to break blocks in claimed chunks [default: true]";
              };
              hide_team_notification = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable no team notification entirely. [default: false]";
              };
              interaction_protection = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Don't allow other players to interact with blocks in claimed chunks [default: true]";
              };
            };
          };
        };
        world = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              # Note: empty lists always render with S: prefix in lib.nix regardless of element type
              blocked_claiming_dimensions = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [];
                description = "Dimensions where chunk claiming isn't allowed. [default: []]";
              };
              chunk_claiming = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables chunk claiming. [default: true]";
              };
              chunk_loading = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables chunk loading. Has no effect if chunk_claiming is false. [default: true]";
              };
              disable_player_suffocation_damage = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disables player damage when they are stuck in walls. [default: false]";
              };
              disabled_right_click_items = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [];
                description = "Items with right-click disabled. Syntax: modid:item:metadata or modid:item:*. [default: []]";
              };
              enable_explosions = lib.mkOption {
                type = lib.types.str;
                default = "TRUE";
                description = "Explosion setting. Possible values: [TRUE, FALSE, DEFAULT] [default: DEFAULT]";
              };
              enable_player_sleeping_percentage = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enabled Player Sleeping Percentage to skip night. [default: false]";
              };
              enable_pvp = lib.mkOption {
                type = lib.types.str;
                default = "TRUE";
                description = "PVP setting. Possible values: [TRUE, FALSE, DEFAULT] [default: DEFAULT]";
              };
              forced_spawn_dimension_time = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Locked time in ticks in spawn dimension. -1=disabled, 0=morning, 6000=noon, 12000=evening, 18000=midnight. [range: -1 ~ 23999, default: -1]";
              };
              forced_spawn_dimension_weather = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Locked weather in spawn dimension. -1=disabled, 0=clear, 1=raining, 2=thunderstorm. [range: -1 ~ 2, default: -1]";
              };
              player_sleeping_percentage = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "Default Player Sleeping percentage gamerule initial value. [range: 0 ~ 100, default: 50]";
              };
              # True D: floats
              rtp_max_distance = lib.mkOption {
                type = lib.types.float;
                default = 100000.0;
                description = "Max /rtp distance [range: 4.9E-324 ~ max, default: 100000.0]";
              };
              rtp_max_tries = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "Max tries /rtp does before failure. [range: -2147483648 ~ 2147483647, default: 200]";
              };
              rtp_min_distance = lib.mkOption {
                type = lib.types.float;
                default = 1000.0;
                description = "Min /rtp distance [range: 4.9E-324 ~ max, default: 1000.0]";
              };
              safe_spawn = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, explosions and hostile mobs in spawn area will be disabled, players won't be able to attack each other in spawn area. [default: false]";
              };
              show_playtime = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Show play time in corner. [default: false]";
              };
              spawn_area_in_sp = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable spawn area in singleplayer. [default: false]";
              };
              spawn_dimension = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Spawn dimension. Overworld by default. [range: -2147483648 ~ 2147483647, default: 0]";
              };
              spawn_radius = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Spawn radius. You must set spawn-protection in server.properties to 0! [range: -2147483648 ~ 2147483647, default: 0]";
              };
              unload_erroring_chunks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Unloads erroring chunks if dimension isn't loaded or some other problem occurs. [default: false]";
              };
              logging = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    block_broken = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Logs block breaking. [default: true]";
                    };
                    block_placed = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Logs block placement. [default: true]";
                    };
                    chat_enable = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Enables chat logging. [default: false]";
                    };
                    enabled = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Enables world logging. [default: false]";
                    };
                    entity_attacked = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Logs player attacks on other players/entities. [default: true]";
                    };
                    exclude_mob_entity = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Exclude mobs from entity attack logging. [default: true]";
                    };
                    include_creative_players = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Includes creative players in world logging. [default: false]";
                    };
                    include_fake_players = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Includes fake players in world logging. [default: false]";
                    };
                    item_clicked_in_air = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Logs item clicking in air. [default: true]";
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

  Aurora = lib.mkOption {
    description = "ServerUtilities Aurora webserver configuration (./serverutilities/aurora.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./serverutilities/aurora.cfg";
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
              enable = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable the localhost server [default: false]";
              };
              port = lib.mkOption {
                type = lib.types.int;
                default = 48574;
                description = "Webserver Port ID [range: 1024 ~ 65535, default: 48574]";
              };
            };
          };
        };
        pages = lib.mkOption {
          default = {};
          description = "Aurora webserver page visibility. Possible values: ENABLED, REQUIRES_AUTH, DISABLED.";
          type = lib.types.submodule {
            options = {
              command_list_page = lib.mkOption {
                type = lib.types.str;
                default = "ENABLED";
                description = "Enable the command list page. Possible values: [ENABLED, REQUIRES_AUTH, DISABLED] [default: ENABLED]";
              };
              modlist_excluded_mods = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [];
                description = "Exclude mods from the modlist. [default: ]";
              };
              modlist_page = lib.mkOption {
                type = lib.types.str;
                default = "ENABLED";
                description = "Enable the modlist page. Possible values: [ENABLED, REQUIRES_AUTH, DISABLED] [default: ENABLED]";
              };
              permission_list_page = lib.mkOption {
                type = lib.types.str;
                default = "ENABLED";
                description = "Enable the permission list page. Possible values: [ENABLED, REQUIRES_AUTH, DISABLED] [default: ENABLED]";
              };
              player_list_json = lib.mkOption {
                type = lib.types.str;
                default = "ENABLED";
                description = "Enable the playerlist json page. Possible values: [ENABLED, REQUIRES_AUTH, DISABLED] [default: ENABLED]";
              };
              player_list_table = lib.mkOption {
                type = lib.types.str;
                default = "ENABLED";
                description = "Enable the playerlist table page. Possible values: [ENABLED, REQUIRES_AUTH, DISABLED] [default: ENABLED]";
              };
              player_rank_page = lib.mkOption {
                type = lib.types.str;
                default = "REQUIRES_AUTH";
                description = "Enable the player rank page. Possible values: [ENABLED, REQUIRES_AUTH, DISABLED] [default: REQUIRES_AUTH]";
              };
              world_info_json = lib.mkOption {
                type = lib.types.str;
                default = "ENABLED";
                description = "Enable the world info page. Possible values: [ENABLED, REQUIRES_AUTH, DISABLED] [default: ENABLED]";
              };
            };
          };
        };
      };
    };
  };
}
