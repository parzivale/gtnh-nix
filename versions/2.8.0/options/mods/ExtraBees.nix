{lib, ...}: {
  ExtraBees = lib.mkOption {
    description = "ExtraBees configuration (./config/ExtraBees.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ExtraBees.cfg";
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
              canQuarryMineHives = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              netherHiveRate = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Attempt to generate this many hives per chunk. [range: 0 ~ 2147483647, default: 2]";
              };
              rockHiveRate = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Attempt to generate this many hives per chunk. [range: 0 ~ 2147483647, default: 2]";
              };
              waterHiveRate = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Attempt to generate this many hives per chunk. [range: 0 ~ 2147483647, default: 1]";
              };
            };
          };
        };
      };
    };
  };
}
