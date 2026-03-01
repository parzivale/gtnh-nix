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
                type = lib.types.str;
                default = "0.5";
              };
              "Align Y" = lib.mkOption {
                type = lib.types.str;
                default = "0.0";
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
              "Claim all requires confirmation" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, then when you click on Claim all, a warning dialog will be displayed [default: true]";
              };
              "Hide Updates" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Lock tray" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Is quest chapters list locked and opened on start [default: false]";
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
                type = lib.types.str;
                default = "1.0";
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
              Theme = lib.mkOption {
                type = lib.types.str;
                default = "betterquesting:light";
                description = "The current questing theme [default: betterquesting:light]";
              };
              "Use Quest Bookmark" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Jumps the user to the last opened quest [default: true]";
              };
              "View mode" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, user can view most quests (not hidden or secret) [default: false]";
              };
              "View mode button" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, show view mode button [default: false]";
              };
              "Zoom Speed" = lib.mkOption {
                type = lib.types.str;
                default = "1.25";
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
                type = lib.types.str;
                default = "100.0";
                description = "Zoom smoothness in ms [range: 0.0 ~ 2000.0, default: 100.0]";
              };
            };
          };
        };
      };
    };
  };
}
