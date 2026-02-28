{lib, ...}: {
  CarpentersBlocks = lib.mkOption {
    description = "CarpentersBlocks configuration (./config/CarpentersBlocks.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/CarpentersBlocks.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        blocks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable Barrier" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Bed" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Button" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Collapsible Block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Daylight Sensor" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Door" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Flower Pot" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Garage Door" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Gate" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Hatch" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Ladder" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Lever" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Pressure Plate" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Safe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Slope" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Stairs" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Torch" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        features = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Cover Exceptions" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "Silverwood Planks" "Greatwood Planks" "Thatch" ];
                description = "This allows restricted blocks to be used as covers. Add your own by supplying the display name for the block (en_US only).";
              };
              "Enable Chisel Designs" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Covers" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Dye Colors" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Freestanding Ladders" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Enable Garage Door Void Autofill" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This allows garage doors to automatically fill in gaps when barriers beneath doors are destroyed.";
              };
              "Enable Illumination" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This will enable players to cover blocks with glowstone dust to make them illuminate.";
              };
              "Enable Overlays" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Ownership" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This will prevent players besides you and server operators from editing your objects. Note: this does not protect objects against destruction (intentional), and may allow activation if appropriate. Also, the Carpenter's Safe is not affected by this.";
              };
              "Enable Pane Alpha Rendering" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This controls whether panes (used in doors, hatches, and other blocks) should render on alpha pass. This is needed to allow translucent window glass, for instance.";
              };
              "Enable Rail Slope Fill" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This allows Carpenter's Blocks with solid top faces to create slopes above them when a sloping rail is above the block.";
              };
              "Enable Side Covers" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Torch Weather Effects" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This controls whether torches extinguish themselves when exposed to rain or snow.";
              };
              "MultiBlock Size Limit" = lib.mkOption {
                type = lib.types.int;
                default = 500;
                description = "This controls how many blocks can be connected as a single entity. Note: only applies to Garage Doors.";
              };
              "Overlay Definitions" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "Seeds:grass" "Snowball:snow" "String:web" "Vines:vine" "Wheat:hay" "Mushroom:mycelium" ];
                description = "This maps items to overlays. Items are prefixed with display names (en_US only). Overlay suffixes are :grass, :snow, :web, :vine, :hay, :mycelium";
              };
              "Routable Fluids" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When enabled, unobstructed stationary fluid adjacent to block will render in the block space. Note: when enabled, you may experience noticeable chunk update lag spikes.";
              };
              Smoothness = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "This controls the smoothness of the slope faces. Note: smoothness of 2 is similar to stairs, while a value above 25 is generally fluid.";
              };
            };
          };
        };
        items = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable Chisel" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Hammer" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Tile" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Vanilla Tool Uses" = lib.mkOption {
                type = lib.types.int;
                default = 400;
              };
              "Vanilla Tools Damageable" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              itemHammerDamageChanceFromCollapsible = lib.mkOption {
                type = lib.types.float;
                default = 0.2;
              };
              itemHammerDamageChanceFromSlopes = lib.mkOption {
                type = lib.types.float;
                default = 0.75;
              };
              itemHammerDamageChanceFromStairs = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
            };
          };
        };
        "recipe quantities" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Barrier = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              Bed = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Block = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              Button = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              "Collapsible Block" = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              "Daylight Sensor" = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Door = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              "Flower Pot" = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              "Garage Door" = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              Gate = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Hatch = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Ladder = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              Lever = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              "Pressure Plate" = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Safe = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              Slope = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              Stairs = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              Tile = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              Torch = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
      };
    };
  };
}
