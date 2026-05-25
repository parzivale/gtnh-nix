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
      background = lib.mkOption {
        type = lib.types.str;
        default = "0xFFFFFF";
      };
      bar = lib.mkOption {
        type = lib.types.str;
        default = "0xCB3D35";
      };
      barBackground = lib.mkOption {
        type = lib.types.str;
        default = "0xFFFFFF";
      };
      barBorder = lib.mkOption {
        type = lib.types.str;
        default = "0xC0C0C0";
      };
      enabled = lib.mkOption {
        type = lib.types.bool;
        default = true;
      };
      font = lib.mkOption {
        type = lib.types.str;
        default = "0x0";
      };
      fontTexture = lib.mkOption {
        type = lib.types.str;
        default = "textures/font/ascii.png";
      };
      forgeTexture = lib.mkOption {
        type = lib.types.str;
        default = "fml\\:textures/gui/forge.gif";
      };
      logoOffset = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      logoTexture = lib.mkOption {
        type = lib.types.str;
        default = "textures/gui/title/mojang.png";
        description = "Splash screen properties
Thu Sep 28 22:50:29 CEST 2017";
      };
      resourcePackPath = lib.mkOption {
        type = lib.types.str;
        default = "resources";
      };
      rotate = lib.mkOption {
        type = lib.types.bool;
        default = false;
      };
      };
    };
  };
}
