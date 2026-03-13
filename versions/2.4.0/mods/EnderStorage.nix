{lib, ...}: {
  EnderStorage_cfg = lib.mkOption {
    description = "EnderStorage_cfg configuration (./config/EnderStorage.cfg)";
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
        default = "properties";
        readOnly = true;
        };
        anarchy-mode = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
        checkUpdates = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
        disable-vanilla = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
        disable-vanilla_recipe = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        disableFXChest = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
        disableFXTank = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
        enderTankSize = lib.mkOption {
          type = lib.types.int;
          default = 256;
        };
        "item.storage-size" = lib.mkOption {
          type = lib.types.int;
          default = 1;
        };
        personalItemID = lib.mkOption {
          type = lib.types.str;
          default = "diamond";
        };
      };
    };
  };
}
