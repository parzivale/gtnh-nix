{lib, ...}: {
  witchery_debug_cfg = lib.mkOption {
    description = "witchery_debug_cfg configuration (./config/witchery_debug.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/witchery_debug.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
      };
      };
    };
  };
}
