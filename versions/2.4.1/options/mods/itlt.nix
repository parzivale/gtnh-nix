{lib, ...}: {
  itlt = lib.mkOption {
    description = "itlt configuration (./config/itlt.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/itlt.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        bitdetection = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ErrorMessage = lib.mkOption {
                type = lib.types.str;
                default = "You are using a 32 bit version of java. This is not recommended with this modpack.";
                description = "If ShouldYellAt32BitUsers is set to true, this is the message that will be displayed to the user.";
              };
              ShouldYellAt32BitUsers = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to make itlt yell at people attempting to use 32x java for the modpack.";
              };
            };
          };
        };
        display = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ShouldMaximizeDisplay = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to make minecraft attempt to maximize itself on startup (This is kinda unstable right now, so don't trust it too much)";
              };
              loadCustomIcon = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to load a custom icon from config;itlt;icon.png";
              };
              useTechnicDisplayName = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to attempt to get the display name of the pack of the info json file This will take priority over windowDisplayTitle";
              };
              useTechnicIcon = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to attempt to use the icon assigned to the modpack by the technic launcher. This will take priority over loadCustomIcon";
              };
              windowDisplayTitle = lib.mkOption {
                type = lib.types.str;
                default = "GT: New Horizons";
                description = "Change this value to change the name of the MineCraft window";
              };
            };
          };
        };
        server = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              AddDedicatedServer = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to have a dedicated server added to the server list ingame. The server will not overwrite others servers.";
              };
              ServerIP = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "The ip of the dedicated server to add.";
              };
              ServerName = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "The name of the dedicated server to add.";
              };
            };
          };
        };
      };
    };
  };
}
