{ lib, ... }:
{
  extremesoundmuffler_cfg = lib.mkOption {
    description = "extremesoundmuffler_cfg configuration (./config/extremesoundmuffler.cfg)";
    default = { };
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/extremesoundmuffler.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        anchors = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              disableAnchors = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable the Anchors? [default: false]";
              };
            };
          };
        };
        general = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              defaultMuteVolume = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
                description = "Volume set when pressed the mute button by default";
              };
              forbiddenSounds = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "ui."
                  "music."
                  "ambient."
                ];
                description = "Blacklisted Sounds - add the name of the sounds to blacklist, separated with comma [default: [ui.], [music.], [ambient.]]";
              };
              lawfulAllList = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Allow the \"ALL\" sounds list to include the blacklisted sounds? [default: false]";
              };
              leftButtons = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to move the muffle and play buttons to the left side of the GUI [default: false]";
              };
              showTip = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show tips in the Muffler screen? [default: true]";
              };
              useDarkTheme = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether or not use the dark theme [default: false]";
              };
            };
          };
        };
        inventory_button = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              disableInventoryButton = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable the Muffle button in the player inventory? [default: false]";
              };
              invButtonX = lib.mkOption {
                type = lib.types.int;
                default = 149;
              };
              invButtonY = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
            };
          };
        };
      };
    };
  };
}
