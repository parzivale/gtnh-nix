{lib, ...}: {
  BetterAchievements = lib.mkOption {
    description = "BetterAchievements configuration (./config/BetterAchievements.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BetterAchievements.cfg";
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
              canUnlockArrowColour = lib.mkOption {
                type = lib.types.str;
                default = "#00FF00";
                description = "Colour of the arrow pointing to an achievement that can be unlocked in #RRGGBB format";
              };
              cantUnlockArrowColour = lib.mkOption {
                type = lib.types.str;
                default = "#000000";
                description = "Colour of the arrow pointing to an achievement that can't be unlocked in #RRGGBB format";
              };
              completeArrowColour = lib.mkOption {
                type = lib.types.str;
                default = "#A0A0A0";
                description = "Colour of the arrow pointing to an achievement that is unlocked in #RRGGBB format";
              };
              iconReset = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Change a tab icon ingame by middle clicking on an achievement on the page";
              };
              listTabIcons = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "A list that defines the user set tab icons this will override all code set icons";
              };
              scrollButtons = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "On false the buttons won't be displayed, all other functionality will work";
              };
              userColourOverride = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Overrides mod set colours for arrows";
              };
            };
          };
        };
      };
    };
  };
}
