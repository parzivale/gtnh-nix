{lib, ...}: {
  NEID = lib.mkOption {
    description = "NEID configuration (./config/NEID.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/NEID.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        neid = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              CatchUnregisteredBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Causes a crash when a block has not been registered(e.g. has an id of -1) [default: false]";
              };
              ExtendDataWatcher = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Extend DataWatch IDs. Vanilla limit is 31, new limit is 127. [default: false]";
              };
              PostNeidWorldsSupport = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, only blocks with IDs > 4095 will disappear after removing NEID. Metadatas outside of the range 0-15 will be set to 0. [default: true]";
              };
              RemoveInvalidBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Remove invalid (corrupted) blocks from the game. [default: false]";
              };
            };
          };
        };
      };
    };
  };
}
