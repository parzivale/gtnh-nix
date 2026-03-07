{lib, ...}: {
  TravellersGear = lib.mkOption {
    description = "TravellersGear configuration (./config/TravellersGear.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TravellersGear.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        options = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Button Position" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 27 9 ];
                description = "The position of the Equipment Button in the Inventory";
              };
              "Radial Speed" = lib.mkOption {
                type = lib.types.str;
                default = "0.30";
                description = "The speed at which the radial for active abilities opens. Default is 15% per tick, minimum is 5%, maximum is 100% [range: 0.05 ~ 1.0, default: 0.15]";
              };
              "Title Offset" = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
                description = "Configures the vertical offset of the title above the players head. 0 is default, set to 1 to render above the players name, the other offsets will use that scale.";
              };
            };
          };
        };
      };
    };
  };
}
