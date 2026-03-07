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
                description = "List of GT ores that can't be readed by ore Finder. Use block unlocalizedName f.e. \"gt.blockores.27\" [default: ]";
              };
              Sounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true Ore finder Will play sounds [default: true]";
              };
              "X Z Area radius" = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "change scanning radius from player [range: 1 ~ 16, default: 4]";
              };
              "Y Area radius" = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "change scanning radius from player on Y position [range: 1 ~ 60, default: 40]";
              };
            };
          };
        };
      };
    };
  };
}
