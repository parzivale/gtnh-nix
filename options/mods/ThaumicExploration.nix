{lib, ...}: {
  ThaumicExploration = lib.mkOption {
    description = "ThaumicExploration configuration (./config/ThaumicExploration.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ThaumicExploration.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "easter eggs" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable Thaumic Frenchurgy" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        enchantment = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Binding = lib.mkOption {
                type = lib.types.int;
                default = 77;
              };
              "Binding enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disarm enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Disarming = lib.mkOption {
                type = lib.types.int;
                default = 79;
              };
              "Night Vision" = lib.mkOption {
                type = lib.types.int;
                default = 78;
              };
              "Night Vision enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        everfullurn = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Allow the Everfull Urn to automatically fill up supported nearby containers. Overrides all other container settings" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Allow the Everfull Urn to fill up Botania Petal Apothecaries" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Allow the Everfull Urn to fill up Thaumcraft Crucibles" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Allow the Everfull Urn to fill up Thaumcraft Spas" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Allow the Everfull Urn to fill up Witchery Cauldrons" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Allow the Everfull Urn to fill up Witchery Kettles" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Allow the Everfull Urn to fill up vanilla Cauldrons" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        miscellaneous = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Allow Boots of the Comet to create ice" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Display [TX] prefix before Thaumic Exploration research" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Boots of the Meteor/Comet" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Crucible of Souls" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Everburn Urn" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Everfull Urn" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Mechanist's Wand Caps" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Sojourner's Wand Caps" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Soul Brazier Chunkloading" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable TX Enchantments" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Talisman of Nourishment" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Thaumic Replicator" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Think Tank" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Wispy Dreamcatcher" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable bound inventories" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Use Purified Brains in advanced golems" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        potion = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Binding = lib.mkOption {
                type = lib.types.int;
                default = 127;
              };
              "Taint Withdrawl" = lib.mkOption {
                type = lib.types.int;
                default = 96;
              };
            };
          };
        };
        replicator = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Allow replication of Greatwood/Silverwood planks" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Allow replication of other mods' logs and planks" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Allow replication of other mods' stone blocks" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
      };
    };
  };
}
