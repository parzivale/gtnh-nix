{lib, ...}: {
  forgeChunkLoading = lib.mkOption {
    description = "forgeChunkLoading configuration (./config/forgeChunkLoading.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/forgeChunkLoading.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        Forge = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              maximumChunksPerTicket = lib.mkOption {
                type = lib.types.int;
                default = 25;
                description = "Maximum chunks per ticket for the mod.";
              };
              maximumTicketCount = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "Maximum ticket count for the mod. Zero disables chunkloading capabilities.";
              };
            };
          };
        };
        defaults = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Are mod overrides enabled?";
              };
              maximumChunksPerTicket = lib.mkOption {
                type = lib.types.int;
                default = 25;
                description = "for a mod without an override. This is the maximum number of chunks a single ticket can force.";
              };
              maximumTicketCount = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "in this file. This is the number of chunk loading requests a mod is allowed to make.";
              };
              playerTicketCount = lib.mkOption {
                type = lib.types.int;
                default = 500;
                description = "The number of tickets a player can be assigned instead of a mod. This is shared across all mods and it is up to the mods to use it.";
              };
              dormantChunkCacheSize = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "loading times. Specify the size (in chunks) of that cache here";
              };
            };
          };
        };
        serverutilities = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              maximumChunksPerTicket = lib.mkOption {
                type = lib.types.int;
                default = 1000000;
              };
              maximumTicketCount = lib.mkOption {
                type = lib.types.int;
                default = 1000000;
              };
            };
          };
        };
      };
    };
  };
}
