{lib, ...}: {
  InGameInfoXML = lib.mkOption {
    description = "InGameInfoXML configuration (./config/InGameInfoXML.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/InGameInfoXML.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        alignment = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              bottomcenter = lib.mkOption {
                type = lib.types.str;
                default = "0 -45";
                description = "Offsets for BOTTOMCENTER (X<space>Y).";
              };
              bottomleft = lib.mkOption {
                type = lib.types.str;
                default = "2 -2";
                description = "Offsets for BOTTOMLEFT (X<space>Y).";
              };
              bottomright = lib.mkOption {
                type = lib.types.str;
                default = "-2 -2";
                description = "Offsets for BOTTOMRIGHT (X<space>Y).";
              };
              middlecenter = lib.mkOption {
                type = lib.types.str;
                default = "0 0";
                description = "Offsets for MIDDLECENTER (X<space>Y).";
              };
              middleleft = lib.mkOption {
                type = lib.types.str;
                default = "2 0";
                description = "Offsets for MIDDLELEFT (X<space>Y).";
              };
              middleright = lib.mkOption {
                type = lib.types.str;
                default = "-2 0";
                description = "Offsets for MIDDLERIGHT (X<space>Y).";
              };
              topcenter = lib.mkOption {
                type = lib.types.str;
                default = "0 2";
                description = "Offsets for TOPCENTER (X<space>Y).";
              };
              topleft = lib.mkOption {
                type = lib.types.str;
                default = "2 50";
                description = "Offsets for TOPLEFT (X<space>Y).";
              };
              topright = lib.mkOption {
                type = lib.types.str;
                default = "-2 2";
                description = "Offsets for TOPRIGHT (X<space>Y).";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ShowHUD = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If this is true, it will render the info overlay";
              };
              fileInterval = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "The interval between file reads for the 'file' tag (in seconds).";
              };
              filename = lib.mkOption {
                type = lib.types.str;
                default = "InGameInfo.xml";
                description = "The configuration that should be loaded on startup.";
              };
              replaceDebug = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Replace the debug overlay (F3) with the InGameInfoXML overlay.";
              };
              "scale(new)" = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "The overlay will be scaled by this amount.(use this one, the other is deprecated)";
              };
              showInChat = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Display the overlay in chat.";
              };
              showOnPlayerList = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Display the overlay on the player list.";
              };
            };
          };
        };
      };
    };
  };
}
