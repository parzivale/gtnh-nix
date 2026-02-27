{lib, ...}: {
  compactkineticgenerators = lib.mkOption {
    description = "compactkineticgenerators configuration (./config/compactkineticgenerators.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/compactkineticgenerators.cfg";
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
              "Debug Mode" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable debug message (SPAM WARNING) [default: false]";
              };
              "ExtremeKG Tier" = lib.mkOption {
                type = lib.types.int;
                default = 7;
                description = "Extreme Kinetic Generator energy tier, default 7 = max 131,072 EU/t [range: 7 ~ 13, default: 7]";
              };
              "Water Output Scale" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "4.0" "16.0" "64.0" "256.0" ];
                description = "output scale vs classic water generator";
              };
              "Water Rotor Damage Scale" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "4.0" "16.0" "64.0" "256.0" ];
                description = "rotor damage scale vs classic water generator";
              };
              "Wind Output Scale" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "4.0" "16.0" "64.0" "256.0" ];
                description = "output scale vs classic wind generator";
              };
              "Wind Rotor Damage Scale" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "4.0" "16.0" "64.0" "256.0" ];
                description = "rotor damage scale vs classic wind generator";
              };
            };
          };
        };
      };
    };
  };
}
