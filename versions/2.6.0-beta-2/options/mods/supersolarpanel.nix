{lib, ...}: {
  supersolarpanel = lib.mkOption {
    description = "supersolarpanel configuration (./config/supersolarpanel.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/supersolarpanel.cfg";
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
              AdminPanelGenDay = lib.mkOption {
                type = lib.types.int;
                default = 131072;
              };
              AdminPanelGenNight = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              AdminPanelOutput = lib.mkOption {
                type = lib.types.int;
                default = 131072;
              };
              AdminPanelStorage = lib.mkOption {
                type = lib.types.int;
                default = 1310720000;
              };
              PhotonicPanelGenDay = lib.mkOption {
                type = lib.types.int;
                default = 524288;
              };
              PhotonicPanelGenNight = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              PhotonicPanelOutput = lib.mkOption {
                type = lib.types.int;
                default = 524288;
              };
              PhotonicPanelStorage = lib.mkOption {
                type = lib.types.int;
                default = 2000000000;
              };
              SingularSPGenDay = lib.mkOption {
                type = lib.types.int;
                default = 32768;
              };
              SingularSPGenNight = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              SingularSPOutput = lib.mkOption {
                type = lib.types.int;
                default = 32768;
              };
              SingularSPStorage = lib.mkOption {
                type = lib.types.int;
                default = 327680000;
              };
              SpectralSPGenDay = lib.mkOption {
                type = lib.types.int;
                default = 8192;
              };
              SpectralSPGenNight = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              SpectralSPOutput = lib.mkOption {
                type = lib.types.int;
                default = 8192;
              };
              SpectralSPStorage = lib.mkOption {
                type = lib.types.int;
                default = 81920000;
              };
            };
          };
        };
      };
    };
  };
}
