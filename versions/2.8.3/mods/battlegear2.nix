{lib, ...}: {
  battlegear2 = lib.mkOption {
    description = "battlegear2 configuration (./config/battlegear2.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/battlegear2.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        coremod = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "ASM debug Mode" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Only use for advanced bug reporting when asked by a dev.";
              };
            };
          };
        };
        enchantmentsid = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BashDamage = lib.mkOption {
                type = lib.types.int;
                default = 128;
              };
              BashPower = lib.mkOption {
                type = lib.types.int;
                default = 127;
              };
              BashWeight = lib.mkOption {
                type = lib.types.int;
                default = 126;
              };
              BowCharge = lib.mkOption {
                type = lib.types.int;
                default = 132;
              };
              BowLoot = lib.mkOption {
                type = lib.types.int;
                default = 131;
              };
              ShieldRecovery = lib.mkOption {
                type = lib.types.int;
                default = 130;
              };
              ShieldUsage = lib.mkOption {
                type = lib.types.int;
                default = 129;
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Always Show Battlegear Slots" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Disabled Items" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "This will disable completely the provided item, along with their renderers and recipes including them. These should all be placed on separate lines between the provided '<' and '>'. The valid values are: heraldric, chain, quiver, dagger, waraxe, mace, spear, shield, knight.armour, mb.arrow, flagpole, bow,";
              };
              "Disabled Recipies" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "This will disable the crafting recipe for the provided item/blocks. It should be noted that this WILL NOT remove the item from the game, it will only disable the recipe. In this way the items may still be obtained through creative mode and cheats, but players will be unable to craft them. These should all be placed on separate lines between the provided '<' and '>'. The valid values are: chain, quiver, dagger, waraxe, mace, spear, shield, knight.armour, flagpole, bow, mb.arrow.holy, mb.arrow.ice, mb.arrow.explosive, mb.arrow.ender, mb.arrow.flame, mb.arrow.piercing, mb.arrow.poison, mb.arrow.mystery, mb.arrow.leech, chain.armour";
              };
              "Enable GUI Buttons" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable GUI Keys" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        rendering = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Default Sheath" = lib.mkOption {
                type = lib.types.str;
                default = "HIP";
                description = "Where sheathed items are going by default";
              };
              "Disabled Renderers" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "This will disable the special rendering for the provided item. These should all be placed on separate lines between the provided '<' and '>'. The valid values are: spear, shield, bow, quiver, flagpole,";
              };
              "Force screen components rendering" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mainhand hotbar relative horizontal position" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Change to move this bar in your gui";
              };
              "Mainhand hotbar relative vertical position" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Change to move this bar in your gui";
              };
              "Offhand hotbar relative horizontal position" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Change to move this bar in your gui";
              };
              "Offhand hotbar relative vertical position" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Change to move this bar in your gui";
              };
              "Quiver hotbar relative horizontal position" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Change to move this bar in your gui";
              };
              "Quiver hotbar relative vertical position" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Change to move this bar in your gui";
              };
              "Render arrow with bow uncharged" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Render quiver on skeleton back" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Shield bar relative horizontal position" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Change to move this bar in your gui";
              };
              "Shield bar relative vertical position" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Change to move this bar in your gui";
              };
            };
          };
        };
        server = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Update packet rate" = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "How often packets are sent over the network to update the battle inventory slots. Lower for faster updates, but more packets to deal for each client. [range: 1 ~ 20000, default: 20]";
              };
            };
          };
        };
        "skeleton customarrow spawn rate" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ender = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
              };
              explosive = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              flame = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              holy = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              ice = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
              };
              leech = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              mystery = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
              };
              piercing = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
              poison = lib.mkOption {
                type = lib.types.float;
                default = 0.1;
              };
            };
          };
        };
      };
    };
  };
}
