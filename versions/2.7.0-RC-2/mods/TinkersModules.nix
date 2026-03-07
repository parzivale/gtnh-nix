{lib, ...}: {
  TinkersModules = lib.mkOption {
    description = "TinkersModules configuration (./config/TinkersModules.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TinkersModules.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "modules: disabling these will disable a chunk of the mod" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Tinkers Gears" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Adds a gear cast if other mods provide gears";
              };
              "Tinkers' Armory" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Modifyable armors, such as the traveller's gear.";
              };
              "Tinkers' Mechworks" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Mechanical machinations and steampunk inspired shenanigans.";
              };
              "Tinkers' Smeltery" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Liquid metals, casting, and the multiblock structure.";
              };
              "Tinkers' Weaponry" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "The main core of the mod! All of the tools, the tables, and the patterns are here.";
              };
            };
          };
        };
      };
    };
  };
}
