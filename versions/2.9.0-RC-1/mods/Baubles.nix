{ lib, ... }:
{
  Baubles_cfg = lib.mkOption {
    description = "Baubles_cfg configuration (./config/Baubles.cfg)";
    default = { };
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
          default = { };
          type = lib.types.submodule {
            options = {
              maxColumns = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Maximum number of columns shown in the baubles inventory.
[range: 1 ~ 2147483647, default: 4]";
              };
              useOldGuiButton = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Use the old Baubles Button texture and location instead.
[default: false]";
              };
              useOldRendering = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Display the old Bauble GUI instead of the new sidebar.
Using old rendering with more than 20 slots works, but results in visual oddities and is not supported.
[default: false]";
              };
            };
          };
        };
        debug = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              hideDebugItem = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Hides the Bauble debug item from the creative menu.
[default: true]";
              };
            };
          };
        };
        general = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              soulBoundEnchantments = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [
                  8
                  82
                ];
                description = "IDs of enchantments that should be treated as soul bound when on items in a bauble slot.";
              };
            };
          };
        };
        menu = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              displayTooltipOnHover = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When hovering the mouse over a bauble slot, display a tooltip with the bauble type and if a held item can be equipped in that slot.
[default: true]";
              };
              manualSlotSelection = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Manually override slot assignments.
!Bauble slot types must be configured manually with this option enabled!
[default: false]";
              };
              showUnusedSlots = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Display unused Bauble slots.
[default: false]";
              };
            };
          };
        };
        override = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              slotStackLimitOverrides = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "heartcanister_red=10"
                  "heartcanister_yellow=10"
                  "heartcanister_green=10"
                ];
                description = "Per-slot-type stack limits in the format \"type=limit\" (example: heartcanister_red=10).
Unspecified types default to a stack limit of 1.
[default: ]";
              };
              slotTypeOverrides = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "amulet"
                  "ring"
                  "ring"
                  "belt"
                  "Terminal"
                  "quiver"
                  "charm_pouch"
                  "wings"
                  "focus_pouch"
                  "cape"
                  "gauntlet"
                  "charm"
                  "title"
                  "head"
                  "heartcanister_red"
                  "heartcanister_yellow"
                  "heartcanister_green"
                  "universal"
                ];
                description = "Slot assignments to use if manualSlotSelection is enabled.
!Adding, moving, or removing slots of the amulet, ring, or belt types will reduce compatibility with mods made for original Baubles versions!
[default: [amulet], [ring], [ring], [belt]]";
              };
              slotUniversalOverrides = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "amulet"
                  "ring"
                  "belt"
                  "charm"
                  "head"
                  "universal"
                ];
                description = "Bauble types listed here are also allowed in universal slots.
Use registered slot type names like ring, amulet, belt.
[default: ]";
              };
            };
          };
        };
      };
    };
  };
}
