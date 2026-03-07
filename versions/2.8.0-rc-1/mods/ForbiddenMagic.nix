{lib, ...}: {
  ForbiddenMagic = lib.mkOption {
    description = "ForbiddenMagic configuration (./config/ForbiddenMagic.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ForbiddenMagic.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        compatibility = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Ars Magica 2 Interaction" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "AM2 interaction is unsupported. Enable at your own risk.";
              };
              "Blood Magic Interaction" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Botania Interaction" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Conversion Wands" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable to remove all conversion wands.";
              };
              "Cross-Mod Interaction" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable to keep mods segregated.";
              };
              "Draconic Evolution Interaction" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Equivalent Exchange 3 EMC" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable if you don't want Forbidden Magic to add EMC values to items.";
              };
              "Special Mobs Interaction" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Thaumic Tinkerer Interaction" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Tinkers Construct Interaction" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Twilight Forest Interaction" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        enchantments = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Capitalist = lib.mkOption {
                type = lib.types.int;
                default = 68;
              };
              Consuming = lib.mkOption {
                type = lib.types.int;
                default = 69;
              };
              Corrupting = lib.mkOption {
                type = lib.types.int;
                default = 125;
              };
              Educational = lib.mkOption {
                type = lib.types.int;
                default = 70;
              };
              "Fiery Core" = lib.mkOption {
                type = lib.types.int;
                default = 66;
              };
              Impact = lib.mkOption {
                type = lib.types.int;
                default = 73;
              };
              Voidtouched = lib.mkOption {
                type = lib.types.int;
                default = 72;
              };
              Wrath = lib.mkOption {
                type = lib.types.int;
                default = 67;
              };
            };
          };
        };
        "focus upgrades" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Hellfire = lib.mkOption {
                type = lib.types.int;
                default = 142;
              };
              Pandemonium = lib.mkOption {
                type = lib.types.int;
                default = 143;
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Capitalist Enchantment" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable to remove the recipe and effects of the Capitalist enchantment.";
              };
              "Emerald Transmutation" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable to remove the Emerald Transmutation research and recipe.";
              };
              "Enchantments Enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable if you don't like enchantments.";
              };
              "Garbage Blocks" = lib.mkOption {
                type = lib.types.str;
                default = "dirt;sand;gravel;cobblestone;netherrack";
                description = "List of OreDict names for garbage blocks, separated by semicolons, for the Consuming enchant to eat";
              };
              Gluttony = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Whether gluttony research is enabled. 0 = Enabled, 1 = Disabled, 2 = Hardcore";
              };
              "Heretic Villager ID" = lib.mkOption {
                type = lib.types.int;
                default = 666;
              };
              "No Lust" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable to remove Luxuria aspect and related items.";
              };
              "Silverfish Drop Emerald Nuggets" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable to prevent Silverfish from dropping emerald nuggets.";
              };
              "Tag Research Items" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable to get rid of the [FM] tags in the Thaumonomicon.";
              };
              "Wrath Cage Cries Havoc" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable to let the Wrath Cage imprint on ANY non-boss mob.  May break your game or make your game Awesome.";
              };
              "Wrath Cage Enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable if you don't want players using the Wrath Cage.";
              };
              "Wrath Cage Fuel Cost" = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Cost of essentia per round of spawns in the Wrath Cage.  Raise to increase essentia costs.  Defaults to 5.  Set to 0 to remove the need to fuel the Wrath Cage.  Setting the cost above 64 is not recommended.";
              };
              "Wrath Cage Fuel Efficiency" = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Number of spawns a Wrath Cage can get per fuel cost.  Defaults to 4.  Lower to make the cage less efficient and raise to make it more efficient.";
              };
            };
          };
        };
        potions = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Blood Seal" = lib.mkOption {
                type = lib.types.int;
                default = 43;
              };
              Dragonwrack = lib.mkOption {
                type = lib.types.int;
                default = 44;
              };
            };
          };
        };
        "power converters" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "LP to Vis" = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "How much LP 0.01 Vis is worth";
              };
              "Mana to Vis" = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "How much Mana 0.01 Vis is worth";
              };
            };
          };
        };
        silly = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Spork of Doom" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "What is this?  I don't even...";
              };
            };
          };
        };
      };
    };
  };
}
