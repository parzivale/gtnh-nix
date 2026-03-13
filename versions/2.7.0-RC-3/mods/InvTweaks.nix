{lib, ...}: {
  InvTweaks_cfg = lib.mkOption {
    description = "InvTweaks_cfg configuration (./config/InvTweaks.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/InvTweaks.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "properties";
        readOnly = true;
        };
        enableMiddleClick = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        showChestButtons = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        enableSortingOnPickup = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
        enableAutoRefill = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
        autoRefillBeforeBreak = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
        autoRefillDamageThreshhold = lib.mkOption {
          type = lib.types.int;
          default = 5;
        };
        enableSounds = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        enableShortcuts = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        enableAutoEquipArmor = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
        enableServerItemSwap = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        shortcutKeyAllItems = lib.mkOption {
          type = lib.types.str;
          default = "LCONTROL+LSHIFT, RCONTROL+RSHIFT";
        };
        shortcutKeyEverything = lib.mkOption {
          type = lib.types.str;
          default = "SPACE";
        };
        shortcutKeyOneItem = lib.mkOption {
          type = lib.types.str;
          default = "LCONTROL, RCONTROL";
        };
        shortcutKeyToUpperSection = lib.mkOption {
          type = lib.types.str;
          default = "UP";
        };
        shortcutKeyToLowerSection = lib.mkOption {
          type = lib.types.str;
          default = "DOWN";
        };
        shortcutKeyDrop = lib.mkOption {
          type = lib.types.str;
          default = "LALT, RALT";
        };
        version = lib.mkOption {
          type = lib.types.str;
          default = "1.59-dev-156-af3bc68";
        };
      };
    };
  };
}
