{lib, ...}: {
  detravscannermod_cfg = lib.mkOption {
    description = "detravscannermod_cfg configuration (./config/detravscannermod.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/detravscannermod.cfg";
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
