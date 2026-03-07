{lib, ...}: {
  findit = lib.mkOption {
    description = "findit configuration (./config/findit.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/findit.cfg";
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
              EnableRotateView = lib.mkOption {
                type = lib.types.str;
                default = "true";
                description = "Rotate player's view when searched";
              };
              MaxResponseSize = lib.mkOption {
                type = lib.types.str;
                default = "20";
                description = "Maximum number of positions that can be displayed by item/block search";
              };
              SearchCooldown = lib.mkOption {
                type = lib.types.str;
                default = "10";
                description = "Search cooldown in ticks";
              };
              SearchRadius = lib.mkOption {
                type = lib.types.str;
                default = "16";
                description = "Radius to search within";
              };
            };
          };
        };
      };
    };
  };
}
