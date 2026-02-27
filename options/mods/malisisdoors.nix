{lib, ...}: {
  malisisdoors = lib.mkOption {
    description = "malisisdoors configuration (./config/malisisdoors.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/malisisdoors.cfg";
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
              "config.enableCamoFenceGate" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "nullEnables Fence Gate to use the texture of the blocks surrounding them.";
              };
              "config.enableMixedBlocks" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "config.enableVanishingBlocks" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "config.enableVanishingGlitch" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "nullFrames randomly become unstable and are temporarily out of this dimension.";
              };
              "config.enhancedMixedBlockPlacement" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "nullAllows to place the block base on where you look instead of the side you're placing it on. Use sneak key to inverse the block placement.";
              };
              "config.modifyVanillaDoors" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "nullEnables the animations for doors, fence gates and trap doors. This replaces the doors entirely so conflicts may arise if another mod tries to modify them too.";
              };
              "config.simpleMixedBlockRendering" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "nullEnables less fancy rendering for Mixed Blocks. Enable this option if you experience z-fighting issue or glitched rendering.";
              };
              "config.vanishingGlitchChance" = lib.mkOption {
                type = lib.types.str;
                default = "5.0E-4";
                description = "nullHow often the frame become unstable.";
              };
            };
          };
        };
      };
    };
  };
}
