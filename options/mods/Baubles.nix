{lib, ...}: {
  Baubles = lib.mkOption {
    description = "Baubles configuration (./config/Baubles.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/Baubles.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        client = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              useOldGuiButton = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
              useOldRendering = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
            };
          };
        };
        debug = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              hideDebugItem = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              soulBoundEnchantments = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 8 82 ];
                description = "IDs of enchantments that should be treated as soul bound when on items in a bauble slot.";
              };
            };
          };
        };
        menu = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              manualSlotSelection = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: false]";
              };
              showUnusedSlots = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[default: false]";
              };
            };
          };
        };
        override = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              defualtSlotTypes = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "amulet" "ring" "ring" "belt" "Terminal" "quiver" "charm_pouch" "wings" "focus_pouch" "cape" "gauntlet" "charm" "title" "unknown" "unknown" "unknown" "unknown" "unknown" "unknown" "unknown" ];
                description = "!This config option automatically changes to reflect what Baubles and its addons assigned each time the game is launched! [default: ]";
              };
              slotTypeOverrides = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "amulet" "ring" "ring" "belt" "Terminal" "quiver" "charm_pouch" "wings" "focus_pouch" "cape" "gauntlet" "charm" "title" ];
                description = "[default: [amulet], [ring], [ring], [belt]]";
              };
            };
          };
        };
      };
    };
  };
}
