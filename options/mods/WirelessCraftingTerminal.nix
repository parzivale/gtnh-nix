{lib, ...}: {
  WirelessCraftingTerminal = lib.mkOption {
    description = "WirelessCraftingTerminal configuration (./config/WirelessCraftingTerminal.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/WirelessCraftingTerminal.cfg";
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
              ae2wctMaxPower = lib.mkOption {
                type = lib.types.int;
                default = 6400000;
                description = "Maximum Power in AE units the wireless terminal can hold [default: 1600000, min: 800000, max:6400000]";
              };
              boosterDropChance = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Chance that Wither will drop Infinity Booster Card (in %-100=always drop)";
              };
              boosterDropsEnabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enabled Booster Card drops in hard mode (true=enabled) [default: true]";
              };
              doVersionCheck = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Check for updates [default: true]";
              };
              enableEasyMode = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable Easy Mode (Easier Recipes+Infinity Booster Recipe) [default: false]";
              };
              enableInfinityBooster = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Infinite Range Booster Upgrade [default: true]";
              };
              mineTweakerOverride = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable MineTweaker Override (true=disables all recipes) [default: false]";
              };
            };
          };
        };
      };
    };
  };
}
