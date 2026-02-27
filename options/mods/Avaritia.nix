{lib, ...}: {
  Avaritia = lib.mkOption {
    description = "Avaritia configuration (./config/Avaritia.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/Avaritia.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "balance!" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Cost Modifier" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Added to the existing modifier to make prices more expensive or cheaper. Can be negative.";
              };
              "Cost Multiplier" = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Added to the existing multiplier to make prices more expensive or cheaper. Can be negative.";
              };
            };
          };
        };
        compatibility = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Applied Energistics 2" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Ars Magica 2" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Big Reactors" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Blood Magic" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Botania = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DarkSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Draconic Evolution" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EnderIO = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Equivalent Exchange 3" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Extra Cells" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Extra Utilities" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Forestry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Forestry Bees" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Gregtech 5" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Industrialcraft 2 Experimental" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Magical Crops" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Metallurgy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "MineFactory Reloaded" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Pneumaticraft = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Project E" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Rotarycraft = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Steve's Carts 2" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Thaumcraft = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Thermal Expansion" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Tinkers Construct" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Twilight Forest" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Witchery = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Boring Food" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable to keep the Ultimate Stew and Cosmic Meatballs from grabbing more ingredients";
              };
              "Break Bedrock" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable if you don't want the World Breaker to break unbreakable blocks";
              };
              "Crafting Only" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable to completely disable most of the mod except for the Dire Crafting table. For if you just want the mod for Minetweaking purposes.";
              };
              "Fractured Ores" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable if you don't have Rotarycraft installed and want some buggy fractured ores";
              };
              "Gotta Go Fast" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable if the Infinity Boots' speed boost is too ridiculous";
              };
              "Use End Stone" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable to take end stone out of recipes";
              };
            };
          };
        };
        materials = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Clay = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Copper = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Enderium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Lead = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Nickel/Ferrous" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Silver = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Steel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Tin = lib.mkOption {
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
