{lib, ...}: {
  StevesAddons = lib.mkOption {
    description = "StevesAddons configuration (./config/StevesAddons.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/StevesAddons.cfg";
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
              applied_energistics_2 = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Energistics Connector";
              };
              build_index_eagerly = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether react to server's hint at building item search index eagerly on log in. When enabled, can drastically slow down log in. When disabled, can cause drastic lag on first search usage [default: false]";
              };
              pastebin_whitelist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "hilburn" ];
                description = "Add player names permitted to use Pastebin";
              };
              waila_integration = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show labels in WAILA tags";
              };
            };
          };
        };
      };
    };
  };
}
