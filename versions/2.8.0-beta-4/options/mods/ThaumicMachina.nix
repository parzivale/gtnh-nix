{lib, ...}: {
  ThaumicMachina = lib.mkOption {
    description = "ThaumicMachina configuration (./config/ThaumicMachina.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumicMachina.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        research = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "research.concept.mode" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Concept research mode. 0 = Normal, 1 = Easy (purchased), 2 = Auto-Unlock.";
              };
            };
          };
        };
      };
    };
  };
}
