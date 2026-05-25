{lib, ...}: {
  tectech_cfg = lib.mkOption {
    description = "tectech_cfg configuration (./config/TecTech/tectech.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TecTech/tectech.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
      };
      debug = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          DebugMode = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enables logging and other purely debug features [default: false]";
          };
          DoDebugMessages = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enable debug output to fml-client-latest.log [default: false]";
          };
          };
        };
      };
      features = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          BoomEnable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Set to false to disable explosions on everything bad that you can do [default: true]";
          };
          EasyScan = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enables tricorder to scan EM i/o hatches directly, too CHEEKY [default: false]";
          };
          NerfFusion = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Set to true to enable removal of plasmas heavier than Fe and other weird ones [default: false]";
          };
          TurretBoomEnable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Set to false to disable explosions caused by EM turrets [default: true]";
          };
          TurretDamageFactor = lib.mkOption {
            type = lib.types.str;
            default = "10.0";
            description = "Damage is multiplied by this number [range: 0.0 ~ 32767.0, default: 10.0]";
          };
          TurretExplosionFactor = lib.mkOption {
            type = lib.types.str;
            default = "1.0";
            description = "Explosion strength is multiplied by this number [range: 0.0 ~ 32767.0, default: 1.0]";
          };
          };
        };
      };
      modules = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          AdminErrorLog = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "If set to true, every op/admin will receive all errors occurred during the startup phase as in game message on join [default: false]";
          };
          };
        };
      };
      };
    };
  };
}
