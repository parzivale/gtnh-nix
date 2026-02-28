{lib, ...}: {
  ProjectBlue = lib.mkOption {
    description = "ProjectBlue configuration (./config/ProjectBlue.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ProjectBlue.cfg";
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
