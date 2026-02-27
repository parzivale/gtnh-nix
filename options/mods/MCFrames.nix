{lib, ...}: {
  MCFrames = lib.mkOption {
    description = "MCFrames configuration (./config/MCFrames.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/MCFrames.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "Latched Sets" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "latch registry" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "minecraft:bed -> minecraft:bed" "minecraft:wooden_door -> minecraft:wooden_door" "minecraft:iron_door -> minecraft:iron_door" ];
              };
            };
          };
        };
      };
    };
  };
}
