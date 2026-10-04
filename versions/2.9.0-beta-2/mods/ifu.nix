{ lib, ... }:
{
  ifu_cfg = lib.mkOption {
    description = "ifu_cfg configuration (./config/ifu.cfg)";
    default = { };
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/ifu.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        general = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              Allowlist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [
                  "etfuturum:amethyst_block"
                  "etfuturum:amethyst_cluster_1"
                  "etfuturum:amethyst_cluster_2"
                ];
                description = "Extra non-ore blocks allowed by Ore Finder. Use the block Item ID with an optional metadata suffix: \"minecraft:cobblestone\" matches any metadata, \"gregtech:gt.blockores2:307\" matches that specific one [default: ]";
              };
              Blocklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "minecraft:chest" ];
                description = "Blocks the Ore Finder must never search for, that it would otherwise match on its own. Use the block Item ID, same rules as Allowlist [default: ]";
              };
              "Debug block info" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, right-clicking a block with the Ore Finder prints: the block's name, metadata and ore material/flags, plus the material internalName(s) the item inside the wand resolves to (can be used by Material Blocklist). Useful for diagnosing ore matching and for finding what to put in an Allow/Block list [default: false]";
              };
              "Enable Everywhere" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If this is set to false, the OreFinder will only work in the Owerworld, Nether and Twilight Forest [default: false]";
              };
              "Material Blocklist" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "EnderPearl" ];
                description = "Ore materials the Ore Finder must never search for. Use the material name printed by the Debug block info option, for example: \"Gold\" or \"MeteoricIron\". [default: ]";
              };
              Sounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, Ore finder will play sounds [default: true]";
              };
              "X Z Area radius" = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "change scanning radius from player [range: 1 ~ 16, default: 5]";
              };
              "Y Area radius" = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "change scanning distance above and below the player [range: 1 ~ 60, default: 60]";
              };
            };
          };
        };
      };
    };
  };
}
