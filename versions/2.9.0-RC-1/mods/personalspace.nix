{ lib, ... }:
{
  personalspace_cfg = lib.mkOption {
    description = "personalspace_cfg configuration (./config/personalspace.cfg)";
    default = { };
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/personalspace.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        allowedbiomes = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              general = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "Plains"
                  "Ocean"
                  "Desert"
                  "Extreme Hills"
                  "Forest"
                  "Taiga"
                  "Swampland"
                  "River"
                  "MushroomIsland"
                  "Swampland"
                  "Jungle"
                  "Savanna"
                  "Mesa"
                  "Flower Field"
                  "Flower Forest"
                ];
                description = "List of biomes allowed for the personal dimensions. [default: [Plains], [Ocean], [Desert], [Extreme Hills], [Forest], [Taiga], [Swampland], [River], [MushroomIsland], [Swampland], [Jungle], [Savanna], [Mesa]]";
              };
            };
          };
        };
        allowedblocks = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              general = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "minecraft:bedrock"
                  "minecraft:stone"
                  "minecraft:cobblestone"
                  "minecraft:dirt"
                  "minecraft:grass"
                  "minecraft:double_stone_slab"
                  "minecraft:netherrack"
                  "minecraft:stonebrick"
                  "chisel:cubit:0-15"
                  "chisel:froglight:0-9"
                  "chisel:woolen_clay:0-15"
                  "chisel:hexPlating:0-15"
                  "chisel:hexLargePlating:0-15"
                  "chisel:laboratoryblock:0-15"
                  "chisel:glotek:0-15"
                  "chisel:neonite:0-15"
                  "chisel:factoryblock:0-15"
                  "chisel:factoryblock2:0-3"
                  "ExtraUtilities:greenscreen:0-15"
                  "etfuturum:smooth_stone"
                  "etfuturum:concrete:0-15"
                  "Ztones:tile.laveBlock:0-15"
                  "Ztones:tile.agonBlock:0-15"
                  "Ztones:tile.bittBlock:0-15"
                  "Ztones:tile.crayBlock:0-15"
                  "Ztones:tile.iszmBlock:0-15"
                  "Ztones:tile.mintBlock:0-15"
                  "Ztones:tile.mystBlock:0-15"
                  "Ztones:tile.zoeaBlock:0-15"
                  "Ztones:tile.zaneBlock:0-15"
                ];
                description = "Allowed layer blocks with meta ranges. Format: modid:block:damage  damage: 0, 0-12, !5, 0-15,!3. Blocks without meta spec default to meta 0. Example: minecraft:stone:0-6 [default: [minecraft:air], [minecraft:bedrock], [minecraft:stone], [minecraft:cobblestone], [minecraft:dirt], [minecraft:grass], [minecraft:double_stone_slab], [minecraft:netherrack]]";
              };
            };
          };
        };
        allowedboundaryblocks = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              general = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "minecraft:bedrock"
                  "minecraft:stone"
                  "minecraft:cobblestone"
                  "minecraft:dirt"
                  "minecraft:grass"
                  "minecraft:double_stone_slab"
                  "minecraft:netherrack"
                  "minecraft:stonebrick"
                  "chisel:cubit:0-15"
                  "chisel:froglight:0-9"
                  "chisel:woolen_clay:0-15"
                  "chisel:hexPlating:0-15"
                  "chisel:hexLargePlating:0-15"
                  "chisel:laboratoryblock:0-15"
                  "chisel:glotek:0-15"
                  "chisel:neonite:0-15"
                  "chisel:factoryblock:0-15"
                  "chisel:factoryblock2:0-3"
                  "ExtraUtilities:greenscreen:0-15"
                  "etfuturum:smooth_stone"
                  "etfuturum:concrete:0-15"
                  "Ztones:tile.laveBlock:0-15"
                  "Ztones:tile.agonBlock:0-15"
                  "Ztones:tile.bittBlock:0-15"
                  "Ztones:tile.crayBlock:0-15"
                  "Ztones:tile.iszmBlock:0-15"
                  "Ztones:tile.mintBlock:0-15"
                  "Ztones:tile.mystBlock:0-15"
                  "Ztones:tile.zoeaBlock:0-15"
                  "Ztones:tile.zaneBlock:0-15"
                ];
                description = "Allowed boundary blocks with meta ranges. Format: modid:block:damage  damage: 0, 0-12, !5, 0-15,!3. Example: minecraft:stone:0-6 [default: [minecraft:wool:0-15]]";
              };
            };
          };
        };
        allowedcenterblocks = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              general = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "minecraft:bedrock"
                  "minecraft:stone"
                  "minecraft:cobblestone"
                  "minecraft:dirt"
                  "minecraft:grass"
                  "minecraft:double_stone_slab"
                  "minecraft:netherrack"
                  "minecraft:stonebrick"
                  "chisel:cubit:0-15"
                  "chisel:froglight:0-9"
                  "chisel:woolen_clay:0-15"
                  "chisel:hexPlating:0-15"
                  "chisel:hexLargePlating:0-15"
                  "chisel:laboratoryblock:0-15"
                  "chisel:glotek:0-15"
                  "chisel:neonite:0-15"
                  "chisel:factoryblock:0-15"
                  "chisel:factoryblock2:0-3"
                  "ExtraUtilities:greenscreen:0-15"
                  "etfuturum:smooth_stone"
                  "etfuturum:concrete:0-15"
                  "Ztones:tile.laveBlock:0-15"
                  "Ztones:tile.agonBlock:0-15"
                  "Ztones:tile.bittBlock:0-15"
                  "Ztones:tile.crayBlock:0-15"
                  "Ztones:tile.iszmBlock:0-15"
                  "Ztones:tile.mintBlock:0-15"
                  "Ztones:tile.mystBlock:0-15"
                  "Ztones:tile.zoeaBlock:0-15"
                  "Ztones:tile.zaneBlock:0-15"
                ];
                description = "Allowed center marker blocks with meta ranges. Format: modid:block:damage  damage: 0, 0-12, !5, 0-15,!3. Example: minecraft:wool:0-15 [default: [minecraft:wool:0-15]]";
              };
            };
          };
        };
        allowedgapblocks = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              general = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "minecraft:bedrock"
                  "minecraft:stone"
                  "minecraft:cobblestone"
                  "minecraft:dirt"
                  "minecraft:grass"
                  "minecraft:double_stone_slab"
                  "minecraft:netherrack"
                  "minecraft:stonebrick"
                  "chisel:cubit:0-15"
                  "chisel:froglight:0-9"
                  "chisel:woolen_clay:0-15"
                  "chisel:hexPlating:0-15"
                  "chisel:hexLargePlating:0-15"
                  "chisel:laboratoryblock:0-15"
                  "chisel:glotek:0-15"
                  "chisel:neonite:0-15"
                  "chisel:factoryblock:0-15"
                  "chisel:factoryblock2:0-3"
                  "ExtraUtilities:greenscreen:0-15"
                  "etfuturum:smooth_stone"
                  "etfuturum:concrete:0-15"
                  "Ztones:tile.laveBlock:0-15"
                  "Ztones:tile.agonBlock:0-15"
                  "Ztones:tile.bittBlock:0-15"
                  "Ztones:tile.crayBlock:0-15"
                  "Ztones:tile.iszmBlock:0-15"
                  "Ztones:tile.mintBlock:0-15"
                  "Ztones:tile.mystBlock:0-15"
                  "Ztones:tile.zoeaBlock:0-15"
                  "Ztones:tile.zaneBlock:0-15"
                ];
                description = "Allowed gap blocks with meta ranges. Format: modid:block:damage  damage: 0, 0-12, !5, 0-15,!3. Example: minecraft:wool:0-15 [default: [minecraft:wool:0-15]]";
              };
            };
          };
        };
        defaultpresets = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              general = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "minecraft:bedrock;minecraft:dirt*3;minecraft:grass"
                  "minecraft:bedrock*4;minecraft:stone*58;minecraft:dirt;minecraft:grass"
                  "minecraft:air*53;etfuturum:concrete;minecraft:air*9;etfuturum:concrete|B,chisel:factoryblock:6,,2,2|G,1,0,etfuturum:concrete:15,ExtraUtilities:greenscreen:9,etfuturum:concrete|C,0,0,"
                ];
                description = "Default world configuration presets. Format: blockname*layers;blockname*layers;..., example preset: minecraft:bedrock;minecraft:dirt*3;minecraft:grass [default: [], [minecraft:bedrock;minecraft:dirt*3;minecraft:grass], [minecraft:bedrock*4;minecraft:stone*58;minecraft:dirt;minecraft:grass]]";
              };
            };
          };
        };
        general = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              debugLogging = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Debug logging toggle [default: false]";
              };
              dropdownMaxVisibleColumns = lib.mkOption {
                type = lib.types.int;
                default = 12;
                description = "Maximum number of visible columns in block dropdown menus [range: 1 ~ 24, default: 12]";
              };
              dropdownMaxVisibleRows = lib.mkOption {
                type = lib.types.int;
                default = 6;
                description = "Maximum number of visible rows in block dropdown menus [range: 1 ~ 20, default: 6]";
              };
              firstDimensionId = lib.mkOption {
                type = lib.types.int;
                default = 180;
                description = "First dimension ID to use for newly generated worlds [range: 0 ~ 2147483647, default: 180]";
              };
              useBlockEventChecks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use fake Block break events to check for permissions, disable in case of broken event handlers [default: true]";
              };
            };
          };
        };
      };
    };
  };
}
