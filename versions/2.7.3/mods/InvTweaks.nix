{lib, ...}: {
  InvTweaks = lib.mkOption {
    description = "InvTweaks configuration (./config/InvTweaks.cfg)";
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
        default = "forge_untyped";
        readOnly = true;
        };
        enableMiddleClick = lib.mkOption {
          type = lib.types.str;
          default = "true";
          description = "Inventory Tweaks Configuration (Regarding shortcuts, all key names can be found at: http://www.lwjgl.org/javadoc/org/lwjgl/input/Keyboard.html) Wed Mar 22 17:40:56 CET 2017";
        };
        showChestButtons = lib.mkOption {
          type = lib.types.str;
          default = "true";
        };
        enableSortingOnPickup = lib.mkOption {
          type = lib.types.str;
          default = "false";
        };
        enableAutoRefill = lib.mkOption {
          type = lib.types.str;
          default = "false";
        };
        autoRefillBeforeBreak = lib.mkOption {
          type = lib.types.str;
          default = "false";
        };
        autoRefillDamageThreshhold = lib.mkOption {
          type = lib.types.str;
          default = "5";
        };
        enableSounds = lib.mkOption {
          type = lib.types.str;
          default = "true";
        };
        enableShortcuts = lib.mkOption {
          type = lib.types.str;
          default = "true";
        };
        enableAutoEquipArmor = lib.mkOption {
          type = lib.types.str;
          default = "false";
        };
        enableServerItemSwap = lib.mkOption {
          type = lib.types.str;
          default = "true";
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
