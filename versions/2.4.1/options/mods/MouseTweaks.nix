{lib, ...}: {
  MouseTweaks = lib.mkOption {
    description = "MouseTweaks configuration (./config/MouseTweaks.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/MouseTweaks.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        WheelTweak = lib.mkOption {
          type = lib.types.str;
          default = "0";
          description = "Sun May 13 12:45:37 CEST 2018";
        };
        LMBTweakWithoutItem = lib.mkOption {
          type = lib.types.str;
          default = "1";
        };
        RMBTweak = lib.mkOption {
          type = lib.types.str;
          default = "1";
        };
        LMBTweakWithItem = lib.mkOption {
          type = lib.types.str;
          default = "0";
        };
        WheelSearchOrder = lib.mkOption {
          type = lib.types.str;
          default = "1";
        };
        OnTickMethodOrder = lib.mkOption {
          type = lib.types.str;
          default = "Forge, LiteLoader, Minecraft";
        };
        Debug = lib.mkOption {
          type = lib.types.str;
          default = "0";
        };
      };
    };
  };
}
