{lib, ...}: {
  catwalks = lib.mkOption {
    description = "catwalks configuration (./config/catwalks.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/catwalks.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        catwalks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              AlternateSteelGrateRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Use alternate steel grate recipe with iron bars (in case of mod conflicts) [default: false]";
              };
              FullBlockLadder = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to be able to climb the outside of caged ladders [default: false]";
              };
              VanillaLadders = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to turn leaves, bookcases, and iron bars into ladders [default: false]";
              };
              catwalkSpeed = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "Catwalk speed boost will be equivalent to a Speed N potion. [range: 0.0 ~ 10.0, default: 1.0]";
              };
              ladderSpeed = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "Ladders will go at 5*N blocks/second [range: 0.0 ~ 10.0, default: 1.0]";
              };
            };
          };
        };
      };
    };
  };
}
