{lib, ...}: {
  InGameInfo_xml = lib.mkOption {
    description = "InGameInfo_xml configuration (./config/InGameInfo.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/InGameInfo.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        __root = lib.mkOption {
          type = lib.types.str;
          default = "config";
        };
        lines_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "@at" = lib.mkOption {
                type = lib.types.str;
                default = "topleft";
              };
              line_0 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    str = lib.mkOption {
                      type = lib.types.str;
                      default = "{pingicon}{gold}{username} {white}FPS:";
                    };
                    op = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "gt";
                          };
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "fps";
                          };
                          num_0 = lib.mkOption {
                            type = lib.types.int;
                            default = 60;
                          };
                          num_1 = lib.mkOption {
                            type = lib.types.int;
                            default = 45;
                          };
                          num_2 = lib.mkOption {
                            type = lib.types.int;
                            default = 30;
                          };
                          num_3 = lib.mkOption {
                            type = lib.types.int;
                            default = 15;
                          };
                          num_4 = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "{green}";
                          };
                          str_2 = lib.mkOption {
                            type = lib.types.str;
                            default = "{yellow}";
                          };
                          str_3 = lib.mkOption {
                            type = lib.types.str;
                            default = "{gold}";
                          };
                          str_4 = lib.mkOption {
                            type = lib.types.str;
                            default = "{red}";
                          };
                          str_5 = lib.mkOption {
                            type = lib.types.str;
                            default = "{darkred}";
                          };
                          str_6 = lib.mkOption {
                            type = lib.types.str;
                            default = "";
                          };
                        };
                      };
                    };
                    var = lib.mkOption {
                      type = lib.types.str;
                      default = "fps";
                    };
                  };
                };
              };
              line_1 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    icon = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str = lib.mkOption {
                            type = lib.types.str;
                            default = "minecraft:clock";
                          };
                        };
                      };
                    };
                    str_0 = lib.mkOption {
                      type = lib.types.str;
                      default = "Minecraft Year {darkaqua}";
                    };
                    add = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          round = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                div = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      sub = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            var = lib.mkOption {
                                              type = lib.types.str;
                                              default = "day";
                                            };
                                            modi = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  var = lib.mkOption {
                                                    type = lib.types.str;
                                                    default = "day";
                                                  };
                                                  num = lib.mkOption {
                                                    type = lib.types.int;
                                                    default = 365;
                                                  };
                                                };
                                              };
                                            };
                                          };
                                        };
                                      };
                                      num = lib.mkOption {
                                        type = lib.types.int;
                                        default = 365;
                                      };
                                    };
                                  };
                                };
                                num = lib.mkOption {
                                  type = lib.types.int;
                                  default = 0;
                                };
                              };
                            };
                          };
                          num = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                        };
                      };
                    };
                    str_1 = lib.mkOption {
                      type = lib.types.str;
                      default = "{white}Day {darkaqua}";
                    };
                    modi = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "day";
                          };
                          num = lib.mkOption {
                            type = lib.types.int;
                            default = 365;
                          };
                        };
                      };
                    };
                    str_2 = lib.mkOption {
                      type = lib.types.str;
                      default = "{white} Time: {gold}{mctime12}";
                    };
                    "if" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "daytime";
                          };
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "{yellow}(day)";
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "{gray}(night)";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_2 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    icon = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str = lib.mkOption {
                            type = lib.types.str;
                            default = "HardcoreEnderExpansion:temple_end_portal";
                          };
                        };
                      };
                    };
                    str = lib.mkOption {
                      type = lib.types.str;
                      default = "Dimension: {gold}{dimension} ({dimensionid}) {white}Chunks Loaded: {gold}{loadedchunks}";
                    };
                  };
                };
              };
              line_3 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    icon = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str = lib.mkOption {
                            type = lib.types.str;
                            default = "minecraft:sapling";
                          };
                          num = lib.mkOption {
                            type = lib.types.int;
                            default = 4;
                          };
                        };
                      };
                    };
                    str_0 = lib.mkOption {
                      type = lib.types.str;
                      default = "Biome: {darkaqua}{biome} {gold}{localtemperature}{white}°F {gold}";
                    };
                    round_0 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          div = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                sub = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "localtemperature";
                                      };
                                      num = lib.mkOption {
                                        type = lib.types.int;
                                        default = 32;
                                      };
                                    };
                                  };
                                };
                                num = lib.mkOption {
                                  type = lib.types.float;
                                  default = 1.8;
                                };
                              };
                            };
                          };
                          num = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                        };
                      };
                    };
                    str_1 = lib.mkOption {
                      type = lib.types.str;
                      default = "{white}°C {gold}";
                    };
                    round_1 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          add = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                div = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      sub = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            var = lib.mkOption {
                                              type = lib.types.str;
                                              default = "localtemperature";
                                            };
                                            num = lib.mkOption {
                                              type = lib.types.int;
                                              default = 32;
                                            };
                                          };
                                        };
                                      };
                                      num = lib.mkOption {
                                        type = lib.types.float;
                                        default = 1.8;
                                      };
                                    };
                                  };
                                };
                                num = lib.mkOption {
                                  type = lib.types.float;
                                  default = 273.15;
                                };
                              };
                            };
                          };
                          num = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                        };
                      };
                    };
                    str_2 = lib.mkOption {
                      type = lib.types.str;
                      default = "{white}K";
                    };
                    str_3 = lib.mkOption {
                      type = lib.types.str;
                      default = "{gold}{humidity}{white}% Humidity";
                    };
                  };
                };
              };
              line_4 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    icon = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str = lib.mkOption {
                            type = lib.types.str;
                            default = "minecraft:skull";
                          };
                          num = lib.mkOption {
                            type = lib.types.int;
                            default = 4;
                          };
                        };
                      };
                    };
                    str = lib.mkOption {
                      type = lib.types.str;
                      default = "Entities: {gold}{entitiesrendered} {white}Rendered / {gold}{entitiestotal} {white}Loaded";
                    };
                  };
                };
              };
              line_5 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    icon = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str = lib.mkOption {
                            type = lib.types.str;
                            default = "minecraft:compass";
                          };
                          num = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                        };
                      };
                    };
                    str = lib.mkOption {
                      type = lib.types.str;
                      default = "Chunk X: {gold}{chunkx} {white}Z: {gold}{chunkz} {white}Off: {gold}{chunkoffsetx} {white}: {gold}{chunkoffsetz} {white}Y: {gold}{yfeeti} {white}Facing {gold}{finedirection}";
                    };
                    "if" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "slimechunk";
                          };
                          str = lib.mkOption {
                            type = lib.types.str;
                            default = "{gold}SlimeChunk{white}";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_6 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    icon = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str = lib.mkOption {
                            type = lib.types.str;
                            default = "minecraft:torch";
                          };
                        };
                      };
                    };
                    str_0 = lib.mkOption {
                      type = lib.types.str;
                      default = "Light:";
                    };
                    max_0 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "light";
                          };
                          num = lib.mkOption {
                            type = lib.types.float;
                            default = 7.5;
                          };
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "{yellow}";
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "{red}";
                          };
                        };
                      };
                    };
                    var_0 = lib.mkOption {
                      type = lib.types.str;
                      default = "light";
                    };
                    str_1 = lib.mkOption {
                      type = lib.types.str;
                      default = "{white}(Feet:";
                    };
                    max_1 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "lightfeet";
                          };
                          num = lib.mkOption {
                            type = lib.types.float;
                            default = 7.5;
                          };
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "{yellow}";
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "{red}";
                          };
                        };
                      };
                    };
                    var_1 = lib.mkOption {
                      type = lib.types.str;
                      default = "lightfeet";
                    };
                    str_2 = lib.mkOption {
                      type = lib.types.str;
                      default = "{white})";
                    };
                  };
                };
              };
              line_7 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    str = lib.mkOption {
                      type = lib.types.str;
                      default = "{black}";
                    };
                  };
                };
              };
              line_8 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    if_0 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "snowing";
                          };
                          str = lib.mkOption {
                            type = lib.types.str;
                            default = "It is {darkgreen}{underline}Snowing{reset}";
                          };
                        };
                      };
                    };
                    if_1 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "raining";
                          };
                          str = lib.mkOption {
                            type = lib.types.str;
                            default = "It is {darkgreen}{underline}Raining{reset}";
                          };
                        };
                      };
                    };
                    if_2 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "thundering";
                          };
                          str = lib.mkOption {
                            type = lib.types.str;
                            default = "and {darkgreen}{underline}Thundering{reset}.";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_9 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    str = lib.mkOption {
                      type = lib.types.str;
                      default = "{black}";
                    };
                  };
                };
              };
              line_10 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    if_0 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          equal = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                var = lib.mkOption {
                                  type = lib.types.str;
                                  default = "gtnewore";
                                };
                                str = lib.mkOption {
                                  type = lib.types.bool;
                                  default = true;
                                };
                              };
                            };
                          };
                          "if" = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                "and" = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      or_0 = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            equal_0 = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  modi = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "chunkx";
                                                        };
                                                        num = lib.mkOption {
                                                          type = lib.types.int;
                                                          default = 3;
                                                        };
                                                      };
                                                    };
                                                  };
                                                  num = lib.mkOption {
                                                    type = lib.types.int;
                                                    default = -2;
                                                  };
                                                };
                                              };
                                            };
                                            equal_1 = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  modi = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "chunkx";
                                                        };
                                                        num = lib.mkOption {
                                                          type = lib.types.int;
                                                          default = 3;
                                                        };
                                                      };
                                                    };
                                                  };
                                                  num = lib.mkOption {
                                                    type = lib.types.int;
                                                    default = 1;
                                                  };
                                                };
                                              };
                                            };
                                          };
                                        };
                                      };
                                      or_1 = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            equal_0 = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  modi = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "chunkz";
                                                        };
                                                        num = lib.mkOption {
                                                          type = lib.types.int;
                                                          default = 3;
                                                        };
                                                      };
                                                    };
                                                  };
                                                  num = lib.mkOption {
                                                    type = lib.types.int;
                                                    default = -2;
                                                  };
                                                };
                                              };
                                            };
                                            equal_1 = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  modi = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "chunkz";
                                                        };
                                                        num = lib.mkOption {
                                                          type = lib.types.int;
                                                          default = 3;
                                                        };
                                                      };
                                                    };
                                                  };
                                                  num = lib.mkOption {
                                                    type = lib.types.int;
                                                    default = 1;
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
                                concat = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      icon = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            str = lib.mkOption {
                                              type = lib.types.str;
                                              default = "textures/items/diamond_pickaxe.png";
                                            };
                                            num_0 = lib.mkOption {
                                              type = lib.types.int;
                                              default = 0;
                                            };
                                            num_1 = lib.mkOption {
                                              type = lib.types.int;
                                              default = 0;
                                            };
                                            num_2 = lib.mkOption {
                                              type = lib.types.int;
                                              default = 16;
                                            };
                                            num_3 = lib.mkOption {
                                              type = lib.types.int;
                                              default = 16;
                                            };
                                          };
                                        };
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "This is an {darkgreen}{underline}ore{white} chunk.";
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
                    if_1 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          equal = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                var = lib.mkOption {
                                  type = lib.types.str;
                                  default = "gtnewore";
                                };
                                str = lib.mkOption {
                                  type = lib.types.bool;
                                  default = false;
                                };
                              };
                            };
                          };
                          "if" = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                "and" = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      or_0 = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            equal_0 = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  modi = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "chunkx";
                                                        };
                                                        num = lib.mkOption {
                                                          type = lib.types.int;
                                                          default = 3;
                                                        };
                                                      };
                                                    };
                                                  };
                                                  num = lib.mkOption {
                                                    type = lib.types.int;
                                                    default = -1;
                                                  };
                                                };
                                              };
                                            };
                                            equal_1 = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  modi = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "chunkx";
                                                        };
                                                        num = lib.mkOption {
                                                          type = lib.types.int;
                                                          default = 3;
                                                        };
                                                      };
                                                    };
                                                  };
                                                  num = lib.mkOption {
                                                    type = lib.types.int;
                                                    default = 1;
                                                  };
                                                };
                                              };
                                            };
                                          };
                                        };
                                      };
                                      or_1 = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            equal_0 = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  modi = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "chunkz";
                                                        };
                                                        num = lib.mkOption {
                                                          type = lib.types.int;
                                                          default = 3;
                                                        };
                                                      };
                                                    };
                                                  };
                                                  num = lib.mkOption {
                                                    type = lib.types.int;
                                                    default = -1;
                                                  };
                                                };
                                              };
                                            };
                                            equal_1 = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  modi = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "chunkz";
                                                        };
                                                        num = lib.mkOption {
                                                          type = lib.types.int;
                                                          default = 3;
                                                        };
                                                      };
                                                    };
                                                  };
                                                  num = lib.mkOption {
                                                    type = lib.types.int;
                                                    default = 1;
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
                                concat = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      icon = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            str = lib.mkOption {
                                              type = lib.types.str;
                                              default = "textures/items/diamond_pickaxe.png";
                                            };
                                            num_0 = lib.mkOption {
                                              type = lib.types.int;
                                              default = 0;
                                            };
                                            num_1 = lib.mkOption {
                                              type = lib.types.int;
                                              default = 0;
                                            };
                                            num_2 = lib.mkOption {
                                              type = lib.types.int;
                                              default = 16;
                                            };
                                            num_3 = lib.mkOption {
                                              type = lib.types.int;
                                              default = 16;
                                            };
                                          };
                                        };
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "This is an {darkgreen}{underline}ore{white} chunk.";
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
                  };
                };
              };
              line_11 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "if" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "and" = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                equal_0 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "chunkoffsetx";
                                      };
                                      num = lib.mkOption {
                                        type = lib.types.int;
                                        default = 7;
                                      };
                                    };
                                  };
                                };
                                equal_1 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "chunkoffsetz";
                                      };
                                      num = lib.mkOption {
                                        type = lib.types.int;
                                        default = 7;
                                      };
                                    };
                                  };
                                };
                              };
                            };
                          };
                          concat = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                "if" = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      "and" = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            or_0 = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  equal_0 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        modi = lib.mkOption {
                                                          default = {};
                                                          type = lib.types.submodule {
                                                            options = {
                                                              var = lib.mkOption {
                                                                type = lib.types.str;
                                                                default = "chunkx";
                                                              };
                                                              num = lib.mkOption {
                                                                type = lib.types.int;
                                                                default = 3;
                                                              };
                                                            };
                                                          };
                                                        };
                                                        num = lib.mkOption {
                                                          type = lib.types.int;
                                                          default = -1;
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_1 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        modi = lib.mkOption {
                                                          default = {};
                                                          type = lib.types.submodule {
                                                            options = {
                                                              var = lib.mkOption {
                                                                type = lib.types.str;
                                                                default = "chunkx";
                                                              };
                                                              num = lib.mkOption {
                                                                type = lib.types.int;
                                                                default = 3;
                                                              };
                                                            };
                                                          };
                                                        };
                                                        num = lib.mkOption {
                                                          type = lib.types.int;
                                                          default = 1;
                                                        };
                                                      };
                                                    };
                                                  };
                                                };
                                              };
                                            };
                                            or_1 = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  equal_0 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        modi = lib.mkOption {
                                                          default = {};
                                                          type = lib.types.submodule {
                                                            options = {
                                                              var = lib.mkOption {
                                                                type = lib.types.str;
                                                                default = "chunkz";
                                                              };
                                                              num = lib.mkOption {
                                                                type = lib.types.int;
                                                                default = 3;
                                                              };
                                                            };
                                                          };
                                                        };
                                                        num = lib.mkOption {
                                                          type = lib.types.int;
                                                          default = -1;
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_1 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        modi = lib.mkOption {
                                                          default = {};
                                                          type = lib.types.submodule {
                                                            options = {
                                                              var = lib.mkOption {
                                                                type = lib.types.str;
                                                                default = "chunkz";
                                                              };
                                                              num = lib.mkOption {
                                                                type = lib.types.int;
                                                                default = 3;
                                                              };
                                                            };
                                                          };
                                                        };
                                                        num = lib.mkOption {
                                                          type = lib.types.int;
                                                          default = 1;
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
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "";
                                      };
                                    };
                                  };
                                };
                                str = lib.mkOption {
                                  type = lib.types.str;
                                  default = "You are at the {darkred}center {white}of the chunk.";
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
              line_12 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    str = lib.mkOption {
                      type = lib.types.str;
                      default = "{black}";
                    };
                  };
                };
              };
              line_13 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "if" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str = lib.mkOption {
                            type = lib.types.str;
                            default = "Nearest players:";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_14 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "if" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str = lib.mkOption {
                            type = lib.types.str;
                            default = "1) {gold}{nearbyplayername0}{white}({nearbyplayerdistance0}m)";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_15 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "if" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str = lib.mkOption {
                            type = lib.types.str;
                            default = "2) {gold}{nearbyplayername1}{white}({nearbyplayerdistance1}m)";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_16 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "if" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str = lib.mkOption {
                            type = lib.types.str;
                            default = "2) {gold}{nearbyplayername2}{white}({nearbyplayerdistance2}m)";
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
        lines_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "@at" = lib.mkOption {
                type = lib.types.str;
                default = "middleleft";
              };
              line_0 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    var = lib.mkOption {
                      type = lib.types.str;
                      default = "equippedicon";
                    };
                    str = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    op = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "ge";
                          };
                          pct = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                var_0 = lib.mkOption {
                                  type = lib.types.str;
                                  default = "equippeddamageleft";
                                };
                                var_1 = lib.mkOption {
                                  type = lib.types.str;
                                  default = "equippedmaxdamage";
                                };
                              };
                            };
                          };
                          num_0 = lib.mkOption {
                            type = lib.types.int;
                            default = 50;
                          };
                          num_1 = lib.mkOption {
                            type = lib.types.int;
                            default = 20;
                          };
                          num_2 = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                          num_3 = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "{yellow}";
                          };
                          str_2 = lib.mkOption {
                            type = lib.types.str;
                            default = "{gold}";
                          };
                          str_3 = lib.mkOption {
                            type = lib.types.str;
                            default = "{red}";
                          };
                          str_4 = lib.mkOption {
                            type = lib.types.str;
                            default = "{darkred}";
                          };
                          str_5 = lib.mkOption {
                            type = lib.types.str;
                            default = "";
                          };
                        };
                      };
                    };
                    max = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "equippeddamageleft";
                          };
                          num = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          str = lib.mkOption {
                            type = lib.types.str;
                            default = "{equippeddamageleft} {white}/ {yellow}{equippedmaxdamage}";
                          };
                          var_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "equippedname";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_1 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    var = lib.mkOption {
                      type = lib.types.str;
                      default = "helmeticon";
                    };
                    str_0 = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    op = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "ge";
                          };
                          pct = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                var_0 = lib.mkOption {
                                  type = lib.types.str;
                                  default = "helmetdamageleft";
                                };
                                var_1 = lib.mkOption {
                                  type = lib.types.str;
                                  default = "helmetmaxdamage";
                                };
                              };
                            };
                          };
                          num_0 = lib.mkOption {
                            type = lib.types.int;
                            default = 50;
                          };
                          num_1 = lib.mkOption {
                            type = lib.types.int;
                            default = 20;
                          };
                          num_2 = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "{yellow}";
                          };
                          str_2 = lib.mkOption {
                            type = lib.types.str;
                            default = "{gold}";
                          };
                          str_3 = lib.mkOption {
                            type = lib.types.str;
                            default = "{red}";
                          };
                          str_4 = lib.mkOption {
                            type = lib.types.str;
                            default = "{darkred}";
                          };
                        };
                      };
                    };
                    max = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "helmetdamageleft";
                          };
                          num = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "{helmetdamageleft} {white}/ {yellow}{helmetmaxdamage}";
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "";
                          };
                        };
                      };
                    };
                    str_1 = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                  };
                };
              };
              line_2 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    var = lib.mkOption {
                      type = lib.types.str;
                      default = "chestplateicon";
                    };
                    str_0 = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    op = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "ge";
                          };
                          pct = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                var_0 = lib.mkOption {
                                  type = lib.types.str;
                                  default = "chestplatedamageleft";
                                };
                                var_1 = lib.mkOption {
                                  type = lib.types.str;
                                  default = "chestplatemaxdamage";
                                };
                              };
                            };
                          };
                          num_0 = lib.mkOption {
                            type = lib.types.int;
                            default = 50;
                          };
                          num_1 = lib.mkOption {
                            type = lib.types.int;
                            default = 20;
                          };
                          num_2 = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "{yellow}";
                          };
                          str_2 = lib.mkOption {
                            type = lib.types.str;
                            default = "{gold}";
                          };
                          str_3 = lib.mkOption {
                            type = lib.types.str;
                            default = "{red}";
                          };
                          str_4 = lib.mkOption {
                            type = lib.types.str;
                            default = "{darkred}";
                          };
                        };
                      };
                    };
                    max = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "chestplatedamageleft";
                          };
                          num = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "{chestplatedamageleft} {white}/ {yellow}{chestplatemaxdamage}";
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "";
                          };
                        };
                      };
                    };
                    str_1 = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                  };
                };
              };
              line_3 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    var = lib.mkOption {
                      type = lib.types.str;
                      default = "leggingsicon";
                    };
                    str = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    op = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "ge";
                          };
                          pct = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                var_0 = lib.mkOption {
                                  type = lib.types.str;
                                  default = "leggingsdamageleft";
                                };
                                var_1 = lib.mkOption {
                                  type = lib.types.str;
                                  default = "leggingsmaxdamage";
                                };
                              };
                            };
                          };
                          num_0 = lib.mkOption {
                            type = lib.types.int;
                            default = 50;
                          };
                          num_1 = lib.mkOption {
                            type = lib.types.int;
                            default = 20;
                          };
                          num_2 = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "{yellow}";
                          };
                          str_2 = lib.mkOption {
                            type = lib.types.str;
                            default = "{gold}";
                          };
                          str_3 = lib.mkOption {
                            type = lib.types.str;
                            default = "{red}";
                          };
                          str_4 = lib.mkOption {
                            type = lib.types.str;
                            default = "{darkred}";
                          };
                        };
                      };
                    };
                    max = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "leggingsdamageleft";
                          };
                          num = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "{leggingsdamageleft} {white}/ {yellow}{leggingsmaxdamage}";
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_4 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    var = lib.mkOption {
                      type = lib.types.str;
                      default = "bootsicon";
                    };
                    str = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    op = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "ge";
                          };
                          pct = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                var_0 = lib.mkOption {
                                  type = lib.types.str;
                                  default = "bootsdamageleft";
                                };
                                var_1 = lib.mkOption {
                                  type = lib.types.str;
                                  default = "bootsmaxdamage";
                                };
                              };
                            };
                          };
                          num_0 = lib.mkOption {
                            type = lib.types.int;
                            default = 50;
                          };
                          num_1 = lib.mkOption {
                            type = lib.types.int;
                            default = 20;
                          };
                          num_2 = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "{yellow}";
                          };
                          str_2 = lib.mkOption {
                            type = lib.types.str;
                            default = "{gold}";
                          };
                          str_3 = lib.mkOption {
                            type = lib.types.str;
                            default = "{red}";
                          };
                          str_4 = lib.mkOption {
                            type = lib.types.str;
                            default = "{darkred}";
                          };
                        };
                      };
                    };
                    max = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "bootsdamageleft";
                          };
                          num = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "{bootsdamageleft} {white}/ {yellow}{bootsmaxdamage}";
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "";
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
        lines_2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "@at" = lib.mkOption {
                type = lib.types.str;
                default = "bottomright";
              };
              line_0 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    max = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "potiondurationticks0";
                          };
                          num = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "{potionduration0} {potionicon0}";
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_1 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    max = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "potiondurationticks1";
                          };
                          num = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "{potionduration1} {potionicon1}";
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_2 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    max = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "potiondurationticks2";
                          };
                          num = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "{potionduration2} {potionicon2}";
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_3 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    max = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "potiondurationticks3";
                          };
                          num = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "{potionduration3} {potionicon3}";
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_4 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    max = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "potiondurationticks4";
                          };
                          num = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "{potionduration4} {potionicon4}";
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_5 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    max = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "potiondurationticks5";
                          };
                          num = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "{potionduration5} {potionicon5}";
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_6 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    max = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "potiondurationticks6";
                          };
                          num = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "{potionduration6} {potionicon6}";
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_7 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    max = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "potiondurationticks7";
                          };
                          num = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "{potionduration7} {potionicon7}";
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_8 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    max = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "potiondurationticks8";
                          };
                          num = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "{potionduration8} {potionicon8}";
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "";
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
      };
    };
  };
}
