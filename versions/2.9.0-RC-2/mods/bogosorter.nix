{ lib, ... }:
{
  bogosorter_cfg = lib.mkOption {
    description = "bogosorter_cfg configuration (./config/bogosorter.cfg)";
    default = { };
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/bogosorter.cfg";
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
              autoRefillDamageThreshold = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "The damage threshold for auto-refill. If the item has less than this amount of durability, it will be refilled. [range: -2147483648 ~ 2147483647, default: 1]";
              };
              buttonColor = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "The color of the sort button.
Display format: 0xAARRGGBB (e.g. 0xFFFFFFFF for white, 0xFF0000FF for red).
Value is displayed in decimal here but interpreted as hex internally. [range: -2147483648 ~ 2147483647, default: -1]";
              };
              buttonEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable the sort button in the player inventory. [default: true]";
              };
              dropoff = lib.mkOption {
                default = { };
                type = lib.types.submodule {
                  options = {
                    button = lib.mkOption {
                      default = { };
                      type = lib.types.submodule {
                        options = {
                          buttonX = lib.mkOption {
                            type = lib.types.int;
                            default = 160;
                            description = "X position of the drop-off button in the player inventory. [range: -2147483648 ~ 2147483647, default: 160]";
                          };
                          buttonY = lib.mkOption {
                            type = lib.types.int;
                            default = 5;
                            description = "Y position of the drop-off button in the player inventory. [range: -2147483648 ~ 2147483647, default: 5]";
                          };
                          showButton = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Show the drop-off button in the player inventory. [default: true]";
                          };
                        };
                      };
                    };
                    dropoffChatMessage = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Show a chat message after dropping off items. [default: true]";
                    };
                    dropoffPacketThrottleInMS = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                      description = "Throttle drop-off packets in milliseconds. [range: -2147483648 ~ 2147483647, default: 500]";
                    };
                    dropoffQuotaInMS = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                      description = "Time quota for drop-off in milliseconds. [range: -2147483648 ~ 2147483647, default: 1]";
                    };
                    dropoffRadius = lib.mkOption {
                      type = lib.types.int;
                      default = 4;
                      description = "The radius (in blocks) around the player to scan for drop-off targets. [range: -2147483648 ~ 2147483647, default: 4]";
                    };
                    dropoffRender = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Render a highlight on eligible drop-off containers. [default: true]";
                    };
                    dropoffTargetNames = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [
                        "Chest"
                        "Barrel"
                        "Drawer"
                        "Crate"
                        "Present"
                        "Cabinet"
                        "Counter"
                        "Fridge"
                        "Filing"
                        "Compartment"
                        "Shulker"
                      ];
                      description = "Valid inventory names for drop-off targeting (substring match). [default: [Chest], [Barrel], [Drawer], [Crate], [Present], [Cabinet], [Counter], [Fridge], [Filing], [Compartment], [Shulker]]";
                    };
                    enableDropOff = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Enable the drop-off button in the player inventory. [default: true]";
                    };
                  };
                };
              };
              enableAutoRefill = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable the auto-refill feature (Client Side Toggle). [default: true]";
              };
              enableAutoRefill_server = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable the auto-refill feature. (Server Side Toggle) [default: true]";
              };
              enableHotbarSort = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Allow player hotbar to be sorted. [default: false]";
              };
              enableHotbarSwap = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable the hotbar swap feature. [default: true]";
              };
              preventSplit = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If enabled, items with max stack size of 1 (e.g., tools, armor, etc.)
will not be split when sorting. This helps avoid cluttering the inventory with duplicate single-item stacks. [default: true]";
              };
              sortSound = lib.mkOption {
                type = lib.types.str;
                default = "gui.button.press";
                description = "Sound played when the sort button is pressed. [default: gui.button.press]";
              };
              usageticker = lib.mkOption {
                default = { };
                type = lib.types.submodule {
                  options = {
                    arrow = lib.mkOption {
                      default = { };
                      type = lib.types.submodule {
                        options = {
                          arrowItems = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = [
                              "Thaumcraft:PrimalArrow"
                              "etfuturum:tipped_arrow"
                            ];
                            description = "List of item IDs to consider as valid arrows for the usage ticker. The order matters; the first match is used. [default: [Thaumcraft:PrimalArrow], [etfuturum:tipped_arrow]]";
                          };
                          bowItems = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = [
                              "minecraft:bow"
                              "Botania:crystalBow"
                              "Botania:livingwoodBow"
                              "DraconicEvolution:draconicBow"
                              "DraconicEvolution:wyvernBow"
                              "BloodArsenal:bound_bow"
                              "EnderZoo:guardiansBow"
                              "GalaxySpace:item.QuantBow"
                              "Natura:natura.bow.ghostwood"
                              "Natura:natura.bow.bloodwood"
                              "Natura:natura.bow.darkwood"
                              "Natura:natura.bow.fusewood"
                              "battlegear2:bow.iron"
                              "battlegear2:bow.diamond"
                              "Thaumcraft:ItemBowBone"
                              "TwilightForest:item.tripleBow"
                              "TwilightForest:item.seekerBow"
                              "TwilightForest:item.iceBow"
                              "TwilightForest:item.enderBow"
                            ];
                            description = "List of bow item IDs to enable arrow ticker for. Add modded bows here. [default: [minecraft:bow], [Botania:crystalBow], [Botania:livingwoodBow], [DraconicEvolution:draconicBow], [DraconicEvolution:wyvernBow], [BloodArsenal:bound_bow], [EnderZoo:guardiansBow], [GalaxySpace:item.QuantBow], [Natura:natura.bow.ghostwood], [Natura:natura.bow.bloodwood], [Natura:natura.bow.darkwood], [Natura:natura.bow.fusewood], [battlegear2:bow.iron], [battlegear2:bow.diamond], [Thaumcraft:ItemBowBone], [TwilightForest:item.tripleBow], [TwilightForest:item.seekerBow], [TwilightForest:item.iceBow], [TwilightForest:item.enderBow]]";
                          };
                          enableArrow = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                            description = "Show usage ticker for arrow. [default: true]";
                          };
                        };
                      };
                    };
                    enableArmor = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Show usage ticker for armor. [default: true]";
                    };
                    enableMainHand = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Show usage ticker for main hand. [default: true]";
                    };
                    enableModule = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Enable usage ticker module. [default: true]";
                    };
                    enableOffHand = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Show usage ticker for off hand. [default: true]";
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
}
