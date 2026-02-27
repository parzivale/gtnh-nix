{lib, ...}: {
  TwilightForest = lib.mkOption {
    description = "TwilightForest configuration (./config/TwilightForest.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TwilightForest.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        biome = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "biome.id.Clearing" = lib.mkOption {
                type = lib.types.int;
                default = 170;
              };
              "biome.id.DarkForest" = lib.mkOption {
                type = lib.types.int;
                default = 171;
              };
              "biome.id.DarkForestCenter" = lib.mkOption {
                type = lib.types.int;
                default = 172;
              };
              "biome.id.DeepMushrooms" = lib.mkOption {
                type = lib.types.int;
                default = 173;
              };
              "biome.id.EnchantedForest" = lib.mkOption {
                type = lib.types.int;
                default = 189;
              };
              "biome.id.FireSwamp" = lib.mkOption {
                type = lib.types.int;
                default = 175;
              };
              "biome.id.Glacier" = lib.mkOption {
                type = lib.types.int;
                default = 176;
              };
              "biome.id.Highlands" = lib.mkOption {
                type = lib.types.int;
                default = 177;
              };
              "biome.id.HighlandsCenter" = lib.mkOption {
                type = lib.types.int;
                default = 178;
              };
              "biome.id.Lake" = lib.mkOption {
                type = lib.types.int;
                default = 179;
              };
              "biome.id.LightedForest" = lib.mkOption {
                type = lib.types.int;
                default = 180;
              };
              "biome.id.Mushrooms" = lib.mkOption {
                type = lib.types.int;
                default = 181;
              };
              "biome.id.OakSavanna" = lib.mkOption {
                type = lib.types.int;
                default = 182;
              };
              "biome.id.Snowfield" = lib.mkOption {
                type = lib.types.int;
                default = 196;
              };
              "biome.id.Stream" = lib.mkOption {
                type = lib.types.int;
                default = 184;
              };
              "biome.id.Swamp" = lib.mkOption {
                type = lib.types.int;
                default = 185;
              };
              "biome.id.Thornlands" = lib.mkOption {
                type = lib.types.int;
                default = 186;
              };
              "biome.id.TwilightForest" = lib.mkOption {
                type = lib.types.int;
                default = 187;
              };
              "biome.id.TwilightForestVariant" = lib.mkOption {
                type = lib.types.int;
                default = 188;
              };
            };
          };
        };
        dimension = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              dimensionID = lib.mkOption {
                type = lib.types.int;
                default = 7;
                description = "What ID number to assign to the Twilight Forest dimension.  Change if you are having conflicts with another mod.";
              };
              dimensionProviderID = lib.mkOption {
                type = lib.types.int;
                default = -777;
                description = "Dimension provider ID.  Does not normally need to be changed, but the option is provided to work around a bug in MCPC+";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              AdminOnlyPortals = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Allow portals only for admins (ops).  This severly reduces the range in which the mod usually scans for valid portal conditions, and it scans near ops only.";
              };
              AllowPortalsInOtherDimensions = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Allow portals to the Twilight Forest to be made outside of dimension 0.  May be considered an exploit.";
              };
              DisablePortalCreation = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable Twilight Forest portal creation entirely.  Provided for server operators looking to restrict action to the dimension.";
              };
              DisableUncrafting = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable the uncrafting function of the uncrafting table.  Provided as an option when interaction with other mods produces exploitable recipes.";
              };
              OldMapGen = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Use old (pre Minecraft 1.7) map gen.  May not be fully supported.";
              };
              PortalCreationItem = lib.mkOption {
                type = lib.types.str;
                default = "dreamcraft:item.TwilightCrystal";
                description = "Item to create the Twilight Forest Portal.  Defaults to 'diamond'";
              };
              SilentCicadas = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Make cicadas silent  for those having sound library problems, or otherwise finding them annoying";
              };
              TwilightForestSeed = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "If set, this will override the normal world seed when generating parts of the Twilight Forest Dimension.";
              };
            };
          };
        };
        performance = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              CanopyCoverage = lib.mkOption {
                type = lib.types.str;
                default = "1.7";
                description = "Amount of canopy coverage, from 0.0 on up.  Lower numbers improve chunk generation speed at the cost of a thinner forest.";
              };
              TwilightOakChance = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "Chance that a chunk in the Twilight Forest will contain a twilight oak tree.  Higher numbers reduce the number of trees, increasing performance.";
              };
            };
          };
        };
        "tinker integration" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              EnableTiConstructIntegration = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable backport of 1.12.2 TiC integration including materials and modifiers.";
              };
              FieryMetal_ID = lib.mkOption {
                type = lib.types.int;
                default = 1553;
                description = "Tinker Material ID for FieryMetal.";
              };
              KnightMetal_ID = lib.mkOption {
                type = lib.types.int;
                default = 1626;
                description = "Tinker Material ID for KnightMetal.";
              };
              NagaScale_ID = lib.mkOption {
                type = lib.types.int;
                default = 44;
                description = "Tinker Material ID for NagaScale.";
              };
              Steeleaf_ID = lib.mkOption {
                type = lib.types.int;
                default = 1625;
                description = "Tinker Material ID for Steeleaf.";
              };
            };
          };
        };
      };
    };
  };
}
