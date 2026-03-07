{lib, ...}: {
  ironchestminecarts = lib.mkOption {
    description = "ironchestminecarts configuration (./config/ironchestminecarts.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ironchestminecarts.cfg";
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
              "render minecarts in 3D on inventory" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If set to true minecarts will be rendered in 3D on the player's hand and on inventories";
              };
            };
          };
        };
      };
    };
  };
}
