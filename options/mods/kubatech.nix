{lib, ...}: {
  kubatech = lib.mkOption {
    description = "kubatech configuration (./config/kubatech/kubatech.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/kubatech/kubatech.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        debug = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ShowRenderErrors = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        mobhandler = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              PlayerOnlyDropsModifier = lib.mkOption {
                type = lib.types.str;
                default = "0.1";
                description = "Hard player only loot (such as core mod drops) will be multiplied by this number";
              };
              ignorePeacefulCheck = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow for EEC to run with non-passive mobs in peaceful difficulty. Useful for weak hosting machines.";
              };
            };
          };
        };
      };
    };
  };
}
