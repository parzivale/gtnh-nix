{lib, ...}: {
  defaultserverlist = lib.mkOption {
    description = "defaultserverlist configuration (./config/defaultserverlist.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/defaultserverlist.cfg";
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
              allowModifications = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether or not the user should be able to delete, modify or change the order of the default servers. [default: true]";
              };
              prevDefaultServers = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "DO NOT EDIT! [default: ]";
              };
              servers = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "The default servers. Format: ip|name [default: ]";
              };
              url = lib.mkOption {
                type = lib.types.str;
                default = "https://raw.githubusercontent.com/GTNewHorizons/GT-New-Horizons-Modpack/master/servers.json";
                description = "The remote location to fetch the default servers from. The returned content must be in JSON format (formatted as a map where the keys are the server names and the values the corresponding ip-adresses). [default: ]";
              };
              useURL = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether or not the default servers should be fetched from a remote location. [default: false]";
              };
            };
          };
        };
      };
    };
  };
}
