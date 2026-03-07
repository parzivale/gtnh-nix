{lib, ...}: {
  ThaumicHorizons = lib.mkOption {
    description = "ThaumicHorizons configuration (./config/ThaumicHorizons.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumicHorizons.cfg";
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
              alternateGolemBell = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable alternate golemancer's bell recipe (in case of mod conflict).";
              };
              enablePocketPlane = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable pocket plane content (currently incomplete - many aspects will not generate the cool stuff they are supposed to). World backups are highly suggested.";
              };
              pocket_plane_dim = lib.mkOption {
                type = lib.types.int;
                default = 69;
              };
              warpedTumorValue = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "Points of warp held by warped tumor.";
              };
            };
          };
        };
      };
    };
  };
}
