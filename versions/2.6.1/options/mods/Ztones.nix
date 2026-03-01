{lib, ...}: {
  Ztones = lib.mkOption {
    description = "Ztones configuration (./config/Ztones.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/Ztones.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        blocks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableAgon = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableAzur = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableBitt = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableCray = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableFort = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableGlac = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableIszm = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableJelt = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableKorp = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableKryp = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableLair = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableLave = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableMint = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableMyst = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableReds = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableReed = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableRoen = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableSols = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableSync = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableTank = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableTest = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              enableVect = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableVena = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableZane = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableZech = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableZest = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableZeta = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableZion = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableZkul = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableZoea = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableZome = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableZone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableZorg = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableZyth = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        items = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Mini Charcoal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Diamond Zane" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "MSG Pill" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mini Coal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Ofanix = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Splat Axe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Terrain Eater" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Totem Tool" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        tweaks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableChestGen = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables dungeon chest loot [default: true]";
              };
            };
          };
        };
      };
    };
  };
}
