{lib, ...}: {
  lwjgl3ify_cfg = lib.mkOption {
    description = "lwjgl3ify_cfg configuration (./config/lwjgl3ify.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/lwjgl3ify.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        core = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              showJavaVersion = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Show java version in the debug hud [default: true]";
              };
              showLwjglVersion = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show lwjgl version in the debug hud [default: true]";
              };
            };
          };
        };
      };
    };
  };
}
