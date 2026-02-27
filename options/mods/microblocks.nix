{lib, ...}: {
  microblocks = lib.mkOption {
    description = "microblocks configuration (./config/microblocks.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/microblocks.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
      };
    };
  };
}
