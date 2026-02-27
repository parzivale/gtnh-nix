{lib, ...}: {
  NEIAddons = lib.mkOption {
    description = "NEIAddons configuration (./config/NEIAddons.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/NEIAddons.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        addons = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Applied Energistics 2" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Botany = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Crafting Tables" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Developer Tools" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Forestry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        botany = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Load blacklisted" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to load blacklisted species and alleles, it's dangerous and (mostly) useless";
              };
              "Show Flower Mutations" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to disable flower mutations browsing";
              };
            };
          };
        };
        forestry = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Add Bees to Search" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to add all bees to NEI search";
              };
              "Add Combs to Search" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to add all combs that are produced by bees to NEI search";
              };
              "Add Pollen to Search" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to add all pollen types to NEI search";
              };
              "Add Saplings to Search" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to add all saplings to NEI search";
              };
              "Load blacklisted" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to load blacklisted species and alleles, it's dangerous and (mostly) useless";
              };
              "Show Bee Mutations" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to disable bee mutations browsing";
              };
              "Show Bee Products" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to disable bee products browsing";
              };
              "Show Butterfly Mutations" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to disable butterfly mutations browsing";
              };
              "Show Mutation Requirements" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false disable display of mutation requirements";
              };
              "Show Secret Mutations" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to show secret mutations";
              };
              "Show Tree Mutations" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to disable tree mutations browsing";
              };
              "Show Tree Products" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to disable tree products browsing";
              };
            };
          };
        };
      };
    };
  };
}
