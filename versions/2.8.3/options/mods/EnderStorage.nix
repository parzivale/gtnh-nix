{lib, ...}: {
  EnderStorage = lib.mkOption {
    description = "EnderStorage configuration (./config/EnderStorage.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/EnderStorage.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        anarchy-mode = lib.mkOption {
          type = lib.types.str;
          default = "false";
          description = "Causes chests to lose personal settings and drop the diamond on break";
        };
        checkUpdates = lib.mkOption {
          type = lib.types.str;
          default = "false";
        };
        disable-vanilla = lib.mkOption {
          type = lib.types.str;
          default = "false";
          description = "Set to true to make the vanilla enderchest unplaceable.";
        };
        disable-vanilla_recipe = lib.mkOption {
          type = lib.types.str;
          default = "true";
          description = "Set to true to make the vanilla enderchest uncraftable.";
        };
        disableFXChest = lib.mkOption {
          type = lib.types.str;
          default = "false";
          description = "Disable the end portal effect in ES ender chests. May help with FPS (not TPS!) problems.";
        };
        disableFXTank = lib.mkOption {
          type = lib.types.str;
          default = "false";
          description = "Disable the end portal effect in ender tanks. May help with FPS (not TPS!) problems.";
        };
        enderTankSize = lib.mkOption {
          type = lib.types.str;
          default = "256";
          description = "Set the size of ender tanks in buckets (x1000)";
        };
        "item.storage-size" = lib.mkOption {
          type = lib.types.str;
          default = "1";
          description = "The size of each inventory of EnderStorage. 0 = 3x3, 1 = 3x9, 2 = 6x9";
        };
        personalItemID = lib.mkOption {
          type = lib.types.str;
          default = "diamond";
          description = "The name of the item used to set the chest to personal. Diamond by default";
        };
      };
    };
  };
}
