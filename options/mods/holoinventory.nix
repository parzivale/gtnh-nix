{lib, ...}: {
  holoinventory = lib.mkOption {
    description = "holoinventory configuration (./config/holoinventory.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/holoinventory.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        holoinventory = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              bannedEntities = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "Banned inventories. Use the ingame command '/holoinventory' to change this list easily.";
              };
              bannedTiles = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "com.jaquadro.minecraft.storagedrawers.block.tile.TileEntityController" "shedar.mods.ic2.nuclearcontrol.tileentities.TileEntityAdvancedInfoPanel" "shedar.mods.ic2.nuclearcontrol.tileentities.TileEntityInfoPanel" "jds.bibliocraft.tileentities.TileEntityClipboard" "crazypants.enderio.conduit.TileConduitBundle" ];
                description = "Banned inventories. Use the ingame command '/holoinventory' to change this list easily.";
              };
              colorAlpha = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "The BG transparancy (0-255)";
              };
              colorBlue = lib.mkOption {
                type = lib.types.int;
                default = 196;
                description = "0-255";
              };
              colorEnable = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable a BG color";
              };
              colorGreen = lib.mkOption {
                type = lib.types.int;
                default = 157;
                description = "0-255";
              };
              colorRed = lib.mkOption {
                type = lib.types.int;
                default = 14;
                description = "0-255";
              };
              cycle = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Cycle trough all the items one by one. Set to the delay time wanted in ticks. If 0, cycle mode is off. Still takes into a count the mode.";
              };
              debug = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable debug, use when errors or weird behaviour happens. [default: false]";
              };
              doVersionCheck = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              enableEntities = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to prevent all entities from rendering the hologram.";
              };
              enableStacking = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stack items, even above 64.";
              };
              filterItemsByNEI = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Filter items to render by the NEI search string (when focused)";
              };
              keyCode = lib.mkOption {
                type = lib.types.int;
                default = 41;
              };
              keyMode = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Valid modes: 0: Always display hologram. 1: The key toggles the rendering. 2: Only render hologram while key pressed. 3: Don't render hologram while key pressed.";
              };
              keyState = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stores last toggle value. Don't worry about this.";
              };
              mode = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Valid modes: 0: Default mode (Display all items). 1: Sorting mode, biggest stack size first. 2: Most abundant mode (Only display the item the most abundant in the chest. 3: Same as 1, but with 3 items. 4: Same as 1, but with 5 items. 5: Same as 1, but with 7 items. 6: Same as 1, but with 9 items.";
              };
              overrideNameThings = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "Name overrides. Use the ingame command '/holoinventory' to change this list easily.";
              };
              renderMultiple = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Render multiple items depending on stacksize";
              };
              renderName = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Renders the inv name above the hologram";
              };
              renderScaling = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "Visual scale factor (0.0-1.0)";
              };
              renderSuffixDarkened = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Render the stacksize suffix darkened";
              };
              renderText = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Render the stacksize as text on top of the items";
              };
              renderThirdPerson = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Render in third person mode";
              };
              requireGlasses = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes HoloInventory require HoloGlasses";
              };
              rotateItems = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Rotate the items in the hologram. Only works on fancy rendering.";
              };
              sillyness = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              syncFreq = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Amout of seconds pass before sending a new update to the client looking at the chest.";
              };
            };
          };
        };
      };
    };
  };
}
