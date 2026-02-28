{lib, ...}: {
  questbook = lib.mkOption {
    description = "questbook configuration (./config/betterquesting/questbook.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/betterquesting/questbook.cfg";
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
              disablePartyNotifications = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[NYI]Disable party notifications.  Default: false";
              };
              disableQuestNotifications = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[NYI]Disable quest notifications.  Default: false";
              };
              fullySyncQuests = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[NYI]Fully sync quests between party members, including quest rewards, checkbox quests, and [consume] retrieval quests.  Default: false";
              };
              spawnWithBook = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable this option so new players will spawn with a Quest Book. Default: false";
              };
            };
          };
        };
      };
    };
  };
  betterquesting = lib.mkOption {
    description = "betterquesting configuration (./config/betterquesting.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/betterquesting.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        TitleCard = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Align X" = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
              };
              "Align Y" = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
              };
              "Offset X" = lib.mkOption {
                type = lib.types.int;
                default = -128;
              };
              "Offset Y" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Title Texture" = lib.mkOption {
                type = lib.types.str;
                default = "gtnh:textures/gui/gtnh_title.png";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Always draw implicit dependency" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, always draw implicit dependency. This property can be changed by the GUI [default: false]";
              };
              "Claim all requires confirmation" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, then when you click on Claim all, a warning dialog will be displayed [default: true]";
              };
              "Disable rewards" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, rewards will be disabled. This might not be supported by reward types. [default: false]";
              };
              "Hide Updates" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Highlight detected clickable url hotzone." = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, render each hotzone using alternating color. [default: false]";
              };
              "Load the default quest DB on world startup." = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Does an equivalent of '/bq_admin default load' on every world load [default: true]";
              };
              "Lock tray" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Is quest chapters list locked and opened on start. [default: false]";
              };
              "Log null quests" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Posts useful information in the log when encountering a null quest during loading. [default: true]";
              };
              "Max GUI Height" = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Clamps the max UI height (-1 to disable) [range: -1 ~ 2147483647, default: -1]";
              };
              "Max GUI Width" = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Clamps the max UI width (-1 to disable) [range: -1 ~ 2147483647, default: -1]";
              };
              "Quest Notices" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enabled the popup notices when quests are completed or updated [default: true]";
              };
              "Scroll multiplier" = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "Scrolling multiplier [range: 0.0 ~ 10.0, default: 1.0]";
              };
              "Skip home" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true will skip home gui and open quests at startup. This property will be changed by the mod itself. [default: false]";
              };
              "Sound Complete" = lib.mkOption {
                type = lib.types.str;
                default = "random.levelup";
              };
              "Sound Unlock" = lib.mkOption {
                type = lib.types.str;
                default = "random.click";
              };
              "Sound Update" = lib.mkOption {
                type = lib.types.str;
                default = "random.levelup";
              };
              "Text Width Correction" = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "Correcting the width of split text [range: 0.01 ~ 10.0, default: 1.0]";
              };
              Theme = lib.mkOption {
                type = lib.types.str;
                default = "betterquesting:light";
                description = "The current questing theme [default: betterquesting:light]";
              };
              "Unrestrict Admin Commands" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, all users can use /bq_admin commands regardless of op-status. Useful for single-player without cheats. [default: false]";
              };
              "Use Quest Bookmark" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Jumps the user to the last opened quest [default: true]";
              };
              "View mode" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, user can view not-yet-unlocked quests that are not hidden or secret. This property can be changed by the GUI. [default: false]";
              };
              "View mode all quest line" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, view mode will display the quest line regardless of whether the quest line is unlocked yet. [default: true]";
              };
              "View mode button" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, show view mode button. [default: false]";
              };
              "Zoom Speed" = lib.mkOption {
                type = lib.types.float;
                default = 1.25;
                description = "Zoom Speed [range: 1.05 ~ 3.0, default: 1.25]";
              };
              "Zoom in on cursor" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Zoom in on cursor. If false, zooms in on center of screen. [default: true]";
              };
              "Zoom out on cursor" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Zoom out on cursor. If false, zooms out on center of screen. [default: true]";
              };
              "Zoom smoothness in ms" = lib.mkOption {
                type = lib.types.float;
                default = 100.0;
                description = "Zoom smoothness in ms [range: 0.0 ~ 2000.0, default: 100.0]";
              };
            };
          };
        };
      };
    };
  };
}
