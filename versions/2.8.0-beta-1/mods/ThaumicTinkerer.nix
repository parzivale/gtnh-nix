{lib, ...}: {
  ThaumicTinkerer = lib.mkOption {
    description = "ThaumicTinkerer configuration (./config/ThaumicTinkerer.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumicTinkerer.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        balance = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              shadowbeam = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "aer vis cost" = lib.mkOption {
                      type = lib.types.int;
                      default = 300;
                      description = "vis cost for the aer aspect, 1/100th in-game [range: -2147483648 ~ 2147483647, default: 15]";
                    };
                    "ordo vis cost" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                      description = "vis cost for the ordo aspect, 1/100th in-game [range: -2147483648 ~ 2147483647, default: 25]";
                    };
                    "perditio vis cost" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                      description = "vis cost for the perditio aspect, 1/100th in-game [range: -2147483648 ~ 2147483647, default: 25]";
                    };
                    "shadowbeam base damage" = lib.mkOption {
                      type = lib.types.int;
                      default = 100;
                      description = "base damage of the shadowbeam focus [range: -2147483648 ~ 2147483647, default: 8]";
                    };
                  };
                };
              };
            };
          };
        };
        block = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              kami = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  };
                };
              };
            };
          };
        };
        enchantments = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "id_enchant.ttinkerer:ascentBoost" = lib.mkOption {
                type = lib.types.int;
                default = 220;
              };
              "id_enchant.ttinkerer:autoSmelt" = lib.mkOption {
                type = lib.types.int;
                default = 222;
              };
              "id_enchant.ttinkerer:desintegrate" = lib.mkOption {
                type = lib.types.int;
                default = 223;
              };
              "id_enchant.ttinkerer:dispersedStrike" = lib.mkOption {
                type = lib.types.int;
                default = 166;
              };
              "id_enchant.ttinkerer:finalStrike" = lib.mkOption {
                type = lib.types.int;
                default = 168;
              };
              "id_enchant.ttinkerer:focusedStrike" = lib.mkOption {
                type = lib.types.int;
                default = 169;
              };
              "id_enchant.ttinkerer:pounce" = lib.mkOption {
                type = lib.types.int;
                default = 170;
              };
              "id_enchant.ttinkerer:quickDraw" = lib.mkOption {
                type = lib.types.int;
                default = 224;
              };
              "id_enchant.ttinkerer:shatter" = lib.mkOption {
                type = lib.types.int;
                default = 167;
              };
              "id_enchant.ttinkerer:shockwave" = lib.mkOption {
                type = lib.types.int;
                default = 171;
              };
              "id_enchant.ttinkerer:slowFall" = lib.mkOption {
                type = lib.types.int;
                default = 221;
              };
              "id_enchant.ttinkerer:tunnel" = lib.mkOption {
                type = lib.types.int;
                default = 172;
              };
              "id_enchant.ttinkerer:valiance" = lib.mkOption {
                type = lib.types.int;
                default = 173;
              };
              "id_enchant.ttinkerer:vampirism" = lib.mkOption {
                type = lib.types.int;
                default = 225;
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Bedrock Dimension ore density" = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "The number of vertical veins of ore per chunk. Default: 1 [range: 0 ~ 1023, default: 1]";
              };
              "Focus of Dislocation Blacklist" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "avaritiaddons:CompressedChest" "avaritiaddons:InfinityChest" "Thaumcraft:blockAiry" "EnderIO:blockConduitBundle" "ExtraUtilities:filing" "extracells:hardmedrive" "appliedenergistics2:tile.BlockDrive" "appliedenergistics2:tile.BlockMatrixFrame" "appliedenergistics2:tile.BlockCableBus" "appliedenergistics2:tile.BlockIOPort" "appliedenergistics2:tile.BlockSpatialIOPort" "appliedenergistics2:tile.BlockSecurity" "ThaumicHorizons:vortexTH" "HardcoreEnderExpansion:transport_beacon" "minecraft:end_portal" "minecraft:end_portal_frame" "Thaumcraft:blockPortalEldritch" "Thaumcraft:blockEldritchNothing" "kekztech:kekztech_ichorjar_block" "kekztech:kekztech_thaumiumreinforcedjar_block" ];
                description = "These blocks will be disallowed for Focus of Dislocation [default: [avaritiaddons:CompressedChest], [avaritiaddons:InfinityChest]]";
              };
              "Forbidden Dimensions" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "55" ];
                description = "Disallow Bottomless Pouch inventory for certain dimension ID's [default: []]";
              };
              "cropsAllowBonemeal.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Allows crops to be grown using bonemeal. Useful for debug purposes. [default: false]";
              };
              "debugCommands.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to enable debugging commands. [default: false]";
              };
              "imbuedFire.cake.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to disable imbued fire making cake. For those people who don't like cake [default: true]";
              };
              "imbuedFire.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to disable imbued fire. [default: true]";
              };
              "imbuedFireSpread.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to disable imbued fire spreading/acting mechanism. [default: true]";
              };
              "kami.forceenabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to enable all KAMI stuff [default: true]";
              };
              "modFlight.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to enable flight in this mod. [default: true]";
              };
              "oreDictMetal.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to disable usage of ore dictionary metals (tin and copper). [default: true]";
              };
              "repairTconTools.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Can Thaumic Tinkerer repair Tinkers Construct tools. [default: false]";
              };
              "research.easymode.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "shareTome.survival.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to disable the crafting recipe for the Tome of Research Sharing. [default: true]";
              };
              "soulHeart.height" = lib.mkOption {
                type = lib.types.int;
                default = 49;
                description = "The height of the Soul Heart bar. You can change this if you have a mod that adds a bar in that spot. [range: 0 ~ 256, default: 49]";
              };
              "tooltipIndicators.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to disable the [TT] tooltips in the thauminomicon. [default: true]";
              };
              kami = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "Bedrock dimension id" = lib.mkOption {
                      type = lib.types.int;
                      default = 60;
                      description = "Set to the dimension id wished for bedrock dimension, or 0 to disable [range: -1023 ~ 1023, default: -19]";
                    };
                    "Bedrock dimension ore Blacklist" = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "oreFirestone" ];
                      description = "These ores will not be spawned in the bedrock dimension [default: [oreFirestone]]";
                    };
                    "Kami Boots Dirt into Grass Feature Enabled" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Sets if Boots of the Horizontal Shield (Awakened Kami Boots) will do the effect where dirt under you turns into grass. [default: true]";
                    };
                    "Kami Leggings Light Placing Feature Enabled" = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Sets if Legs of the Burning Mantle (Awakened Kami leggings) will do the effect where it places lights near you. [default: false]";
                    };
                    "dimension.end.id" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                      description = "The Dimension ID for the End, leave at 1 if you don't modify it with another mod/plugin. [range: -1023 ~ 1023, default: 1]";
                    };
                    "dimension.nether.id" = lib.mkOption {
                      type = lib.types.int;
                      default = -1;
                      description = "The Dimension ID for the Nether, leave at -1 if you don't modify it with another mod/plugin. [range: -1023 ~ 1023, default: -1]";
                    };
                    "placementMirror.blocks.show" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Set to false to remove the phantom blocks displayed by the Worldshaper's Seeing Glass. [default: true]";
                    };
                  };
                };
              };
            };
          };
        };
        item = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              kami = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  };
                };
              };
            };
          };
        };
        potions = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Air Potion id" = lib.mkOption {
                type = lib.types.int;
                default = 90;
                description = "Set to the potion id for air potion [range: 30 ~ 1023, default: 86]";
              };
              "Earth Potion id" = lib.mkOption {
                type = lib.types.int;
                default = 89;
                description = "Set to the potion id for earth potion [range: 30 ~ 1023, default: 87]";
              };
              "Fire Potion id" = lib.mkOption {
                type = lib.types.int;
                default = 86;
                description = "Set to the potion id for fire potion [range: 30 ~ 1023, default: 88]";
              };
              "Water Potion id" = lib.mkOption {
                type = lib.types.int;
                default = 87;
                description = "Set to the potion id for water potion [range: 30 ~ 1023, default: 89]";
              };
            };
          };
        };
      };
    };
  };
}
