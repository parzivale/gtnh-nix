{lib, ...}: {
  injectedDependencies_json = lib.mkOption {
    description = "injectedDependencies_json configuration (./config/injectedDependencies.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/injectedDependencies.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      "0" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          deps = lib.mkOption {
            type = lib.types.listOf (lib.types.submodule {
              options = {
              target = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft";
              };
              type = lib.mkOption {
                type = lib.types.str;
                default = "after";
              };
              };
            });
            default = [
              {
                target = "Thaumcraft";
                type = "after";
              }
            ];
          };
          modId = lib.mkOption {
            type = lib.types.str;
            default = "ExtraUtilities";
          };
          };
        };
      };
      };
    };
  };
}
