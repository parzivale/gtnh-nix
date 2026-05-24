{lib, ...}: {
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
      alignments = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          column_bottom = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.95;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              };
            };
          };
          column_center = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              };
            };
          };
          column_logo = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.05;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              };
            };
          };
          column_top = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
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
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  link = lib.mkOption {
                    type = lib.types.str;
                    default = "https://discord.gg/EXshrPV";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openLink";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 2747;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 2400;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 65;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -80;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn_discord.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              };
            };
          };
          github = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  link = lib.mkOption {
                    type = lib.types.str;
                    default = "https://github.com/GTNewHorizons/NewHorizons/issues";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openLink";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 2747;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 2400;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 35;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -80;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn_discord.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              };
            };
          };
          language = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "languages";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16758315;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -60;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Language";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          mods = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "mods";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 8411925;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 2113664;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -40;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Mods (#modsloaded#/#modsactive#)";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          multiplayer = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "multiplayer";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverText = lib.mkOption {
                type = lib.types.str;
                default = "Join us";
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 65535;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -120;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Multiplayer";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          options = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "options";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16758315;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -100;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Options";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          quit = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
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
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverText = lib.mkOption {
                type = lib.types.str;
                default = "No! Don't leave!";
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16711680;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16728128;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -20;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Quit";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          singleplayer = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "singleplayer";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverText = lib.mkOption {
                type = lib.types.str;
                default = "Alone, alone ...";
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16711680;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -140;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Singleplayer";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          website = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  link = lib.mkOption {
                    type = lib.types.str;
                    default = "https://www.gtnewhorizons.com/";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openLink";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 2747;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 2400;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 95;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -80;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn_discord.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              };
            };
          };
          };
        };
      };
      images = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          black = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_top";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 4096;
              };
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
              };
            };
          };
          discord = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverImage = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/discord2.png";
              };
              image = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/discord.png";
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
              };
            };
          };
          github = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverImage = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/github2.png";
              };
              image = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/github.png";
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
              };
            };
          };
          logo = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_logo";
              };
              height = lib.mkOption {
                type = lib.types.float;
                default = 116.3692785;
              };
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
              };
            };
          };
          website = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverImage = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/website2.png";
              };
              image = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/website.png";
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
                  displayDuration = lib.mkOption {
                    type = lib.types.int;
                    default = 150;
                  };
                  fadeDuration = lib.mkOption {
                    type = lib.types.int;
                    default = 40;
                  };
                  images = lib.mkOption {
                    type = lib.types.listOf lib.types.str;
                    default = [ "mainmenu:textures/bg.png" "mainmenu:textures/bg1.png" "mainmenu:textures/bg2.png" "mainmenu:textures/bg3.png" "mainmenu:textures/bg4.png" "mainmenu:textures/bg5.png" "mainmenu:textures/bg6.png" "mainmenu:textures/bg7.png" ];
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
          aviators = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              fontSize = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 155;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -20;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Opening Music Copyright by the Aviators";
              };
              };
            };
          };
          mojang = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 155;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Forge #forgeversion# for Minecraft #mcversion# - Copyright Mojang AB. Do not distribute!";
              };
              };
            };
          };
          version = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 155;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -10;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "file:mainmenu:version.txt";
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
      alignments = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          column_bottom = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.95;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              };
            };
          };
          column_center = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              };
            };
          };
          column_logo = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.05;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              };
            };
          };
          column_top = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
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
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  link = lib.mkOption {
                    type = lib.types.str;
                    default = "https://discord.gg/EXshrPV";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openLink";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 2747;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 2400;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 65;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -80;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn_discord.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              };
            };
          };
          github = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  link = lib.mkOption {
                    type = lib.types.str;
                    default = "https://github.com/GTNewHorizons/NewHorizons/issues";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openLink";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 2747;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 2400;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 35;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -80;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn_discord.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              };
            };
          };
          language = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "languages";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16758315;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -60;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Language";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          mods = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "mods";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 8411925;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 2113664;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -40;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Mods (#modsloaded#/#modsactive#)";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          multiplayer = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "multiplayer";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverText = lib.mkOption {
                type = lib.types.str;
                default = "Join us";
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 65535;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -120;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Multiplayer";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          options = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "options";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16758315;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -100;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Options";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          quit = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
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
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverText = lib.mkOption {
                type = lib.types.str;
                default = "No! Don't leave!";
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16711680;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16728128;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -20;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Quit";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          singleplayer = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "singleplayer";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverText = lib.mkOption {
                type = lib.types.str;
                default = "Alone, alone ...";
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16711680;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -140;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Singleplayer";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          website = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  link = lib.mkOption {
                    type = lib.types.str;
                    default = "https://www.gtnewhorizons.com/";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openLink";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 2747;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 2400;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 95;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -80;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn_discord.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              };
            };
          };
          };
        };
      };
      images = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          black = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_top";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 4096;
              };
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
              };
            };
          };
          discord = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverImage = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/discord2.png";
              };
              image = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/discord.png";
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
              };
            };
          };
          github = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverImage = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/github2.png";
              };
              image = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/github.png";
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
              };
            };
          };
          logo = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_logo";
              };
              height = lib.mkOption {
                type = lib.types.float;
                default = 116.3692785;
              };
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
              };
            };
          };
          website = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverImage = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/website2.png";
              };
              image = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/website.png";
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
                  displayDuration = lib.mkOption {
                    type = lib.types.int;
                    default = 150;
                  };
                  fadeDuration = lib.mkOption {
                    type = lib.types.int;
                    default = 40;
                  };
                  images = lib.mkOption {
                    type = lib.types.listOf lib.types.str;
                    default = [ "mainmenu:textures/bg.png" "mainmenu:textures/bg1.png" "mainmenu:textures/bg2.png" "mainmenu:textures/bg3.png" "mainmenu:textures/bg4.png" "mainmenu:textures/bg5.png" "mainmenu:textures/bg6.png" "mainmenu:textures/bg7.png" ];
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
          aviators = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              fontSize = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -20;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Opening Music Copyright by the Aviators";
              };
              };
            };
          };
          mojang = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 155;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Forge #forgeversion# for Minecraft #mcversion# - Copyright Mojang AB. Do not distribute!";
              };
              };
            };
          };
          version = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 155;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -10;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "file:mainmenu:version.txt";
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
      alignments = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          column_bottom = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.95;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              };
            };
          };
          column_center = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              };
            };
          };
          column_logo = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.05;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              };
            };
          };
          column_top = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
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
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  link = lib.mkOption {
                    type = lib.types.str;
                    default = "https://discord.gg/EXshrPV";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openLink";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 2747;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 2400;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 65;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -80;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn_discord.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              };
            };
          };
          github = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  link = lib.mkOption {
                    type = lib.types.str;
                    default = "https://github.com/GTNewHorizons/NewHorizons/issues";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openLink";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 2747;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 2400;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 35;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -80;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn_discord.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              };
            };
          };
          language = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "languages";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16758315;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -60;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Language";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          mods = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "mods";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 8411925;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 2113664;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -40;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Mods (#modsloaded#/#modsactive#)";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          multiplayer = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "multiplayer";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverText = lib.mkOption {
                type = lib.types.str;
                default = "Join us";
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 65535;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -120;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Multiplayer";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          options = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "options";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16758315;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -100;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Options";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          quit = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
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
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverText = lib.mkOption {
                type = lib.types.str;
                default = "No! Don't leave!";
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16711680;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16728128;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -20;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Quit";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          singleplayer = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "singleplayer";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverText = lib.mkOption {
                type = lib.types.str;
                default = "Alone, alone ...";
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16711680;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -140;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Singleplayer";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          website = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  link = lib.mkOption {
                    type = lib.types.str;
                    default = "https://www.gtnewhorizons.com/";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openLink";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 2747;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 2400;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 95;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -80;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn_discord.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              };
            };
          };
          };
        };
      };
      images = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          black = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_top";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 4096;
              };
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
              };
            };
          };
          discord = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverImage = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/discord2.png";
              };
              image = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/discord.png";
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
              };
            };
          };
          github = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverImage = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/github2.png";
              };
              image = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/github.png";
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
              };
            };
          };
          logo = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_logo";
              };
              height = lib.mkOption {
                type = lib.types.float;
                default = 116.3692785;
              };
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
              };
            };
          };
          website = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverImage = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/website2.png";
              };
              image = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/website.png";
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
                  displayDuration = lib.mkOption {
                    type = lib.types.int;
                    default = 150;
                  };
                  fadeDuration = lib.mkOption {
                    type = lib.types.int;
                    default = 40;
                  };
                  images = lib.mkOption {
                    type = lib.types.listOf lib.types.str;
                    default = [ "mainmenu:textures/bg.png" "mainmenu:textures/bg1.png" "mainmenu:textures/bg2.png" "mainmenu:textures/bg3.png" "mainmenu:textures/bg4.png" "mainmenu:textures/bg5.png" "mainmenu:textures/bg6.png" "mainmenu:textures/bg7.png" ];
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
          aviators = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              fontSize = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 155;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -20;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Opening Music Copyright by the Aviators";
              };
              };
            };
          };
          mojang = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 155;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Forge #forgeversion# for Minecraft #mcversion# - Copyright Mojang AB. Do not distribute!";
              };
              };
            };
          };
          version = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 155;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -10;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "file:mainmenu:version.txt";
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
      alignments = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          column_bottom = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.95;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              };
            };
          };
          column_center = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              };
            };
          };
          column_logo = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.05;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              };
            };
          };
          column_top = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
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
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  link = lib.mkOption {
                    type = lib.types.str;
                    default = "https://discord.gg/EXshrPV";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openLink";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 2747;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 2400;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 65;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -80;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn_discord.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              };
            };
          };
          github = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  link = lib.mkOption {
                    type = lib.types.str;
                    default = "https://github.com/GTNewHorizons/NewHorizons/issues";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openLink";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 2747;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 2400;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 35;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -80;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn_discord.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              };
            };
          };
          language = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "languages";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16758315;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -60;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Language";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          mods = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "mods";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 8411925;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 2113664;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -40;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Mods (#modsloaded#/#modsactive#)";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          multiplayer = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "multiplayer";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverText = lib.mkOption {
                type = lib.types.str;
                default = "Join us";
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 65535;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -120;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Multiplayer";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          options = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "options";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16758315;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -100;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Options";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          quit = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
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
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverText = lib.mkOption {
                type = lib.types.str;
                default = "No! Don't leave!";
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16711680;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16728128;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -20;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Quit";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          singleplayer = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "singleplayer";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverText = lib.mkOption {
                type = lib.types.str;
                default = "Alone, alone ...";
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16711680;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -140;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Singleplayer";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              };
            };
          };
          website = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  link = lib.mkOption {
                    type = lib.types.str;
                    default = "https://www.gtnewhorizons.com/";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openLink";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 2747;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 2400;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 95;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -80;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn_discord.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              };
            };
          };
          };
        };
      };
      images = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          black = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_top";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 4096;
              };
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
              };
            };
          };
          discord = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverImage = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/discord2.png";
              };
              image = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/discord.png";
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
              };
            };
          };
          github = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverImage = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/github2.png";
              };
              image = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/github.png";
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
              };
            };
          };
          logo = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_logo";
              };
              height = lib.mkOption {
                type = lib.types.float;
                default = 116.3692785;
              };
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
              };
            };
          };
          website = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverImage = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/website2.png";
              };
              image = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/website.png";
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
                  displayDuration = lib.mkOption {
                    type = lib.types.int;
                    default = 150;
                  };
                  fadeDuration = lib.mkOption {
                    type = lib.types.int;
                    default = 40;
                  };
                  images = lib.mkOption {
                    type = lib.types.listOf lib.types.str;
                    default = [ "mainmenu:textures/bg.png" "mainmenu:textures/bg1.png" "mainmenu:textures/bg2.png" "mainmenu:textures/bg3.png" "mainmenu:textures/bg4.png" "mainmenu:textures/bg5.png" "mainmenu:textures/bg6.png" "mainmenu:textures/bg7.png" ];
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
          aviators = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              fontSize = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 155;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -20;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Opening Music Copyright by the Aviators";
              };
              };
            };
          };
          mojang = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 155;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Forge #forgeversion# for Minecraft #mcversion# - Copyright Mojang AB. Do not distribute!";
              };
              };
            };
          };
          version = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 155;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -10;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "file:mainmenu:version.txt";
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
      alignments = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          column_bottom = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.95;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              };
            };
          };
          column_center = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              };
            };
          };
          column_logo = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.05;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              };
            };
          };
          column_top = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              factorHeight = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
              };
              factorWidth = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
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
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  link = lib.mkOption {
                    type = lib.types.str;
                    default = "https://discord.gg/EXshrPV";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openLink";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 2747;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 2400;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 140;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -80;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn_discord.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              };
            };
          };
          github = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  link = lib.mkOption {
                    type = lib.types.str;
                    default = "https://github.com/GTNewHorizons/NewHorizons/issues";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openLink";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 2747;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 2400;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 110;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -80;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn_discord.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              };
            };
          };
          language = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "languages";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16758315;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -60;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Language";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 300;
              };
              };
            };
          };
          mods = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "mods";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 8411925;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 2113664;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -40;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Mods (#modsloaded#/#modsactive#)";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 300;
              };
              };
            };
          };
          multiplayer = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "multiplayer";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverText = lib.mkOption {
                type = lib.types.str;
                default = "Join us";
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 65535;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -120;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Multiplayer";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 300;
              };
              };
            };
          };
          options = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "options";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16758315;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -100;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Options";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 300;
              };
              };
            };
          };
          quit = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
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
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverText = lib.mkOption {
                type = lib.types.str;
                default = "No! Don't leave!";
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16711680;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16728128;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -20;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Quit";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 300;
              };
              };
            };
          };
          singleplayer = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  gui = lib.mkOption {
                    type = lib.types.str;
                    default = "singleplayer";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openGui";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverText = lib.mkOption {
                type = lib.types.str;
                default = "Alone, alone ...";
              };
              hoverTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16711680;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              normalTextColor = lib.mkOption {
                type = lib.types.int;
                default = 4227327;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -140;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Singleplayer";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn4.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 300;
              };
              };
            };
          };
          website = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              action = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  link = lib.mkOption {
                    type = lib.types.str;
                    default = "https://www.gtnewhorizons.com/";
                  };
                  type = lib.mkOption {
                    type = lib.types.str;
                    default = "openLink";
                  };
                  };
                };
              };
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              imageHeight = lib.mkOption {
                type = lib.types.int;
                default = 2747;
              };
              imageWidth = lib.mkOption {
                type = lib.types.int;
                default = 2400;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 170;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -80;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              texture = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/btn_discord.png";
              };
              width = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              };
            };
          };
          };
        };
      };
      images = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          black = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_top";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 4096;
              };
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
              };
            };
          };
          discord = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverImage = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/discord2.png";
              };
              image = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/discord.png";
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
              };
            };
          };
          github = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverImage = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/github2.png";
              };
              image = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/github.png";
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
              };
            };
          };
          logo = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_logo";
              };
              height = lib.mkOption {
                type = lib.types.float;
                default = 232.738557;
              };
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
              };
            };
          };
          website = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              height = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              hoverImage = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/website2.png";
              };
              image = lib.mkOption {
                type = lib.types.str;
                default = "mainmenu:textures/website.png";
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
                  displayDuration = lib.mkOption {
                    type = lib.types.int;
                    default = 150;
                  };
                  fadeDuration = lib.mkOption {
                    type = lib.types.int;
                    default = 40;
                  };
                  images = lib.mkOption {
                    type = lib.types.listOf lib.types.str;
                    default = [ "mainmenu:textures/bg.png" "mainmenu:textures/bg1.png" "mainmenu:textures/bg2.png" "mainmenu:textures/bg3.png" "mainmenu:textures/bg4.png" "mainmenu:textures/bg5.png" "mainmenu:textures/bg6.png" "mainmenu:textures/bg7.png" ];
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
          aviators = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              fontSize = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 305;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -20;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Opening Music Copyright by the Aviators";
              };
              };
            };
          };
          mojang = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 305;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "Forge #forgeversion# for Minecraft #mcversion# - Copyright Mojang AB. Do not distribute!";
              };
              };
            };
          };
          version = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              alignment = lib.mkOption {
                type = lib.types.str;
                default = "column_bottom";
              };
              posX = lib.mkOption {
                type = lib.types.int;
                default = 305;
              };
              posY = lib.mkOption {
                type = lib.types.int;
                default = -10;
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "file:mainmenu:version.txt";
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
