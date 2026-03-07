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
                description = "Use the old Baubles Button texture and location instead. [default: false]";
              };
              useOldRendering = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Display the old Bauble GUI instead of the new sidebar. [default: false]";
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
                description = "Hides the Bauble debug item from the creative menu. [default: true]";
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
                description = "Manually override slot assignments. !Bauble slot types must be configured manually with this option enabled! [default: false]";
              };
              showUnusedSlots = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Display unused Bauble slots. [default: false]";
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
                description = "Baubles and its addons assigned the folowing types to the bauble slots. !This config option automatically changes to reflect what Baubles and its addons assigned each time the game is launched! [default: ]";
              };
              slotTypeOverrides = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "amulet" "ring" "ring" "belt" "Terminal" "quiver" "charm_pouch" "wings" "focus_pouch" "cape" "gauntlet" "charm" "title" ];
                description = "Slot assignments to use if manualSlotSelection is enabled. Any assignments after the first 20 will be ignored. !Adding, moving, or removing slots of the amulet, ring, or belt types will reduce compatibility with mods made for original Baubles versions! [default: [amulet], [ring], [ring], [belt]]";
              };
            };
          };
        };
      };
    };
  };
}
