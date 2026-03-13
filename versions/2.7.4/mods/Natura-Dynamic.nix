{lib, ...}: {
  Natura-Dynamic_json = lib.mkOption {
    description = "Natura-Dynamic_json configuration (./config/Natura-Dynamic.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/Natura-Dynamic.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        CONFIG_VERSION = lib.mkOption {
          type = lib.types.int;
          default = 1;
        };
        modules = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Natura Forestry Compatibility" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    enabled = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              "Natura BuildCraft Compatibility" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    enabled = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              "Natura Thaumcraft Compatibility" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    enabled = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              "Natura FMP Compatibility" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    enabled = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              "Natura NEI Compatibility" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    enabled = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              "Natura Waila Compatibility" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    enabled = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
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
