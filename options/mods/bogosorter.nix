{lib, ...}: {
  bogosorter = lib.mkOption {
    description = "bogosorter configuration (./config/bogosorter.cfg)";
    default = {};
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
          default = {};
          type = lib.types.submodule {
            options = {
              autoRefillDamageThreshold = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "The damage threshold for auto-refill. If the item has less than this amount of durability, it will be refilled. [range: -2147483648 ~ 2147483647, default: 1]";
              };
              buttonColor = lib.mkOption {
                type = lib.types.str;
                default = "-1";
                description = "Value is displayed in decimal here but interpreted as hex internally. [range: -2147483648 ~ 2147483647, default: -1]";
              };
              buttonEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable the sort button in the player inventory. [default: true]";
              };
              enableAutoRefill = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable the auto-refill feature. [default: true]";
              };
              enableHotbarSort = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable the hotbar sort feature. [default: false]";
              };
              enableHotbarSwap = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable the hotbar swap feature. [default: true]";
              };
              enableNoGuiSort = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Sort inventory when keybind is pressed while no GUI is open. [default: true]";
              };
              preventSplit = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "will not be split when sorting. This helps avoid cluttering the inventory with duplicate single-item stacks. [default: true]";
              };
              sortSound = lib.mkOption {
                type = lib.types.str;
                default = "gui.button.press";
                description = "Sound played when the sort button is pressed. [default: gui.button.press]";
              };
              dropoff = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
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
                      default = [ "Chest" "Barrel" "Drawer" "Crate" ];
                      description = "Valid inventory names for drop-off targeting (substring match). [default: [Chest], [Barrel], [Drawer], [Crate]]";
                    };
                    enableDropOff = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Enable the drop-off button in the player inventory. [default: true]";
                    };
                    button = lib.mkOption {
                      default = {};
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
                  };
                };
              };
              usageticker = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
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
