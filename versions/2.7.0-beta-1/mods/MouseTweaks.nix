{lib, ...}: {
  MouseTweaks_cfg = lib.mkOption {
    description = "MouseTweaks_cfg configuration (./config/MouseTweaks.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/MouseTweaks.cfg";
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
          LMBTweakWithItem = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Lets you quickly pick up or move items of the same type [default: true]";
          };
          LMBTweakWithoutItem = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Quickly move items into another inventory [default: true]";
          };
          RMBTweak = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Very similar to the standard RMB dragging mechanic, with one difference: if you drag over a slot multiple times, an item will be put there multiple times. Replaces the standard mechanic if enabled. [default: false]";
          };
          ScrollItemScaling = lib.mkOption {
            type = lib.types.int;
            default = 0;
            description = "Scroll Scaling
0 - Multiple Wheel Clicks Move Multiple Items
1 - Always Move One Item (macOS Compatibility) [range: 0 ~ 1, default: 0]";
          };
          WheelScrollDirection = lib.mkOption {
            type = lib.types.int;
            default = 0;
            description = "Wheel Scroll Direction
0 - Down to Push, Up to Pull
1 - Up to Push, Down to Pull
2 - Inventory Position Aware
3 - Inventory Position Aware, Inverted
[range: 0 ~ 3, default: 0]";
          };
          WheelSearchOrder = lib.mkOption {
            type = lib.types.int;
            default = 1;
            description = "Wheel Inventory Slot Search Order
0 - First to Last
1 - Last To First [range: 0 ~ 1, default: 1]";
          };
          WheelTweak = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Scroll to quickly move items between inventories [default: true]";
          };
          };
        };
      };
      };
    };
  };
}
