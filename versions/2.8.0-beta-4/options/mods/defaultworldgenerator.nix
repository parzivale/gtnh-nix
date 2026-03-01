{lib, ...}: {
  defaultworldgenerator = lib.mkOption {
    description = "defaultworldgenerator configuration (./config/defaultworldgenerator.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/defaultworldgenerator.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        flatworld = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Flat World Config" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "2;" "1 minecraft:bedrock" "52 minecraft:sandstone" "1 minecraft:dirt 2" ";2;" "biome_1" "village" ];
                description = "If you set world generator to flat, specify the flat template here. (Format: Qty BlockName Meta";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Lock World Generator" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable this to lock world generator to one specified [default: false]";
              };
              "Show World Generators in Log" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enabling this will display all world generators installed, useful for debug [default: false]";
              };
              "World Generator" = lib.mkOption {
                type = lib.types.str;
                default = "RWG";
                description = "The world generator to select by default [default: default]";
              };
            };
          };
        };
      };
    };
  };
}
