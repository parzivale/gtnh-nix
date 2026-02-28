{lib, ...}: {
  multipart = lib.mkOption {
    description = "multipart configuration (./config/multipart.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/multipart.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        debug_asm = lib.mkOption {
          type = lib.types.str;
          default = "false";
        };
        useSawIcons = lib.mkOption {
          type = lib.types.str;
          default = "false";
          description = "Set to true to use mc style icons for the saw instead of the 3D model";
        };
        sawArdite = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              durability = lib.mkOption {
                type = lib.types.str;
                default = "2425";
              };
            };
          };
        };
        sawCobalt = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              durability = lib.mkOption {
                type = lib.types.str;
                default = "3200";
              };
            };
          };
        };
        sawDiamond = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              durability = lib.mkOption {
                type = lib.types.str;
                default = "2048";
              };
            };
          };
        };
        sawIron = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              durability = lib.mkOption {
                type = lib.types.str;
                default = "1024";
              };
            };
          };
        };
        sawManyullyn = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              durability = lib.mkOption {
                type = lib.types.str;
                default = "4800";
              };
            };
          };
        };
        sawStone = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              durability = lib.mkOption {
                type = lib.types.str;
                default = "512";
              };
            };
          };
        };
      };
    };
  };
}
