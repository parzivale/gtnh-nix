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
      autoRefillBeforeBreak = lib.mkOption {
        type = lib.types.bool;
        default = false;
      };
      autoRefillDamageThreshhold = lib.mkOption {
        type = lib.types.int;
        default = 5;
      };
      enableAutoEquipArmor = lib.mkOption {
        type = lib.types.bool;
        default = false;
      };
      enableAutoRefill = lib.mkOption {
        type = lib.types.bool;
        default = false;
      };
      enableMiddleClick = lib.mkOption {
        type = lib.types.bool;
        default = true;
        description = "Inventory Tweaks Configuration
(Regarding shortcuts, all key names can be found at: http://www.lwjgl.org/javadoc/org/lwjgl/input/Keyboard.html)
Wed Mar 22 17:40:56 CET 2017";
      };
      enableServerItemSwap = lib.mkOption {
        type = lib.types.bool;
        default = true;
      };
      enableShortcuts = lib.mkOption {
        type = lib.types.bool;
        default = true;
      };
      enableSortingOnPickup = lib.mkOption {
        type = lib.types.bool;
        default = false;
      };
      enableSounds = lib.mkOption {
        type = lib.types.bool;
        default = true;
      };
      shortcutKeyAllItems = lib.mkOption {
        type = lib.types.str;
        default = "LCONTROL+LSHIFT, RCONTROL+RSHIFT";
      };
      shortcutKeyDrop = lib.mkOption {
        type = lib.types.str;
        default = "LALT, RALT";
      };
      shortcutKeyEverything = lib.mkOption {
        type = lib.types.str;
        default = "SPACE";
      };
      shortcutKeyOneItem = lib.mkOption {
        type = lib.types.str;
        default = "LCONTROL, RCONTROL";
      };
      shortcutKeyToLowerSection = lib.mkOption {
        type = lib.types.str;
        default = "DOWN";
      };
      shortcutKeyToUpperSection = lib.mkOption {
        type = lib.types.str;
        default = "UP";
      };
      showChestButtons = lib.mkOption {
        type = lib.types.bool;
        default = true;
      };
      version = lib.mkOption {
        type = lib.types.str;
        default = "1.59-dev-156-af3bc68";
      };
      };
    };
  };
}
