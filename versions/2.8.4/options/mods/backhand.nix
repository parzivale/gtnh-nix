{lib, ...}: {
  backhand = lib.mkOption {
    description = "backhand configuration (./config/backhand.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/backhand.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        client = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              RenderEmptyOffhandAtRest = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If set to false, an empty offhand will only be rendered when the player is punching with the offhand. [default: false]";
              };
              RenderOffhandHotbarSlotWhenEmpty = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If set to false, the offhand hotbar slot will only be rendered when the offhand is not empty. [default: false]";
              };
              offhandHotbarSlotXOffset = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "[range: -2000 ~ 2000, default: 0]";
              };
              offhandHotbarSlotYOffset = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "[range: 0 ~ 1000, default: 0]";
              };
              "offhand torch tweaks" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "Don't Use Last Offhand Torch" = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Don't place torches from the offhand if it is the last torch in your offhand [default: false]";
                    };
                    "No Offhand Torch At All" = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Don't place torches from the offhand at all Note: This overrides all other options [default: false]";
                    };
                    "No Offhand Torch With Block" = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Don't place torches from the offhand if the main hand has a block that can be placed [default: false]";
                    };
                    "No Offhand Torch With Empty Hand" = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Don't place torches from the offhand if the main hand is empty [default: false]";
                    };
                    "No Offhand Torch With Food" = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Don't place torches from the offhand if the main hand has food [default: false]";
                    };
                    "Offhand Torch With Tool Only" = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Don't place torches from the offhand unless the main hand contains a tool Vanilla tools include swords, hoes, axes, and pickaxes Modded tools include Tinker's Construct tools (not weapons) [default: false]";
                    };
                    torch_items = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "minecraft:torch" "minecraft:redstone_torch" "Automagy:blockTorchInversion" "BloodArsenal:blood_torch" "CarpentersBlocks:blockCarpentersTorch" "TConstruct:decoration.stonetorch" "etfuturum:soul_torch" "GalacticraftCore:glowstoneTorch" "chisel:torch1" "chisel:torch2" "chisel:torch3" "chisel:torch4" "chisel:torch5" "chisel:torch6" "chisel:torch7" "chisel:torch8" "chisel:torch9" "chisel:torch10" "harvestcraft:pamcandleDeco1" "harvestcraft:pamcandleDeco2" "harvestcraft:pamcandleDeco3" "harvestcraft:pamcandleDeco4" "harvestcraft:pamcandleDeco5" "harvestcraft:pamcandleDeco6" "harvestcraft:pamcandleDeco7" "harvestcraft:pamcandleDeco8" "harvestcraft:pamcandleDeco9" "harvestcraft:pamcandleDeco10" "harvestcraft:pamcandleDeco11" "harvestcraft:pamcandleDeco12" "harvestcraft:pamcandleDeco13" "harvestcraft:pamcandleDeco14" "harvestcraft:pamcandleDeco15" "harvestcraft:pamcandleDeco16" ];
                      description = "These items will be count as torches Formatting of an item should be: modid:itemname These should all be placed on separate lines between the provided '<' and '>'. [default: [minecraft:torch], [minecraft:redstone_torch]]";
                    };
                  };
                };
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              EmptyOffhand = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If set to false, disables offhand actions and rendering if there is no offhand item. False in vanilla. [default: false]";
              };
              OffhandAttack = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If set to false, an empty offhand will only be rendered when the player is punching with the offhand. False in vanilla. [default: false]";
              };
              OffhandBreakBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Determines whether you can break blocks with the offhand or not. False in vanilla. [default: false]";
              };
              OffhandPickup = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Picked up items can go into the offhand slot when empty. False in vanilla [default: false]";
              };
              offhandBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "These items will be unable to be swapped into the offhand. Formatting of an item should be: modid:itemname These should all be placed on separate lines between the provided '<' and '>'. [default: ]";
              };
            };
          };
        };
      };
    };
  };
}
