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
                description = "[default: PROPORTIONAL]";
              };
              "Wheel tweak" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Scroll over items to move them between inventories. [default: true]";
              };
              "Wheel tweak scroll direction" = lib.mkOption {
                type = lib.types.str;
                default = "NORMAL";
                description = "[default: NORMAL]";
              };
              "Wheel tweak search order" = lib.mkOption {
                type = lib.types.str;
                default = "LAST_TO_FIRST";
                description = "[default: LAST_TO_FIRST]";
              };
            };
          };
        };
      };
    };
  };
}
