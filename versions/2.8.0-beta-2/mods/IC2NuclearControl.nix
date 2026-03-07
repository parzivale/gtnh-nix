{lib, ...}: {
  IC2NuclearControl = lib.mkOption {
    description = "IC2NuclearControl configuration (./config/IC2NuclearControl.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/IC2NuclearControl.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              SMPMaxAlarmRange = lib.mkOption {
                type = lib.types.int;
                default = 256;
              };
              alarmRange = lib.mkOption {
                type = lib.types.int;
                default = 64;
              };
              allowedAlarms = lib.mkOption {
                type = lib.types.str;
                default = "default,sci-fi,factorio-rocket-silo";
              };
              infoPanelRefreshPeriod = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              maxAlarmRange = lib.mkOption {
                type = lib.types.int;
                default = 128;
              };
              rangeTriggerRefreshPeriod = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              recipes = lib.mkOption {
                type = lib.types.str;
                default = "gregtech";
                description = "Valid inputs: normal, old or gregtech [default: normal]";
              };
              remoteThermalMonitorEnergyConsumption = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              sensorDataRefreshPeriod = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "can not be longer than infoPanelRefreshPeriod [default: 4]";
              };
            };
          };
        };
      };
    };
  };
}
