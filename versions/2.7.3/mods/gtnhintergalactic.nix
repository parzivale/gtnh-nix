{lib, ...}: {
  gtnhintergalactic_cfg = lib.mkOption {
    description = "gtnhintergalactic_cfg configuration (./config/gtnhintergalactic.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/gtnhintergalactic.cfg";
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
          spaceelevator = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              isCableRenderingEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, the Space Elevator will use it's fancy renderer, otherwise a simple block renderer [default: true]";
              };
              };
            };
          };
          };
        };
      };
      };
    };
  };
}
