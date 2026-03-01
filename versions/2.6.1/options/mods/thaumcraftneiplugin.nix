{lib, ...}: {
  thaumcraftneiplugin = lib.mkOption {
    description = "thaumcraftneiplugin configuration (./config/thaumcraftneiplugin.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/thaumcraftneiplugin.cfg";
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
              "Debug Mode" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to enable debug mode. [default: false]";
              };
            };
          };
        };
      };
    };
  };
}
