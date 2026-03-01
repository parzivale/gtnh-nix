{lib, ...}: {
  ifu = lib.mkOption {
    description = "ifu configuration (./config/ifu.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ifu.cfg";
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
              Blacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "tile.rail" "tile.fence" "tile.stoneMoss" "tile.chest" "tile.torch" "tile.endPortalFrame" ];
                description = "List blocks that can't be read by ore Finder. Use unlocalizedName. [default: ]";
              };
              "Enable Everywhere" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If this is set to false, the OreFinder will only work in the Owerworld, Nether and Twilight Forest [default: false]";
              };
              Sounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, Ore finder will play sounds [default: true]";
              };
              "X Z Area radius" = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "change scanning radius from player [range: 1 ~ 16, default: 4]";
              };
              "Y Area radius" = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "change scanning distance above and below the player [range: 1 ~ 60, default: 40]";
              };
            };
          };
        };
      };
    };
  };
}
