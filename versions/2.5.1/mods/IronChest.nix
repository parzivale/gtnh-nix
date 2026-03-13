{lib, ...}: {
  IronChest_cfg = lib.mkOption {
    description = "IronChest_cfg configuration (./config/IronChest.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/IronChest.cfg";
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
              cacheRenderingInformation = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ocelotsSitOnChests = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
      };
    };
  };
}
