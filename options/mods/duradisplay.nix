{lib, ...}: {
  duradisplay = lib.mkOption {
    description = "duradisplay configuration (./config/duradisplay.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/duradisplay.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        charge = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Enable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable charge module [default: true]";
              };
              ShowWhenEmpty = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show charge percentage when empty [default: true]";
              };
              ShowWhenFull = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show charge percentage when item is undamaged/full [default: true]";
              };
              Style = lib.mkOption {
                type = lib.types.str;
                default = "Text";
                description = "Style of the Overlay, can be Text, Bar, or VerticalBar [default: Text]";
              };
              styleconfig = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          Position = lib.mkOption {
                            type = lib.types.int;
                            default = 8;
                            description = "Location in item where the charge percentage will be (numpad style) [range: 1 ~ 9, default: 8]";
                          };
                          TextFormat = lib.mkOption {
                            type = lib.types.str;
                            default = "percent";
                            description = "Format of the text [default: percent]";
                          };
                        };
                      };
                    };
                    bars = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          BarOffset = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                            description = "Offset the bar by this amount [range: 0 ~ 16, default: 2]";
                          };
                          ShowBackground = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Show bar background [default: true]";
                          };
                          SmoothBar = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Smooth the bar length [default: true]";
                          };
                        };
                      };
                    };
                  };
                };
              };
              color = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Color = lib.mkOption {
                      type = lib.types.str;
                      default = "ff55ff";
                      description = "Color of the Overlay (hex code, no prefix) [default: ff55ff]";
                    };
                    ColorThresholds = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "30.0" "70.0" ];
                      description = "By default from Red -> Yellow -> Green by default";
                    };
                    ColorType = lib.mkOption {
                      type = lib.types.str;
                      default = "Smooth";
                      description = "ColorType of the Overlay, can be RYGDurability, Threshold, Vanilla, Single, Smooth [default: Smooth]";
                    };
                    ThreeColors = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "ffb9aa" "bdd6ff" "55ffff" ];
                      description = "Colors used in Threshold/Smooth color mode (hex code, no prefix)";
                    };
                  };
                };
              };
            };
          };
        };
        durability = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Enable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable durability module [default: true]";
              };
              ShowWhenEmpty = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show durability percentage when empty [default: true]";
              };
              ShowWhenFull = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Show durability percentage when item is undamaged/full [default: false]";
              };
              Style = lib.mkOption {
                type = lib.types.str;
                default = "Text";
                description = "Style of the Overlay, can be Text, Bar, or VerticalBar [default: Text]";
              };
              styleconfig = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          Position = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                            description = "Location in item where the durability percentage will be (numpad style) [range: 1 ~ 9, default: 2]";
                          };
                          TextFormat = lib.mkOption {
                            type = lib.types.str;
                            default = "percent";
                            description = "Format of the text [default: percent]";
                          };
                        };
                      };
                    };
                    bars = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          BarOffset = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                            description = "Offset the bar by this amount [range: 0 ~ 16, default: 0]";
                          };
                          ShowBackground = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Show bar background [default: true]";
                          };
                          SmoothBar = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Smooth the bar length [default: true]";
                          };
                        };
                      };
                    };
                  };
                };
              };
              color = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Color = lib.mkOption {
                      type = lib.types.str;
                      default = "ff00";
                      description = "Color of the Overlay (hex code, no prefix) [default: ff00]";
                    };
                    ColorThresholds = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "30.0" "70.0" ];
                      description = "By default from Red -> Yellow -> Green by default";
                    };
                    ColorType = lib.mkOption {
                      type = lib.types.str;
                      default = "RYGDurability";
                      description = "ColorType of the Overlay, can be RYGDurability, Threshold, Vanilla, Single, Smooth [default: RYGDurability]";
                    };
                    ThreeColors = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "ff0000" "55ff00" "ff00" ];
                      description = "Colors used in Threshold/Smooth color mode (hex code, no prefix)";
                    };
                  };
                };
              };
            };
          };
        };
        gadgets = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Enable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable gadgets module [default: true]";
              };
              ShowWhenEmpty = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show gadgets percentage when empty [default: true]";
              };
              ShowWhenFull = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show gadgets percentage when item is undamaged/full [default: true]";
              };
              Style = lib.mkOption {
                type = lib.types.str;
                default = "Text";
                description = "Style of the Overlay, can be Text, Bar, or VerticalBar [default: Text]";
              };
              styleconfig = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          Position = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                            description = "Location in item where the gadgets percentage will be (numpad style) [range: 1 ~ 9, default: 2]";
                          };
                          TextFormat = lib.mkOption {
                            type = lib.types.str;
                            default = "remaining";
                            description = "Format of the text [default: remaining]";
                          };
                        };
                      };
                    };
                    bars = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          BarOffset = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                            description = "Offset the bar by this amount [range: 0 ~ 16, default: 2]";
                          };
                          ShowBackground = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Show bar background [default: true]";
                          };
                          SmoothBar = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Smooth the bar length [default: true]";
                          };
                        };
                      };
                    };
                  };
                };
              };
              color = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Color = lib.mkOption {
                      type = lib.types.str;
                      default = "ffffff";
                      description = "Color of the Overlay (hex code, no prefix) [default: ffffff]";
                    };
                    ColorThresholds = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "30.0" "70.0" ];
                      description = "By default from Red -> Yellow -> Green by default";
                    };
                    ColorType = lib.mkOption {
                      type = lib.types.str;
                      default = "Single";
                      description = "ColorType of the Overlay, can be RYGDurability, Threshold, Vanilla, Single, Smooth [default: Single]";
                    };
                    ThreeColors = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "ff0000" "ffbdc8" "ffffff" ];
                      description = "Colors used in Threshold/Smooth color mode (hex code, no prefix)";
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
              Enable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/disable the entire mod [default: true]";
              };
            };
          };
        };
        potion_brew = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Enable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable potion_brew module [default: true]";
              };
              ShowWhenEmpty = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show potion_brew percentage when empty [default: true]";
              };
              ShowWhenFull = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show potion_brew percentage when item is undamaged/full [default: true]";
              };
              Style = lib.mkOption {
                type = lib.types.str;
                default = "Text";
                description = "Style of the Overlay, can be Text, Bar, or VerticalBar [default: Text]";
              };
              styleconfig = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          Position = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                            description = "Location in item where the potion_brew percentage will be (numpad style) [range: 1 ~ 9, default: 2]";
                          };
                          TextFormat = lib.mkOption {
                            type = lib.types.str;
                            default = "remaining";
                            description = "Format of the text [default: remaining]";
                          };
                        };
                      };
                    };
                    bars = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          BarOffset = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                            description = "Offset the bar by this amount [range: 0 ~ 16, default: 2]";
                          };
                          ShowBackground = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Show bar background [default: true]";
                          };
                          SmoothBar = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Smooth the bar length [default: true]";
                          };
                        };
                      };
                    };
                  };
                };
              };
              color = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Color = lib.mkOption {
                      type = lib.types.str;
                      default = "ffffff";
                      description = "Color of the Overlay (hex code, no prefix) [default: ffffff]";
                    };
                    ColorThresholds = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "30.0" "70.0" ];
                      description = "By default from Red -> Yellow -> Green by default";
                    };
                    ColorType = lib.mkOption {
                      type = lib.types.str;
                      default = "Single";
                      description = "ColorType of the Overlay, can be RYGDurability, Threshold, Vanilla, Single, Smooth [default: Single]";
                    };
                    ThreeColors = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "ff0000" "ffbdc8" "ffffff" ];
                      description = "Colors used in Threshold/Smooth color mode (hex code, no prefix)";
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
