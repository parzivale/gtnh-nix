{lib, ...}: {
  splash_properties = lib.mkOption {
    description = "splash_properties configuration (./config/splash.properties)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/splash.properties";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "properties";
        readOnly = true;
        };
        logoTexture = lib.mkOption {
          type = lib.types.str;
          default = "textures/gui/title/mojang.png";
        };
        background = lib.mkOption {
          type = lib.types.str;
          default = "0xFFFFFF";
        };
        font = lib.mkOption {
          type = lib.types.str;
          default = "0x0";
        };
        barBackground = lib.mkOption {
          type = lib.types.str;
          default = "0xFFFFFF";
        };
        barBorder = lib.mkOption {
          type = lib.types.str;
          default = "0xC0C0C0";
        };
        rotate = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
        bar = lib.mkOption {
          type = lib.types.str;
          default = "0xCB3D35";
        };
        enabled = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        resourcePackPath = lib.mkOption {
          type = lib.types.str;
          default = "resources";
        };
        logoOffset = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        forgeTexture = lib.mkOption {
          type = lib.types.str;
          default = "fml\\:textures/gui/forge.gif";
        };
        fontTexture = lib.mkOption {
          type = lib.types.str;
          default = "textures/font/ascii.png";
        };
      };
    };
  };
}
