{lib, ...}: {
  ggfab = lib.mkOption {
    description = "ggfab configuration (./config/ggfab.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ggfab.cfg";
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
              laserOCPenaltyFactor = lib.mkOption {
                type = lib.types.str;
                default = "0.3";
                description = "Laser overclock penalty factor. This will incredibly change the game balance. Even a small step from 0.2 to 0.3 can have very significant impact. Tweak with caution! [range: 0.0 ~ 10.0, default: 0.3]";
              };
            };
          };
        };
      };
    };
  };
}
