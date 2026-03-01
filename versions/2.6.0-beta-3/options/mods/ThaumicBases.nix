{lib, ...}: {
  "Thaumic Bases" = lib.mkOption {
    description = "Thaumic Bases configuration (./config/Thaumic Bases.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/Thaumic Bases.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "advanced alchemy furnace" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              makeRequireAlumentium = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Does the Advanced Alchemical Furnace requires Alumentum to work faster [default: true]";
              };
              speedMultiplierForFurnace = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "This is the speed of the Advanced Alchamical Furnace. TC's basic has 1. [range: 0 ~ 2147483647, default: 2]";
              };
            };
          };
        };
        enchantments = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              elderKnowledgeEnchantmentID = lib.mkOption {
                type = lib.types.int;
                default = 98;
                description = "[range: 0 ~ 256, default: 98]";
              };
              eldritchBaneEnchantmentID = lib.mkOption {
                type = lib.types.int;
                default = 99;
                description = "[range: 0 ~ 256, default: 99]";
              };
              magicTouchEnchantmentID = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "[range: 0 ~ 256, default: 100]";
              };
              taintedEnchantmentID = lib.mkOption {
                type = lib.types.int;
                default = 101;
                description = "[range: 0 ~ 256, default: 101]";
              };
              vaporisingEnchantmentID = lib.mkOption {
                type = lib.types.int;
                default = 102;
                description = "[range: 0 ~ 256, default: 102]";
              };
            };
          };
        };
        foci = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              aquaticFociUID = lib.mkOption {
                type = lib.types.int;
                default = 42;
                description = "[range: 0 ~ 2147483647, default: 42]";
              };
              calmingFociUID = lib.mkOption {
                type = lib.types.int;
                default = 46;
                description = "[range: 0 ~ 2147483647, default: 46]";
              };
              crystalizationFociUID = lib.mkOption {
                type = lib.types.int;
                default = 47;
                description = "[range: 0 ~ 2147483647, default: 47]";
              };
              decomposingFociUID = lib.mkOption {
                type = lib.types.int;
                default = 44;
                description = "[range: 0 ~ 2147483647, default: 44]";
              };
              nethericFociUID = lib.mkOption {
                type = lib.types.int;
                default = 43;
                description = "[range: 0 ~ 2147483647, default: 43]";
              };
              vaporisingFociUID = lib.mkOption {
                type = lib.types.int;
                default = 45;
                description = "[range: 0 ~ 2147483647, default: 45]";
              };
              warpingFociUID = lib.mkOption {
                type = lib.types.int;
                default = 48;
                description = "[range: 0 ~ 2147483647, default: 48]";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              allowTobacco = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false the tobacco will be disabled - there will be no recipes/no entries in Thaumonomicon [default: true]";
              };
              brightFociRequiresPrimordialPearl = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Does the Brightness Foci for the Node Manipulator requires a Primordial Pearl [default: true]";
              };
              enableBloodyMess = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false the spikes and bloody robes will be disabled - there will be no recipes/no entries in Thaumonomicon [default: true]";
              };
              enableBracelets = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false the various bracelets will be disabled - there will be no recipes/no entries in Thaumonomicon [default: true]";
              };
              enableFlora = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false the various plant items will be disabled - there will be no recipes/no entries in Thaumonomicon [default: true]";
              };
              enableNodeTools = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false, will disable the Node Modifer, focuses, and the Node Linker's entries and recipes [default: true]";
              };
              enableRevolver = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If set to false the revolver and upgrades will be disabled - there will be no recipes/no entries in Thaumonomicon [default: true]";
              };
              enableTTCompathability = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow the mod to register it's enchantments in the Thaumic Tinkerer's enchanter? Set to false if Thaumic Tinkerer is crashing you. [default: true]";
              };
              shardsFromOre = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "Amount of shards recieved from crucible ore processing [range: 1 ~ 64, default: 8]";
              };
            };
          };
        };
        pyrofluid = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              maxBlazePowderFromPyrofluid = lib.mkOption {
                type = lib.types.int;
                default = 37;
                description = "[range: 0 ~ 2147483647, default: 37]";
              };
              minBlazePowderFromPyrofluid = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "[range: 0 ~ 2147483647, default: 5]";
              };
            };
          };
        };
      };
    };
  };
}
