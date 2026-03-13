{lib, ...}: {
  MouseTweaks_cfg = lib.mkOption {
    description = "MouseTweaks_cfg configuration (./config/MouseTweaks.cfg)";
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
        default = "properties";
        readOnly = true;
        };
        WheelTweak = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        LMBTweakWithoutItem = lib.mkOption {
          type = lib.types.int;
          default = 1;
        };
        RMBTweak = lib.mkOption {
          type = lib.types.int;
          default = 1;
        };
        LMBTweakWithItem = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        WheelSearchOrder = lib.mkOption {
          type = lib.types.int;
          default = 1;
        };
        OnTickMethodOrder = lib.mkOption {
          type = lib.types.str;
          default = "Forge, LiteLoader, Minecraft";
        };
        Debug = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
      };
    };
  };
}
