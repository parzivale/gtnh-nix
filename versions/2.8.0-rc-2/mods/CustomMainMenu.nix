{lib, ...}: {
  mainmenu_json = lib.mkOption {
    description = "mainmenu_json configuration (./config/CustomMainMenu/mainmenu.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/CustomMainMenu/mainmenu.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        images = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              black = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/bg_menu2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 4096;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_top";
                    };
                  };
                };
              };
              logo = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/logo2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.float;
                      default = 116.3692785;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_logo";
                    };
                  };
                };
              };
              discord = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/discord.png";
                    };
                    hoverImage = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/discord2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 65;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              github = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/github.png";
                    };
                    hoverImage = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/github2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 35;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              website = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/website.png";
                    };
                    hoverImage = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/website2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 95;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
            };
          };
        };
        buttons = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              discord = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn_discord.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 65;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 2400;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 2747;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openLink";
                          };
                          link = lib.mkOption {
                            type = lib.types.str;
                            default = "https://discord.gg/EXshrPV";
                          };
                        };
                      };
                    };
                  };
                };
              };
              github = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn_discord.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 35;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 2400;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 2747;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openLink";
                          };
                          link = lib.mkOption {
                            type = lib.types.str;
                            default = "https://github.com/GTNewHorizons/NewHorizons/issues";
                          };
                        };
                      };
                    };
                  };
                };
              };
              website = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn_discord.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 95;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 60;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 2400;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 2747;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openLink";
                          };
                          link = lib.mkOption {
                            type = lib.types.str;
                            default = "https://www.gtnewhorizons.com/";
                          };
                        };
                      };
                    };
                  };
                };
              };
              singleplayer = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.singleplayer";
                    };
                    hoverText = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.singleplayer.hover";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16711680;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -140;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "singleplayer";
                          };
                        };
                      };
                    };
                  };
                };
              };
              multiplayer = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.multiplayer";
                    };
                    hoverText = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.multiplayer.hover";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 65535;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -120;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "multiplayer";
                          };
                        };
                      };
                    };
                  };
                };
              };
              options = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.options";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16758315;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -100;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "options";
                          };
                        };
                      };
                    };
                  };
                };
              };
              language = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.language";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16758315;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -60;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "languages";
                          };
                        };
                      };
                    };
                  };
                };
              };
              mods = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.mods";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 2113664;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 8411925;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -40;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "mods";
                          };
                        };
                      };
                    };
                  };
                };
              };
              quit = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.quit";
                    };
                    hoverText = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.quit.hover";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16728128;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16711680;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -20;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "quit";
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
        texts = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              mojang = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.mojang";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              forge = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.forge";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -10;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              version = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "file:mainmenu:version.txt";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              aviators = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.aviators";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -35;
                    };
                    fontSize = lib.mkOption {
                      type = lib.types.float;
                      default = 0.5;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              sol = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.sol";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -30;
                    };
                    fontSize = lib.mkOption {
                      type = lib.types.float;
                      default = 0.5;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
            };
          };
        };
        alignments = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              column_top = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.0;
                    };
                  };
                };
              };
              column_logo = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.05;
                    };
                  };
                };
              };
              column_center = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.5;
                    };
                  };
                };
              };
              column_bottom = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.95;
                    };
                  };
                };
              };
            };
          };
        };
        other = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              background = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    slideshow = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          images = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = [ "mainmenu:textures/bg.png" "mainmenu:textures/bg1.png" "mainmenu:textures/bg2.png" "mainmenu:textures/bg3.png" "mainmenu:textures/bg4.png" "mainmenu:textures/bg5.png" "mainmenu:textures/bg6.png" "mainmenu:textures/bg7.png" ];
                          };
                          displayDuration = lib.mkOption {
                            type = lib.types.int;
                            default = 150;
                          };
                          fadeDuration = lib.mkOption {
                            type = lib.types.int;
                            default = 40;
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
  mainmenu_auto_json = lib.mkOption {
    description = "mainmenu_auto_json configuration (./config/CustomMainMenu/mainmenu_auto.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/CustomMainMenu/mainmenu_auto.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        images = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              black = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/bg_menu2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 4096;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_top";
                    };
                  };
                };
              };
              logo = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/logo2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.float;
                      default = 116.3692785;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_logo";
                    };
                  };
                };
              };
              discord = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/discord.png";
                    };
                    hoverImage = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/discord2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 65;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              github = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/github.png";
                    };
                    hoverImage = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/github2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 35;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              website = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/website.png";
                    };
                    hoverImage = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/website2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 95;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
            };
          };
        };
        buttons = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              discord = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn_discord.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 65;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 2400;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 2747;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openLink";
                          };
                          link = lib.mkOption {
                            type = lib.types.str;
                            default = "https://discord.gg/EXshrPV";
                          };
                        };
                      };
                    };
                  };
                };
              };
              github = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn_discord.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 35;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 2400;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 2747;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openLink";
                          };
                          link = lib.mkOption {
                            type = lib.types.str;
                            default = "https://github.com/GTNewHorizons/NewHorizons/issues";
                          };
                        };
                      };
                    };
                  };
                };
              };
              website = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn_discord.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 95;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 60;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 2400;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 2747;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openLink";
                          };
                          link = lib.mkOption {
                            type = lib.types.str;
                            default = "https://www.gtnewhorizons.com/";
                          };
                        };
                      };
                    };
                  };
                };
              };
              singleplayer = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.singleplayer";
                    };
                    hoverText = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.singleplayer.hover";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16711680;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -140;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "singleplayer";
                          };
                        };
                      };
                    };
                  };
                };
              };
              multiplayer = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.multiplayer";
                    };
                    hoverText = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.multiplayer.hover";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 65535;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -120;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "multiplayer";
                          };
                        };
                      };
                    };
                  };
                };
              };
              options = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.options";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16758315;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -100;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "options";
                          };
                        };
                      };
                    };
                  };
                };
              };
              language = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.language";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16758315;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -60;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "languages";
                          };
                        };
                      };
                    };
                  };
                };
              };
              mods = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.mods";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 2113664;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 8411925;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -40;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "mods";
                          };
                        };
                      };
                    };
                  };
                };
              };
              quit = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.quit";
                    };
                    hoverText = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.quit.hover";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16728128;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16711680;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -20;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "quit";
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
        texts = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              mojang = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.mojang";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              forge = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.forge";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -10;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              version = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "file:mainmenu:version.txt";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              aviators = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.aviators";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -35;
                    };
                    fontSize = lib.mkOption {
                      type = lib.types.float;
                      default = 0.5;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              sol = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.sol";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -30;
                    };
                    fontSize = lib.mkOption {
                      type = lib.types.float;
                      default = 0.5;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
            };
          };
        };
        alignments = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              column_top = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.0;
                    };
                  };
                };
              };
              column_logo = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.05;
                    };
                  };
                };
              };
              column_center = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.5;
                    };
                  };
                };
              };
              column_bottom = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.95;
                    };
                  };
                };
              };
            };
          };
        };
        other = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              background = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    slideshow = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          images = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = [ "mainmenu:textures/bg.png" "mainmenu:textures/bg1.png" "mainmenu:textures/bg2.png" "mainmenu:textures/bg3.png" "mainmenu:textures/bg4.png" "mainmenu:textures/bg5.png" "mainmenu:textures/bg6.png" "mainmenu:textures/bg7.png" ];
                          };
                          displayDuration = lib.mkOption {
                            type = lib.types.int;
                            default = 150;
                          };
                          fadeDuration = lib.mkOption {
                            type = lib.types.int;
                            default = 40;
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
  mainmenu_large_json = lib.mkOption {
    description = "mainmenu_large_json configuration (./config/CustomMainMenu/mainmenu_large.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/CustomMainMenu/mainmenu_large.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        images = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              black = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/bg_menu2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 4096;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_top";
                    };
                  };
                };
              };
              logo = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/logo2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.float;
                      default = 116.3692785;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_logo";
                    };
                  };
                };
              };
              discord = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/discord.png";
                    };
                    hoverImage = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/discord2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 65;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              github = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/github.png";
                    };
                    hoverImage = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/github2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 35;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              website = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/website.png";
                    };
                    hoverImage = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/website2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 95;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
            };
          };
        };
        buttons = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              discord = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn_discord.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 65;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 2400;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 2747;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openLink";
                          };
                          link = lib.mkOption {
                            type = lib.types.str;
                            default = "https://discord.gg/EXshrPV";
                          };
                        };
                      };
                    };
                  };
                };
              };
              github = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn_discord.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 35;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 2400;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 2747;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openLink";
                          };
                          link = lib.mkOption {
                            type = lib.types.str;
                            default = "https://github.com/GTNewHorizons/NewHorizons/issues";
                          };
                        };
                      };
                    };
                  };
                };
              };
              website = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn_discord.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 95;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 60;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 2400;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 2747;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openLink";
                          };
                          link = lib.mkOption {
                            type = lib.types.str;
                            default = "https://www.gtnewhorizons.com/";
                          };
                        };
                      };
                    };
                  };
                };
              };
              singleplayer = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.singleplayer";
                    };
                    hoverText = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.singleplayer.hover";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16711680;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -140;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "singleplayer";
                          };
                        };
                      };
                    };
                  };
                };
              };
              multiplayer = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.multiplayer";
                    };
                    hoverText = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.multiplayer.hover";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 65535;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -120;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "multiplayer";
                          };
                        };
                      };
                    };
                  };
                };
              };
              options = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.options";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16758315;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -100;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "options";
                          };
                        };
                      };
                    };
                  };
                };
              };
              language = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.language";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16758315;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -60;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "languages";
                          };
                        };
                      };
                    };
                  };
                };
              };
              mods = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.mods";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 2113664;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 8411925;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -40;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "mods";
                          };
                        };
                      };
                    };
                  };
                };
              };
              quit = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.quit";
                    };
                    hoverText = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.quit.hover";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16728128;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16711680;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -20;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "quit";
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
        texts = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              mojang = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.mojang";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              forge = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.forge";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -10;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              version = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "file:mainmenu:version.txt";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              aviators = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.aviators";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -35;
                    };
                    fontSize = lib.mkOption {
                      type = lib.types.float;
                      default = 0.5;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              sol = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.sol";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -30;
                    };
                    fontSize = lib.mkOption {
                      type = lib.types.float;
                      default = 0.5;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
            };
          };
        };
        alignments = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              column_top = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.0;
                    };
                  };
                };
              };
              column_logo = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.05;
                    };
                  };
                };
              };
              column_center = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.5;
                    };
                  };
                };
              };
              column_bottom = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.95;
                    };
                  };
                };
              };
            };
          };
        };
        other = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              background = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    slideshow = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          images = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = [ "mainmenu:textures/bg.png" "mainmenu:textures/bg1.png" "mainmenu:textures/bg2.png" "mainmenu:textures/bg3.png" "mainmenu:textures/bg4.png" "mainmenu:textures/bg5.png" "mainmenu:textures/bg6.png" "mainmenu:textures/bg7.png" ];
                          };
                          displayDuration = lib.mkOption {
                            type = lib.types.int;
                            default = 150;
                          };
                          fadeDuration = lib.mkOption {
                            type = lib.types.int;
                            default = 40;
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
  mainmenu_normal_json = lib.mkOption {
    description = "mainmenu_normal_json configuration (./config/CustomMainMenu/mainmenu_normal.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/CustomMainMenu/mainmenu_normal.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        images = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              black = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/bg_menu2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 4096;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_top";
                    };
                  };
                };
              };
              logo = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/logo2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.float;
                      default = 116.3692785;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_logo";
                    };
                  };
                };
              };
              discord = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/discord.png";
                    };
                    hoverImage = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/discord2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 65;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              github = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/github.png";
                    };
                    hoverImage = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/github2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 35;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              website = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/website.png";
                    };
                    hoverImage = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/website2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 95;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
            };
          };
        };
        buttons = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              discord = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn_discord.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 65;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 2400;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 2747;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openLink";
                          };
                          link = lib.mkOption {
                            type = lib.types.str;
                            default = "https://discord.gg/EXshrPV";
                          };
                        };
                      };
                    };
                  };
                };
              };
              github = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn_discord.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 35;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 2400;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 2747;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openLink";
                          };
                          link = lib.mkOption {
                            type = lib.types.str;
                            default = "https://github.com/GTNewHorizons/NewHorizons/issues";
                          };
                        };
                      };
                    };
                  };
                };
              };
              website = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn_discord.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 95;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 60;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 2400;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 2747;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openLink";
                          };
                          link = lib.mkOption {
                            type = lib.types.str;
                            default = "https://www.gtnewhorizons.com/";
                          };
                        };
                      };
                    };
                  };
                };
              };
              singleplayer = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.singleplayer";
                    };
                    hoverText = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.singleplayer.hover";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16711680;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -140;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "singleplayer";
                          };
                        };
                      };
                    };
                  };
                };
              };
              multiplayer = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.multiplayer";
                    };
                    hoverText = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.multiplayer.hover";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 65535;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -120;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "multiplayer";
                          };
                        };
                      };
                    };
                  };
                };
              };
              options = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.options";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16758315;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -100;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "options";
                          };
                        };
                      };
                    };
                  };
                };
              };
              language = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.language";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16758315;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -60;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "languages";
                          };
                        };
                      };
                    };
                  };
                };
              };
              mods = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.mods";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 2113664;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 8411925;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -40;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "mods";
                          };
                        };
                      };
                    };
                  };
                };
              };
              quit = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.quit";
                    };
                    hoverText = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.quit.hover";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16728128;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16711680;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -20;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "quit";
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
        texts = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              mojang = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.mojang";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              forge = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.forge";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -10;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              version = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "file:mainmenu:version.txt";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              aviators = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.aviators";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -35;
                    };
                    fontSize = lib.mkOption {
                      type = lib.types.float;
                      default = 0.5;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              sol = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.sol";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 155;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -30;
                    };
                    fontSize = lib.mkOption {
                      type = lib.types.float;
                      default = 0.5;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
            };
          };
        };
        alignments = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              column_top = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.0;
                    };
                  };
                };
              };
              column_logo = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.05;
                    };
                  };
                };
              };
              column_center = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.5;
                    };
                  };
                };
              };
              column_bottom = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.95;
                    };
                  };
                };
              };
            };
          };
        };
        other = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              background = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    slideshow = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          images = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = [ "mainmenu:textures/bg.png" "mainmenu:textures/bg1.png" "mainmenu:textures/bg2.png" "mainmenu:textures/bg3.png" "mainmenu:textures/bg4.png" "mainmenu:textures/bg5.png" "mainmenu:textures/bg6.png" "mainmenu:textures/bg7.png" ];
                          };
                          displayDuration = lib.mkOption {
                            type = lib.types.int;
                            default = 150;
                          };
                          fadeDuration = lib.mkOption {
                            type = lib.types.int;
                            default = 40;
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
  mainmenu_small_json = lib.mkOption {
    description = "mainmenu_small_json configuration (./config/CustomMainMenu/mainmenu_small.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/CustomMainMenu/mainmenu_small.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        images = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              black = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/bg_menu2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 300;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 4096;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_top";
                    };
                  };
                };
              };
              logo = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/logo2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 300;
                    };
                    height = lib.mkOption {
                      type = lib.types.float;
                      default = 232.738557;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_logo";
                    };
                  };
                };
              };
              discord = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/discord.png";
                    };
                    hoverImage = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/discord2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 140;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              github = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/github.png";
                    };
                    hoverImage = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/github2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 110;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              website = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/website.png";
                    };
                    hoverImage = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/website2.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 170;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
            };
          };
        };
        buttons = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              discord = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn_discord.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 140;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 2400;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 2747;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openLink";
                          };
                          link = lib.mkOption {
                            type = lib.types.str;
                            default = "https://discord.gg/EXshrPV";
                          };
                        };
                      };
                    };
                  };
                };
              };
              github = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn_discord.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 110;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 2400;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 2747;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openLink";
                          };
                          link = lib.mkOption {
                            type = lib.types.str;
                            default = "https://github.com/GTNewHorizons/NewHorizons/issues";
                          };
                        };
                      };
                    };
                  };
                };
              };
              website = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn_discord.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 170;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -80;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 60;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 2400;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 2747;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openLink";
                          };
                          link = lib.mkOption {
                            type = lib.types.str;
                            default = "https://www.gtnewhorizons.com/";
                          };
                        };
                      };
                    };
                  };
                };
              };
              singleplayer = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.singleplayer";
                    };
                    hoverText = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.singleplayer.hover";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16711680;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -140;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 300;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "singleplayer";
                          };
                        };
                      };
                    };
                  };
                };
              };
              multiplayer = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.multiplayer";
                    };
                    hoverText = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.multiplayer.hover";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 65535;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -120;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 300;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "multiplayer";
                          };
                        };
                      };
                    };
                  };
                };
              };
              options = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.options";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16758315;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -100;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 300;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "options";
                          };
                        };
                      };
                    };
                  };
                };
              };
              language = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.language";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 4227327;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16758315;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -60;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 300;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "languages";
                          };
                        };
                      };
                    };
                  };
                };
              };
              mods = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.mods";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 2113664;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 8411925;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -40;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 300;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "openGui";
                          };
                          gui = lib.mkOption {
                            type = lib.types.str;
                            default = "mods";
                          };
                        };
                      };
                    };
                  };
                };
              };
              quit = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.quit";
                    };
                    hoverText = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.quit.hover";
                    };
                    normalTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16728128;
                    };
                    hoverTextColor = lib.mkOption {
                      type = lib.types.int;
                      default = 16711680;
                    };
                    texture = lib.mkOption {
                      type = lib.types.str;
                      default = "mainmenu:textures/btn4.png";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -20;
                    };
                    width = lib.mkOption {
                      type = lib.types.int;
                      default = 300;
                    };
                    height = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    imageWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    imageHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                    action = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "quit";
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
        texts = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              mojang = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.mojang";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 305;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              forge = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.forge";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 305;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -10;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              version = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "file:mainmenu:version.txt";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 305;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -20;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              aviators = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.aviators";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 305;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -35;
                    };
                    fontSize = lib.mkOption {
                      type = lib.types.float;
                      default = 0.5;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
              sol = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    text = lib.mkOption {
                      type = lib.types.str;
                      default = "menu.gtnh.sol";
                    };
                    posX = lib.mkOption {
                      type = lib.types.int;
                      default = 305;
                    };
                    posY = lib.mkOption {
                      type = lib.types.int;
                      default = -30;
                    };
                    fontSize = lib.mkOption {
                      type = lib.types.float;
                      default = 0.5;
                    };
                    alignment = lib.mkOption {
                      type = lib.types.str;
                      default = "column_bottom";
                    };
                  };
                };
              };
            };
          };
        };
        alignments = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              column_top = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.0;
                    };
                  };
                };
              };
              column_logo = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.05;
                    };
                  };
                };
              };
              column_center = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.5;
                    };
                  };
                };
              };
              column_bottom = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    factorWidth = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    factorHeight = lib.mkOption {
                      type = lib.types.float;
                      default = 0.95;
                    };
                  };
                };
              };
            };
          };
        };
        other = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              background = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    image = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    slideshow = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          images = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = [ "mainmenu:textures/bg.png" "mainmenu:textures/bg1.png" "mainmenu:textures/bg2.png" "mainmenu:textures/bg3.png" "mainmenu:textures/bg4.png" "mainmenu:textures/bg5.png" "mainmenu:textures/bg6.png" "mainmenu:textures/bg7.png" ];
                          };
                          displayDuration = lib.mkOption {
                            type = lib.types.int;
                            default = 150;
                          };
                          fadeDuration = lib.mkOption {
                            type = lib.types.int;
                            default = 40;
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
