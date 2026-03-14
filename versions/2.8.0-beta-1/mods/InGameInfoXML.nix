{lib, ...}: {
  InGameInfo_xml = lib.mkOption {
    description = "InGameInfo_xml configuration (./config/InGameInfoXML/InGameInfo.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/InGameInfoXML/InGameInfo.xml";
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
                            default = "ge";
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
                      default = "Biome: {darkaqua}{biome} {gold}";
                    };
                    round_0 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          var = lib.mkOption {
                            type = lib.types.str;
                            default = "localtemperature";
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
                      default = "{white}°F {gold}";
                    };
                    round_1 = lib.mkOption {
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
                    str_2 = lib.mkOption {
                      type = lib.types.str;
                      default = "{white}°C {gold}";
                    };
                    round_2 = lib.mkOption {
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
                    str_3 = lib.mkOption {
                      type = lib.types.str;
                      default = "{white}K";
                    };
                    str_4 = lib.mkOption {
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
                    icon = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str = lib.mkOption {
                            type = lib.types.str;
                            default = "witchery:mooncharm";
                          };
                        };
                      };
                    };
                    str = lib.mkOption {
                      type = lib.types.str;
                      default = "Moon phase:";
                    };
                    op = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          str_0 = lib.mkOption {
                            type = lib.types.str;
                            default = "eq";
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
                                  default = 8;
                                };
                              };
                            };
                          };
                          num_0 = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                          num_1 = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          num_2 = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                          };
                          num_3 = lib.mkOption {
                            type = lib.types.int;
                            default = 3;
                          };
                          num_4 = lib.mkOption {
                            type = lib.types.int;
                            default = 4;
                          };
                          num_5 = lib.mkOption {
                            type = lib.types.int;
                            default = 5;
                          };
                          num_6 = lib.mkOption {
                            type = lib.types.int;
                            default = 6;
                          };
                          num_7 = lib.mkOption {
                            type = lib.types.int;
                            default = 7;
                          };
                          str_1 = lib.mkOption {
                            type = lib.types.str;
                            default = "{gold}Full moon (D)";
                          };
                          str_2 = lib.mkOption {
                            type = lib.types.str;
                            default = "{yellow}Waning gibbous {gold}(D)";
                          };
                          str_3 = lib.mkOption {
                            type = lib.types.str;
                            default = "{gray}Last quarter {gold}(D)";
                          };
                          str_4 = lib.mkOption {
                            type = lib.types.str;
                            default = "{darkgray}Waning crescent {gold}(D)";
                          };
                          str_5 = lib.mkOption {
                            type = lib.types.str;
                            default = "{black}New moon {black}(N)";
                          };
                          str_6 = lib.mkOption {
                            type = lib.types.str;
                            default = "{darkgray}Waxing crescent {black}(N)";
                          };
                          str_7 = lib.mkOption {
                            type = lib.types.str;
                            default = "{gray}First quarter {black}(N)";
                          };
                          str_8 = lib.mkOption {
                            type = lib.types.str;
                            default = "{yellow}Waxing gibbous {black}(N)";
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
                    if_0 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          not = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                equal = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "nextrain";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "?";
                                      };
                                    };
                                  };
                                };
                              };
                            };
                          };
                          "if" = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                "or" = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      equal_0 = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            var = lib.mkOption {
                                              type = lib.types.str;
                                              default = "raining";
                                            };
                                            str = lib.mkOption {
                                              type = lib.types.bool;
                                              default = true;
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
                                              default = "snowing";
                                            };
                                            str = lib.mkOption {
                                              type = lib.types.bool;
                                              default = true;
                                            };
                                          };
                                        };
                                      };
                                    };
                                  };
                                };
                                "if" = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      "or" = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            greater = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  var = lib.mkOption {
                                                    type = lib.types.str;
                                                    default = "localtemperature";
                                                  };
                                                  num = lib.mkOption {
                                                    type = lib.types.int;
                                                    default = 15;
                                                  };
                                                };
                                              };
                                            };
                                            equal = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  var = lib.mkOption {
                                                    type = lib.types.str;
                                                    default = "localtemperature";
                                                  };
                                                  num = lib.mkOption {
                                                    type = lib.types.int;
                                                    default = 15;
                                                  };
                                                };
                                              };
                                            };
                                          };
                                        };
                                      };
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
                                                    default = "thundering";
                                                  };
                                                  str = lib.mkOption {
                                                    type = lib.types.bool;
                                                    default = false;
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
                                                          default = "thaumcraft:textures/aspects/aqua.png";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  str = lib.mkOption {
                                                    type = lib.types.str;
                                                    default = "It is {darkaqua}Raining{reset} for another {darkgreen}{nextrain}{reset}.";
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
                                                    default = "thundering";
                                                  };
                                                  str = lib.mkOption {
                                                    type = lib.types.bool;
                                                    default = true;
                                                  };
                                                };
                                              };
                                            };
                                            concat = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  icon_0 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "thaumcraft:textures/aspects/aqua.png";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  str = lib.mkOption {
                                                    type = lib.types.str;
                                                    default = "It is {darkaqua}Raining{reset} and {gold}Thundering{reset} for another {darkgreen}{nextrain}{reset}.";
                                                  };
                                                  icon_1 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "thaumcraft:textures/aspects/tempestas.png";
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
                                  default = "nextrain";
                                };
                                str = lib.mkOption {
                                  type = lib.types.str;
                                  default = "?";
                                };
                              };
                            };
                          };
                          "if" = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                "or" = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      equal_0 = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            var = lib.mkOption {
                                              type = lib.types.str;
                                              default = "raining";
                                            };
                                            str = lib.mkOption {
                                              type = lib.types.bool;
                                              default = true;
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
                                              default = "snowing";
                                            };
                                            str = lib.mkOption {
                                              type = lib.types.bool;
                                              default = true;
                                            };
                                          };
                                        };
                                      };
                                    };
                                  };
                                };
                                "if" = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      "or" = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            greater = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  var = lib.mkOption {
                                                    type = lib.types.str;
                                                    default = "localtemperature";
                                                  };
                                                  num = lib.mkOption {
                                                    type = lib.types.int;
                                                    default = 15;
                                                  };
                                                };
                                              };
                                            };
                                            equal = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  var = lib.mkOption {
                                                    type = lib.types.str;
                                                    default = "localtemperature";
                                                  };
                                                  num = lib.mkOption {
                                                    type = lib.types.int;
                                                    default = 15;
                                                  };
                                                };
                                              };
                                            };
                                          };
                                        };
                                      };
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
                                                    default = "thundering";
                                                  };
                                                  str = lib.mkOption {
                                                    type = lib.types.bool;
                                                    default = false;
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
                                                          default = "thaumcraft:textures/aspects/aqua.png";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  str = lib.mkOption {
                                                    type = lib.types.str;
                                                    default = "It is {darkaqua}Raining{reset}.";
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
                                                    default = "thundering";
                                                  };
                                                  str = lib.mkOption {
                                                    type = lib.types.bool;
                                                    default = true;
                                                  };
                                                };
                                              };
                                            };
                                            concat = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  icon_0 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "thaumcraft:textures/aspects/aqua.png";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  str = lib.mkOption {
                                                    type = lib.types.str;
                                                    default = "It is {darkaqua}Raining{reset} and {gold}Thundering{reset}.";
                                                  };
                                                  icon_1 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "thaumcraft:textures/aspects/tempestas.png";
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
                              };
                            };
                          };
                        };
                      };
                    };
                    if_2 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          not = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                equal = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "nextrain";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "?";
                                      };
                                    };
                                  };
                                };
                              };
                            };
                          };
                          "if" = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                "or" = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      equal_0 = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            var = lib.mkOption {
                                              type = lib.types.str;
                                              default = "raining";
                                            };
                                            str = lib.mkOption {
                                              type = lib.types.bool;
                                              default = true;
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
                                              default = "snowing";
                                            };
                                            str = lib.mkOption {
                                              type = lib.types.bool;
                                              default = true;
                                            };
                                          };
                                        };
                                      };
                                    };
                                  };
                                };
                                "if" = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      less = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            var = lib.mkOption {
                                              type = lib.types.str;
                                              default = "localtemperature";
                                            };
                                            num = lib.mkOption {
                                              type = lib.types.int;
                                              default = 15;
                                            };
                                          };
                                        };
                                      };
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
                                                    default = "thundering";
                                                  };
                                                  str = lib.mkOption {
                                                    type = lib.types.bool;
                                                    default = false;
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
                                                          default = "thaumcraft:textures/aspects/gelum.png";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  str = lib.mkOption {
                                                    type = lib.types.str;
                                                    default = "It is {darkaqua}Snowing{reset} for another {darkgreen}{nextrain}{reset}.";
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
                                                    default = "thundering";
                                                  };
                                                  str = lib.mkOption {
                                                    type = lib.types.bool;
                                                    default = true;
                                                  };
                                                };
                                              };
                                            };
                                            concat = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  icon_0 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "thaumcraft:textures/aspects/gelum.png";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  str = lib.mkOption {
                                                    type = lib.types.str;
                                                    default = "It is {darkaqua}Snowing{reset} and {gold}Thundering{reset} for another {darkgreen}{nextrain}{reset}.";
                                                  };
                                                  icon_1 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "thaumcraft:textures/aspects/tempestas.png";
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
                              };
                            };
                          };
                        };
                      };
                    };
                    if_3 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          equal = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                var = lib.mkOption {
                                  type = lib.types.str;
                                  default = "nextrain";
                                };
                                str = lib.mkOption {
                                  type = lib.types.str;
                                  default = "?";
                                };
                              };
                            };
                          };
                          "if" = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                "or" = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      equal_0 = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            var = lib.mkOption {
                                              type = lib.types.str;
                                              default = "raining";
                                            };
                                            str = lib.mkOption {
                                              type = lib.types.bool;
                                              default = true;
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
                                              default = "snowing";
                                            };
                                            str = lib.mkOption {
                                              type = lib.types.bool;
                                              default = true;
                                            };
                                          };
                                        };
                                      };
                                    };
                                  };
                                };
                                "if" = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      less = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            var = lib.mkOption {
                                              type = lib.types.str;
                                              default = "localtemperature";
                                            };
                                            num = lib.mkOption {
                                              type = lib.types.int;
                                              default = 15;
                                            };
                                          };
                                        };
                                      };
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
                                                    default = "thundering";
                                                  };
                                                  str = lib.mkOption {
                                                    type = lib.types.bool;
                                                    default = false;
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
                                                          default = "thaumcraft:textures/aspects/gelum.png";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  str = lib.mkOption {
                                                    type = lib.types.str;
                                                    default = "It is {darkaqua}Snowing{reset}.";
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
                                                    default = "thundering";
                                                  };
                                                  str = lib.mkOption {
                                                    type = lib.types.bool;
                                                    default = true;
                                                  };
                                                };
                                              };
                                            };
                                            concat = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  icon_0 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "thaumcraft:textures/aspects/gelum.png";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  str = lib.mkOption {
                                                    type = lib.types.str;
                                                    default = "It is {darkaqua}Snowing{reset} and {gold}Thundering{reset}.";
                                                  };
                                                  icon_1 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "thaumcraft:textures/aspects/tempestas.png";
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
                              };
                            };
                          };
                        };
                      };
                    };
                    if_4 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "or" = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                equal_0 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Storage Cell";
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
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Hot Ocean";
                                      };
                                    };
                                  };
                                };
                                equal_2 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Desert Oil Field";
                                      };
                                    };
                                  };
                                };
                                equal_3 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Sky";
                                      };
                                    };
                                  };
                                };
                                equal_4 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Hot Forest";
                                      };
                                    };
                                  };
                                };
                                equal_5 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Pocket Plane";
                                      };
                                    };
                                  };
                                };
                                equal_6 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Hot Desert";
                                      };
                                    };
                                  };
                                };
                                equal_7 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Hot River";
                                      };
                                    };
                                  };
                                };
                                equal_8 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Hot Plains";
                                      };
                                    };
                                  };
                                };
                                equal_9 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Desert";
                                      };
                                    };
                                  };
                                };
                                equal_10 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Desert M";
                                      };
                                    };
                                  };
                                };
                                equal_11 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Savanna";
                                      };
                                    };
                                  };
                                };
                                equal_12 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Savanna M";
                                      };
                                    };
                                  };
                                };
                                equal_13 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Savanna Plateau";
                                      };
                                    };
                                  };
                                };
                                equal_14 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Savanna Plateau M";
                                      };
                                    };
                                  };
                                };
                                equal_15 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Mesa";
                                      };
                                    };
                                  };
                                };
                                equal_16 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Mesa (Bryce)";
                                      };
                                    };
                                  };
                                };
                                equal_17 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Mesa Plateau";
                                      };
                                    };
                                  };
                                };
                                equal_18 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Mesa Plateau F";
                                      };
                                    };
                                  };
                                };
                                equal_19 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Mesa Plateau F M";
                                      };
                                    };
                                  };
                                };
                                equal_20 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Mesa Plateau F M";
                                      };
                                    };
                                  };
                                };
                                equal_21 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Space";
                                      };
                                    };
                                  };
                                };
                                equal_22 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Venus";
                                      };
                                    };
                                  };
                                };
                                equal_23 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "moon";
                                      };
                                    };
                                  };
                                };
                                equal_24 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "marsFlat";
                                      };
                                    };
                                  };
                                };
                                equal_25 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "asteroids";
                                      };
                                    };
                                  };
                                };
                                equal_26 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Io";
                                      };
                                    };
                                  };
                                };
                                equal_27 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "IoAsh";
                                      };
                                    };
                                  };
                                };
                                equal_28 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Titan";
                                      };
                                    };
                                  };
                                };
                                equal_29 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Pluto";
                                      };
                                    };
                                  };
                                };
                                equal_30 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Pluto2";
                                      };
                                    };
                                  };
                                };
                                equal_31 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Pluto3";
                                      };
                                    };
                                  };
                                };
                                equal_32 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "Pluto4";
                                      };
                                    };
                                  };
                                };
                                equal_33 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "BarnardaCFlowers";
                                      };
                                    };
                                  };
                                };
                                equal_34 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "BarnardaCHills";
                                      };
                                    };
                                  };
                                };
                                equal_35 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "BarnardaCLowPlains";
                                      };
                                    };
                                  };
                                };
                                equal_36 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "BarnardaCOceans";
                                      };
                                    };
                                  };
                                };
                                equal_37 = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "biome";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "BarnardaCShores";
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
                                        default = "thaumcraft:textures/aspects/aer.png";
                                      };
                                    };
                                  };
                                };
                                str = lib.mkOption {
                                  type = lib.types.str;
                                  default = "This {darkgreen}biome{reset} does not have {aqua}precipitation{reset}.";
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                    if_5 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          not = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                equal = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      var = lib.mkOption {
                                        type = lib.types.str;
                                        default = "nextrain";
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "?";
                                      };
                                    };
                                  };
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
                                      equal_0 = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            var = lib.mkOption {
                                              type = lib.types.str;
                                              default = "raining";
                                            };
                                            str = lib.mkOption {
                                              type = lib.types.bool;
                                              default = false;
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
                                              default = "snowing";
                                            };
                                            str = lib.mkOption {
                                              type = lib.types.bool;
                                              default = false;
                                            };
                                          };
                                        };
                                      };
                                      equal_2 = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            var = lib.mkOption {
                                              type = lib.types.str;
                                              default = "thundering";
                                            };
                                            str = lib.mkOption {
                                              type = lib.types.bool;
                                              default = false;
                                            };
                                          };
                                        };
                                      };
                                      not = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            "or" = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  equal_0 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Storage Cell";
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
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Hot Ocean";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_2 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Desert Oil Field";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_3 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Sky";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_4 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Hot Forest";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_5 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Pocket Plane";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_6 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Hot Desert";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_7 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Hot River";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_8 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Hot Plains";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_9 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Desert";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_10 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Desert M";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_11 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Savanna";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_12 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Savanna M";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_13 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Savanna Plateau";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_14 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Savanna Plateau M";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_15 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Mesa";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_16 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Mesa (Bryce)";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_17 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Mesa Plateau";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_18 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Mesa Plateau F";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_19 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Mesa Plateau F M";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_20 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Mesa Plateau F M";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_21 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Space";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_22 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Venus";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_23 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "moon";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_24 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "marsFlat";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_25 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "asteroids";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_26 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Io";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_27 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "IoAsh";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_28 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Titan";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_29 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Pluto";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_30 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Pluto2";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_31 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Pluto3";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_32 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Pluto4";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_33 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "BarnardaCFlowers";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_34 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "BarnardaCHills";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_35 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "BarnardaCLowPlains";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_36 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "BarnardaCOceans";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_37 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "BarnardaCShores";
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
                                              default = "thaumcraft:textures/aspects/tempestas.png";
                                            };
                                          };
                                        };
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "{darkgreen}{nextrain}{reset} until the next {aqua}storm{reset}.";
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
                    if_6 = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          equal = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                var = lib.mkOption {
                                  type = lib.types.str;
                                  default = "nextrain";
                                };
                                str = lib.mkOption {
                                  type = lib.types.str;
                                  default = "?";
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
                                      equal_0 = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            var = lib.mkOption {
                                              type = lib.types.str;
                                              default = "raining";
                                            };
                                            str = lib.mkOption {
                                              type = lib.types.bool;
                                              default = false;
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
                                              default = "snowing";
                                            };
                                            str = lib.mkOption {
                                              type = lib.types.bool;
                                              default = false;
                                            };
                                          };
                                        };
                                      };
                                      equal_2 = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            var = lib.mkOption {
                                              type = lib.types.str;
                                              default = "thundering";
                                            };
                                            str = lib.mkOption {
                                              type = lib.types.bool;
                                              default = false;
                                            };
                                          };
                                        };
                                      };
                                      not = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            "or" = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  equal_0 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Storage Cell";
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
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Hot Ocean";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_2 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Desert Oil Field";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_3 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Sky";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_4 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Hot Forest";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_5 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Pocket Plane";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_6 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Hot Desert";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_7 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Hot River";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_8 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Hot Plains";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_9 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Desert";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_10 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Desert M";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_11 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Savanna";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_12 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Savanna M";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_13 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Savanna Plateau";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_14 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Savanna Plateau M";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_15 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Mesa";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_16 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Mesa (Bryce)";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_17 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Mesa Plateau";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_18 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Mesa Plateau F";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_19 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Mesa Plateau F M";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_20 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Mesa Plateau F M";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_21 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Space";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_22 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Venus";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_23 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "moon";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_24 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "marsFlat";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_25 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "asteroids";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_26 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Io";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_27 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "IoAsh";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_28 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Titan";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_29 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Pluto";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_30 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Pluto2";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_31 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Pluto3";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_32 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "Pluto4";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_33 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "BarnardaCFlowers";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_34 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "BarnardaCHills";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_35 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "BarnardaCLowPlains";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_36 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "BarnardaCOceans";
                                                        };
                                                      };
                                                    };
                                                  };
                                                  equal_37 = lib.mkOption {
                                                    default = {};
                                                    type = lib.types.submodule {
                                                      options = {
                                                        var = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "biome";
                                                        };
                                                        str = lib.mkOption {
                                                          type = lib.types.str;
                                                          default = "BarnardaCShores";
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
                                              default = "thaumcraft:textures/aspects/tempestas.png";
                                            };
                                          };
                                        };
                                      };
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "There is currently no {aqua}precipitation{reset}.";
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
                    "if" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          equal = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                var = lib.mkOption {
                                  type = lib.types.str;
                                  default = "slimes";
                                };
                                str = lib.mkOption {
                                  type = lib.types.bool;
                                  default = true;
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
                                        default = "textures/items/slimeball.png";
                                      };
                                    };
                                  };
                                };
                                str = lib.mkOption {
                                  type = lib.types.str;
                                  default = "This is a {darkgreen}slime chunk{white}.";
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
              line_12 = lib.mkOption {
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
                                icon = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      str = lib.mkOption {
                                        type = lib.types.str;
                                        default = "tinker:textures/items/parts/obsidian_toughbind.png";
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
              line_13 = lib.mkOption {
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
                            default = "Nearest players:";
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
                            default = "1) {gold}{nearbyplayername0}{white}({nearbyplayerdistance0}m)";
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
                            default = "2) {gold}{nearbyplayername1}{white}({nearbyplayerdistance1}m)";
                          };
                        };
                      };
                    };
                  };
                };
              };
              line_17 = lib.mkOption {
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
  InGameInfoXML_cfg = lib.mkOption {
    description = "InGameInfoXML_cfg configuration (./config/InGameInfoXML.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/InGameInfoXML.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        alignment = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              bottomcenter = lib.mkOption {
                type = lib.types.str;
                default = "0 -45";
                description = "Offsets for BOTTOMCENTER (X<space>Y).";
              };
              bottomleft = lib.mkOption {
                type = lib.types.str;
                default = "2 -2";
                description = "Offsets for BOTTOMLEFT (X<space>Y).";
              };
              bottomright = lib.mkOption {
                type = lib.types.str;
                default = "-2 -2";
                description = "Offsets for BOTTOMRIGHT (X<space>Y).";
              };
              middlecenter = lib.mkOption {
                type = lib.types.str;
                default = "0 0";
                description = "Offsets for MIDDLECENTER (X<space>Y).";
              };
              middleleft = lib.mkOption {
                type = lib.types.str;
                default = "2 0";
                description = "Offsets for MIDDLELEFT (X<space>Y).";
              };
              middleright = lib.mkOption {
                type = lib.types.str;
                default = "-2 0";
                description = "Offsets for MIDDLERIGHT (X<space>Y).";
              };
              topcenter = lib.mkOption {
                type = lib.types.str;
                default = "0 2";
                description = "Offsets for TOPCENTER (X<space>Y).";
              };
              topleft = lib.mkOption {
                type = lib.types.str;
                default = "2 50";
                description = "Offsets for TOPLEFT (X<space>Y).";
              };
              topright = lib.mkOption {
                type = lib.types.str;
                default = "-2 2";
                description = "Offsets for TOPRIGHT (X<space>Y).";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ShowHUD = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If this is true, it will render the info overlay";
              };
              fileInterval = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "The interval between file reads for the 'file' tag (in seconds).";
              };
              filename = lib.mkOption {
                type = lib.types.str;
                default = "InGameInfo.xml";
                description = "The configuration that should be loaded on startup.";
              };
              replaceDebug = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Replace the debug overlay (F3) with the InGameInfoXML overlay.";
              };
              "scale(new)" = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "The overlay will be scaled by this amount.(use this one, the other is deprecated)";
              };
              showInChat = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Display the overlay in chat.";
              };
              showOnPlayerList = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Display the overlay on the player list.";
              };
            };
          };
        };
      };
    };
  };
}
