{lib, ...}: {
  ArchitectureCraft = lib.mkOption {
    description = "ArchitectureCraft configuration (./config/ArchitectureCraft.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ArchitectureCraft.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        materials = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              UnlocalizedNames = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "tile.chisel.stained_glass" "tile.chisel.glass" "tile.chisel.stained_glass_black" "tile.chisel.stained_glass_red" "tile.chisel.stained_glass_green" "tile.chisel.stained_glass_brown" "tile.chisel.stained_glass_blue" "tile.chisel.stained_glass_purple" "tile.chisel.stained_glass_cyan" "tile.chisel.stained_glass_lightgray" "tile.chisel.stained_glass_gray" "tile.chisel.stained_glass_pink" "tile.chisel.stained_glass_lime" "tile.chisel.stained_glass_yellow" "tile.chisel.stained_glass_lightblue" "tile.chisel.stained_glass_magenta" "tile.chisel.stained_glass_orange" "tile.chisel.stained_glass_white" "tile.extrautils:greenscreen" ];
              };
              EmissiveItemIDs = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "ExtraUtilities:greenscreen" "chisel:antiBlock" "chisel:neonite" ];
                description = "Blocks that will be rendered with full brightness [default: [ExtraUtilities:greenscreen], [chisel:antiBlock], [chisel:neonite]]";
              };
            };
          };
        };
      };
    };
  };
}
