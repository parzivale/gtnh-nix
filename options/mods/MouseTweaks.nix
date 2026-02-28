{lib, ...}: {
  MouseTweaks = lib.mkOption {
    description = "MouseTweaks configuration (./config/MouseTweaks.cfg)";
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
              "LMB tweak with item" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Left click and drag with an item to \"left click\" items of the same type. [default: true]";
              };
              "LMB tweak without item" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Hold shift, left click and drag without an item to \"shift left click\" items. [default: true]";
              };
              "RMB tweak" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Like vanilla right click dragging, but dragging over a slot multiple times puts the item there multiple times. [default: true]";
              };
              "Scroll item scaling" = lib.mkOption {
                type = lib.types.str;
                default = "PROPORTIONAL";
                description = "This determines how many items are moved when you scroll. On some setups (notably macOS), scrolling the wheel with different speeds results in different distances scrolled per wheel \"bump\". To make those setups play nicely with Mouse Tweaks, set this option to \"Always exactly one item\". Possible values: [PROPORTIONAL, ALWAYS_ONE] [default: PROPORTIONAL]";
              };
              "Wheel tweak" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Scroll over items to move them between inventories. [default: true]";
              };
              "Wheel tweak scroll direction" = lib.mkOption {
                type = lib.types.str;
                default = "NORMAL";
                description = "Inventory position aware means scroll up to push items from the bottom inventory and pull into the top inventory, and vice versa. Possible values: [NORMAL, INVERTED, INVENTORY_POSITION_AWARE, INVENTORY_POSITION_AWARE_INVERTED] [default: NORMAL]";
              };
              "Wheel tweak search order" = lib.mkOption {
                type = lib.types.str;
                default = "LAST_TO_FIRST";
                description = "How to pick the source slot when pulling items via scrolling. Possible values: [FIRST_TO_LAST, LAST_TO_FIRST] [default: LAST_TO_FIRST]";
              };
            };
          };
        };
      };
    };
  };
}
