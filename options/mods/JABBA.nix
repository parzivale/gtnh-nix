{lib, ...}: {
  JABBA = lib.mkOption {
    description = "JABBA configuration (./config/JABBA.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/JABBA.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        experimental = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              exposeFullStorageSize = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, barrels will expose their full contents through the standard MC inventory interfaces. This will allow mods that do not support the DSU to see the full contents of the barrel. *** WARNING *** This will allow mods that do not properly handle inventories to empty out a barrel in one go. Use at your own risk. If you do find such a game breaking mod, please report to that mods' author and ask them to handle inventories better. Otherwise, please enjoy this experimental feature ^_^ [default: false]";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BlacklistedTileEntiyClassNames = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "ic2.core.block.machine.tileentity.TileEntityNuke" ];
                description = "The Canonical Class-Names of TileEntities that should be ignored when using a Dolly. [default: [ic2.core.block.machine.tileentity.TileEntityNuke]]";
              };
              allowOreDictUnification = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, Jabba will try unificate 'ingot' 'ore' 'dust' and 'nugget' using oredict [default: true]";
              };
              allowVerticalPlacement = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, barrels can be initially placed and dollyed so that their front side can be on the top or bottom. The front side is the side with the initial sticker applied. [default: true]";
              };
              colorOverrides = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 1 6109206 2 6107411 3 8947333 4 12012062 5 5789784 6 7252423 7 10067709 8 9654423 9 1783672 10 15838184 11 15919857 12 1518487 13 16777215 14 657930 ];
                description = "This list contains paired numbers: first is the tier level this color applies to, second is the color. The color value is the RGB color as a single int";
              };
              diamondDollyActive = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              disableDollyStacking = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disables the ability to collapse and stack the dollies [default: false]";
              };
              materialList = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "Ore.plankWood" "Ore.plateCopper" "Ore.plateIron" "Ore.plateBronze" "Ore.plateSteel" "Ore.plateAluminium" "Ore.plateStainlessSteel" "Ore.plateTitanium" "Ore.plateTungstenSteel" "Ore.plateChrome" "Ore.plateIridium" "Ore.plateOsmium" "Ore.plateNeutronium" "Ore.plateBlackPlutonium" ];
                description = "A structural tier will be created for each material in this list, even if not craftable";
              };
              maxCraftableTier = lib.mkOption {
                type = lib.types.int;
                default = 14;
                description = "Maximum tier to generate crafting recipes for";
              };
              packetLimiterDelay = lib.mkOption {
                type = lib.types.int;
                default = 500;
                description = "Controls the minimum delay (in ms) between two server/client sync. Lower values mean closer to realtime, and more network usage.";
              };
              renderDistance = lib.mkOption {
                type = lib.types.str;
                default = "10000.0";
                description = "Render Distance (square) for stack and text on barrel. [range: 0.0 ~ 10000.0, default: 10000.0]";
              };
              renderStackAndText = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              reverseBehaviourClickLeft = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, punching a barrel will remove one item and shift punching a stack. [default: false]";
              };
              stacksSize = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "How many stacks the base barrel and each upgrade will provide";
              };
              tierUpgradeItem = lib.mkOption {
                type = lib.types.str;
                default = "Ore.screw";
                description = "The name of the item to use for the strutural tier upgrade recipes. Default is \"minecraft:fence\" for Vanilla Fence. The format is Ore.name for an ore dictionary lookup, or itemDomain:itemname[:meta] for a direct item, not this is case-sensitive.";
              };
              verticalPlacementRange = lib.mkOption {
                type = lib.types.str;
                default = "0.79";
                description = "This is used when testing a players aim for block placement.  If the aim value is greater than or equal to this setting, it is determined you are attempting to place a block facing down.  The reverse is true for placing blocks facing up. 0 = dead ahead, 1 = directly above. [range: 0.0 ~ 1.0, default: 0.79]";
              };
            };
          };
        };
      };
    };
  };
}
