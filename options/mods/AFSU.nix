{lib, ...}: {
  AFSU = lib.mkOption {
    description = "AFSU configuration (./config/AFSU.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/AFSU.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        containergui = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ArmXDispPosition = lib.mkOption {
                type = lib.types.int;
                default = 152;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 152]";
              };
              ArmYDispPosition = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 5]";
              };
              CXDispPosition = lib.mkOption {
                type = lib.types.int;
                default = 128;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 128]";
              };
              CYDispPosition = lib.mkOption {
                type = lib.types.int;
                default = 14;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 14]";
              };
              DXDispPosition = lib.mkOption {
                type = lib.types.int;
                default = 128;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 128]";
              };
              DYDispPosition = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 50]";
              };
            };
          };
        };
        gui = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              GuiButtonDrawQuantity1 = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [default: true]";
              };
              GuiButtonH = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 20]";
              };
              GuiButtonW = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 20]";
              };
              GuiButtonXPart = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: -2147483648 ~ 2147483647, default: 10]";
              };
              GuiButtonYPart = lib.mkOption {
                type = lib.types.int;
                default = 7;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: -2147483648 ~ 2147483647, default: 7]";
              };
              GuiButtonid1 = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: -2147483648 ~ 2147483647, default: 0]";
              };
              barHeight = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 5]";
              };
              barWidth = lib.mkOption {
                type = lib.types.float;
                default = 176.0;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0.0 ~ 2.1474836E9, default: 176.0]";
              };
              barXLocation = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 0]";
              };
              barXPlacement = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 8]";
              };
              barYLocation = lib.mkOption {
                type = lib.types.int;
                default = 251;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 251]";
              };
              barYPlacement = lib.mkOption {
                type = lib.types.int;
                default = 73;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 73]";
              };
              textColor = lib.mkOption {
                type = lib.types.int;
                default = 16448255;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: -2147483648 ~ 2147483647, default: 16448255]";
              };
              toolTipMaxX = lib.mkOption {
                type = lib.types.int;
                default = 29;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 29]";
              };
              toolTipMaxY = lib.mkOption {
                type = lib.types.int;
                default = 26;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 26]";
              };
              toolTipMinX = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 10]";
              };
              toolTipMinY = lib.mkOption {
                type = lib.types.int;
                default = 7;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 7]";
              };
              xEnergy = lib.mkOption {
                type = lib.types.int;
                default = 37;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 37]";
              };
              xEnergy2 = lib.mkOption {
                type = lib.types.int;
                default = 37;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 37]";
              };
              xEnergy3 = lib.mkOption {
                type = lib.types.int;
                default = 26;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 26]";
              };
              xLevel = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 16]";
              };
              xSize = lib.mkOption {
                type = lib.types.int;
                default = 176;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 176]";
              };
              yEnergy = lib.mkOption {
                type = lib.types.int;
                default = 39;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 39]";
              };
              yEnergy2 = lib.mkOption {
                type = lib.types.int;
                default = 49;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 49]";
              };
              yEnergy3 = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 60]";
              };
              yLevel = lib.mkOption {
                type = lib.types.int;
                default = 29;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 29]";
              };
              yName = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 8]";
              };
              ySize = lib.mkOption {
                type = lib.types.int;
                default = 166;
                description = "DO NOT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING [range: 0 ~ 2147483647, default: 166]";
              };
            };
          };
        };
        textures = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "AFB Texture" = lib.mkOption {
                type = lib.types.str;
                default = "default";
                description = "Changes the texture of the AFB. Possible values: default [default: default]";
              };
              "AFSU Texture" = lib.mkOption {
                type = lib.types.str;
                default = "chloe1";
                description = "Changes the texture of the AFSU. Possible values: default, blue, yellow, black, old, chloe1, chloe2, chloe3, freezy [default: default]";
              };
            };
          };
        };
      };
    };
  };
}
