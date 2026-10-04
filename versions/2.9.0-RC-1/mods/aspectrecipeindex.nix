{ lib, ... }:
{
  aspectrecipeindex_cfg = lib.mkOption {
    description = "aspectrecipeindex_cfg configuration (./config/aspectrecipeindex.cfg)";
    default = { };
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/aspectrecipeindex.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        general = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              showInstabilityNumber = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show the instability of infusion recipes as a number [default: true]";
              };
              showLockedRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show recipes even if the research is not completed [default: false]";
              };
              showResearchKey = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show the required research for recipes on all handlers [default: true]";
              };
              showUndiscoveredAspectNames = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Show names of undiscovered aspects when hovered in NEI [default: false]";
              };
              showUndiscoveredAspectRecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Show combination recipes of undiscovered aspects in NEI [default: false]";
              };
            };
          };
        };
      };
    };
  };
}
