{lib, ...}: {
  Translocator = lib.mkOption {
    description = "Translocator configuration (./config/Translocator.cfg)";
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
        default = "forge";
        readOnly = true;
        };
        checkUpdates = lib.mkOption {
          type = lib.types.str;
          default = "false";
        };
        disable-crafting-grid-key = lib.mkOption {
          type = lib.types.str;
          default = "true";
          description = "Set to true to disable placement of crafting grids by keyboard shortcut.";
        };
      };
    };
  };
}
