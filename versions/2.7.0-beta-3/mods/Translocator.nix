{lib, ...}: {
  Translocator_cfg = lib.mkOption {
    description = "Translocator_cfg configuration (./config/Translocator.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/Translocator.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "properties";
        readOnly = true;
        };
        checkUpdates = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
        disable-crafting-grid-key = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
      };
    };
  };
}
