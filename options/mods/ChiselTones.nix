{lib, ...}: {
  ChiselTones = lib.mkOption {
    description = "ChiselTones configuration (./config/ChiselTones.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/ChiselTones.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        misc = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              variationAdditionType = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "1 - Allow chiseling between all the blocks within their type. This requires the user to still craft the type, but makes the cycling useless. [range: 0 ~ 1, default: 0]";
              };
            };
          };
        };
      };
    };
  };
}
