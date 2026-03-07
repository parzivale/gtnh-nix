{lib, ...}: {
  openprinter = lib.mkOption {
    description = "openprinter configuration (./config/openprinter.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/openprinter.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        options = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Render3D = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should we use the 3D Model, or a block";
              };
              enableMUD = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable the Update Checker? Disabling this will remove all traces of the MUD.";
              };
              enableNameTag = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows the printer to print Name Tags, configurable because this usually costs XP.";
              };
              inkUses = lib.mkOption {
                type = lib.types.int;
                default = 4000;
                description = "How many times you can print with a ink cartridge";
              };
            };
          };
        };
      };
    };
  };
}
