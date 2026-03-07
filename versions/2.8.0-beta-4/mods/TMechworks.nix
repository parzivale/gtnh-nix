{lib, ...}: {
  TMechworks = lib.mkOption {
    description = "TMechworks configuration (./config/TMechworks.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TMechworks.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        drawbridge = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              blacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "gregtech:gt.blockmachines" ];
                description = "Add block names that should not be placed from the drawbridge [default: ]";
              };
            };
          };
        };
      };
    };
  };
}
