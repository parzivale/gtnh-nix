{lib, ...}: {
  loot_bonusChest_xml = lib.mkOption {
    description = "loot_bonusChest_xml configuration (./config/TooMuchLoot/loot/bonusChest.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TooMuchLoot/loot/bonusChest.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.str;
          default = "bonusChest";
        };
        loading_mode = lib.mkOption {
          type = lib.types.str;
          default = "OVERRIDE";
        };
        count_min = lib.mkOption {
          type = lib.types.int;
          default = 10;
        };
        count_max = lib.mkOption {
          type = lib.types.int;
          default = 10;
        };
        loot_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:stick";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:planks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:log";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_3 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:apple";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_4 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:bread";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_5 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:log2";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_6 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemTreetap";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_7 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:wadingBoots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_8 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:flippers";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_9 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:broadsword";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{InfiTool:{BaseDurability:427,Head:14,BaseAttack:7,ToolEXP:0L,Built:1b,HarvestLevel:4,Attack:7,RenderHead:14,ModDurability:0.0f,Handle:14,Broken:0b,Shoddy:0.0f,RenderHandle:14,Accessory:14,MiningSpeed:650,RenderAccessory:14,ToolLevel:1,Unbreaking:1,Damage:0,BonusDurability:0,TotalDurability:427,Modifiers:0},display:{Name:\"§fBronze Broadsword\"}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_10 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:pickaxe";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{InfiTool:{BaseDurability:38,Head:0,BaseAttack:2,ToolEXP:0L,HarvestLevel:0,Attack:2,RenderHead:0,ModDurability:0.0f,Handle:0,Broken:0b,Shoddy:0.0f,RenderHandle:0,Accessory:0,MiningSpeed:150,RenderAccessory:0,ToolLevel:1,Unbreaking:0,Damage:0,BonusDurability:0,TotalDurability:38,Modifiers:0},display:{Name:\"§fStarter Pickaxe\"}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_11 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:hatchet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{InfiTool:{BaseDurability:38,Head:0,BaseAttack:4,ToolEXP:0L,HarvestLevel:0,Attack:4,RenderHead:0,ModDurability:0.0f,Handle:0,Broken:0b,Shoddy:0.0f,RenderHandle:0,MiningSpeed:150,ToolLevel:1,Unbreaking:0,Damage:0,BonusDurability:0,TotalDurability:38,Modifiers:0},display:{Name:\"§fStarter Hatchet\"}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_12 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32100;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
      };
    };
  };
  loot_chest1_xml = lib.mkOption {
    description = "loot_chest1_xml configuration (./config/TooMuchLoot/loot/chest1.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TooMuchLoot/loot/chest1.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.str;
          default = "chest1";
        };
        loading_mode = lib.mkOption {
          type = lib.types.str;
          default = "OVERRIDE";
        };
        count_min = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        count_max = lib.mkOption {
          type = lib.types.int;
          default = 4;
        };
        loot_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:minecart";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:hopper_minecart";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:furnace_minecart";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_3 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chest_minecart";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_4 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:hopper";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_5 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:rail";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
            };
          };
        };
        loot_6 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:ladder";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
            };
          };
        };
        loot_7 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:bed";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_8 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:trapdoor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_9 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_bars";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
            };
          };
        };
        loot_10 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:activator_rail";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_11 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:wooden_door";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_12 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:cauldron";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_13 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:comparator";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_14 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:repeater";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_15 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:bookshelf";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_16 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:cookie";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_17 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "JABBA:barrel";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_18 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:machine.beta";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_19 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:machine.beta";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_20 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemTreetap";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_21 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:blockMachine";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_22 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "BuildCraft|Factory:tankBlock";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_23 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 18035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_24 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 18057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_25 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 18300;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_26 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 18086;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_27 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 18032;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_28 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 18305;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_29 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 18089;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_30 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 17300;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
            };
          };
        };
        loot_31 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 17032;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
            };
          };
        };
        loot_32 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 17035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
            };
          };
        };
        loot_33 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 17057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
            };
          };
        };
        loot_34 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 17304;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
            };
          };
        };
        loot_35 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:pamlemonSapling";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_36 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:pammapleSapling";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_37 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:pamoliveSapling";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_38 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:pampeppercornSapling";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_39 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:pamvanillaSapling";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_40 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "StorageDrawers:fullDrawers1";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_41 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "StorageDrawers:fullDrawers2";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_42 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "StorageDrawers:fullDrawers4";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_43 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "dreamcraft:ZincGravelOre";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_44 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:factory2";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
      };
    };
  };
  loot_chest2_xml = lib.mkOption {
    description = "loot_chest2_xml configuration (./config/TooMuchLoot/loot/chest2.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TooMuchLoot/loot/chest2.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.str;
          default = "chest2";
        };
        loading_mode = lib.mkOption {
          type = lib.types.str;
          default = "OVERRIDE";
        };
        count_min = lib.mkOption {
          type = lib.types.int;
          default = 3;
        };
        count_max = lib.mkOption {
          type = lib.types.int;
          default = 6;
        };
        loot_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 5124;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 5122;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_3 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_4 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_5 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 17054;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
            };
          };
        };
        loot_6 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11308;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
            };
          };
        };
        loot_7 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 17308;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_8 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 17880;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
            };
          };
        };
        loot_9 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11880;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
            };
          };
        };
        loot_10 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "irontank:ironTank";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_11 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:track";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 816;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{track:\"railcraft:track.speed\"}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 24;
              };
            };
          };
        };
        loot_12 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:track";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{track:\"railcraft:track.reinforced\"}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 24;
              };
            };
          };
        };
        loot_13 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:track";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{track:\"railcraft:track.speed.boost\"}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_14 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:track";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 26865;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{track:\"railcraft:track.speed.transition\"}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
            };
          };
        };
        loot_15 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:track.elevator";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
            };
          };
        };
        loot_16 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:cart.tank";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_17 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:machine.beta";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_18 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:machine.beta";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_19 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_door";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_20 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:tnt";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_21 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:clock";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_22 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:compass";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_23 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:piston";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_24 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:flint_and_steel";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_25 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:magma_cream";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_26 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:materials";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 43;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_27 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32261;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_28 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:neapolitanicecreamItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_29 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:beehives";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_30 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:beehives";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_31 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:beehives";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_32 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:beehives";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_33 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:beehives";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_34 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:beehives";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_35 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:slime.sapling";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_36 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IronChest:BlockIronChest";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_37 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "StorageDrawers:upgradeTemplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_38 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "StorageDrawers:upgradeLock";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_39 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorAlloyChestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_40 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32301;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_41 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32302;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_42 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32303;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_43 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32306;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_44 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32307;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_45 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32308;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_46 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32317;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_47 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 5602;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_48 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32721;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_49 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:machine.beta";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
            };
          };
        };
        loot_50 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:machine.beta";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_51 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:machine.beta";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
      };
    };
  };
  loot_chest3_xml = lib.mkOption {
    description = "loot_chest3_xml configuration (./config/TooMuchLoot/loot/chest3.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TooMuchLoot/loot/chest3.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.str;
          default = "chest3";
        };
        loading_mode = lib.mkOption {
          type = lib.types.str;
          default = "OVERRIDE";
        };
        count_min = lib.mkOption {
          type = lib.types.int;
          default = 4;
        };
        count_max = lib.mkOption {
          type = lib.types.int;
          default = 8;
        };
        loot_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:ghast_tear";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:blaze_rod";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:cake";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_3 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "JABBA:mover";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_4 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "dreamcraft:item.SteelBars";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_5 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:ffarm";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{FarmBlock:0}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_6 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:ffarm";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{FarmBlock:0}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_7 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:ffarm";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{FarmBlock:0}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_8 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:ffarm";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{FarmBlock:0}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_9 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:ffarm";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{FarmBlock:0}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_10 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:factory";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_11 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "EnderIO:blockTank";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_12 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "openmodularturrets:hardWallTierOne";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
            };
          };
        };
        loot_13 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "openmodularturrets:hardWallTierTwo";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
            };
          };
        };
        loot_14 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "openmodularturrets:fenceTierOne";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
            };
          };
        };
        loot_15 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "openmodularturrets:fenceTierTwo";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
            };
          };
        };
        loot_16 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "irontank:goldTank";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_17 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBootsRobe";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_18 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLeggingsRobe";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_19 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemChestplateRobe";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_20 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:blockCustomPlant";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
            };
          };
        };
        loot_21 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:blockJar";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
            };
          };
        };
        loot_22 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:flowers2";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
            };
          };
        };
        loot_23 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:materials";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_24 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:materials";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 26;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_25 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "kubatech:kubaitems";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 14;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_26 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "kubatech:kubaitems";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_27 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "kubatech:kubaitems";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 19;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_28 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:beeCombs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
            };
          };
        };
        loot_29 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:honeyDrop";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
            };
          };
        };
        loot_30 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:apiculture";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_31 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32405;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_32 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32600;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_33 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32610;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_34 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32630;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_35 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32640;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_36 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32650;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_37 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32680;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_38 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32690;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_39 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32727;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_40 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32730;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_41 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32731;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_42 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32732;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_43 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32733;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_44 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32734;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_45 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32740;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_46 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32745;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_47 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32749;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_48 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1246;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_49 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1366;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_50 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 30727;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_51 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32519;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_52 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 31066;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_53 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "ExtraUtilities:spike_base_diamond";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_54 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:frameImpregnated";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
      };
    };
  };
  loot_chest4_xml = lib.mkOption {
    description = "loot_chest4_xml configuration (./config/TooMuchLoot/loot/chest4.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TooMuchLoot/loot/chest4.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.str;
          default = "chest4";
        };
        loading_mode = lib.mkOption {
          type = lib.types.str;
          default = "OVERRIDE";
        };
        count_min = lib.mkOption {
          type = lib.types.int;
          default = 5;
        };
        count_max = lib.mkOption {
          type = lib.types.int;
          default = 10;
        };
        loot_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:brewing_stand";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:enchanting_table";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "dreamcraft:item.AluminiumBars";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_3 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "ProjRed|Transportation:projectred.transportation.pipe";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_4 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "ProjRed|Core:projectred.core.part";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 44;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_5 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:chipsets";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{T:0s}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_6 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:chipsets";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{T:1s}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_7 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:chipsets";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{T:2s}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_8 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:chipsets";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{T:3s}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_9 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "irontank:diamondTank";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_10 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "adventurebackpack:coalJetpack";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{jetpackData:{}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_11 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "adventurebackpack:copterPack";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_12 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:blockMiningPipe";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
            };
          };
        };
        loot_13 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemPartCarbonPlate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_14 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemBoat";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_15 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:materials";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_16 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Avaritia:Cosmic_Meatballs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_17 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Avaritia:Ultimate_Stew";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_18 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:golden_apple";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_19 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:alveary";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_20 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "ExtraUtilities:divisionSigil";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_21 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "MagicBees:frameOblivion";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_22 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "ExtraBees:hiveFrame.soul";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_23 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:frameProven";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_24 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32729;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_25 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32407;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_26 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32601;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_27 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32611;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_28 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32631;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_29 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32641;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_30 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32529;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_31 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2856;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
            };
          };
        };
        loot_32 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "EnderIO:itemItemConduit";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_33 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "EnderIO:itemLiquidConduit";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_34 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "EnderIO:itemMachinePart";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_35 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "EnderIO:itemRedstoneConduit";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_36 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "EnderIO:blockReinforcedObsidian";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_37 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "OpenBlocks:fan";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_38 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemSanitySoap";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_39 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "thaumicinsurgence:item.ItemSanitySoapAlpha";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_40 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "thaumicinsurgence:item.ItemSanitySoapBeta";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
      };
    };
  };
  loot_dungeonChest_xml = lib.mkOption {
    description = "loot_dungeonChest_xml configuration (./config/TooMuchLoot/loot/dungeonChest.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TooMuchLoot/loot/dungeonChest.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.str;
          default = "dungeonChest";
        };
        loading_mode = lib.mkOption {
          type = lib.types.str;
          default = "OVERRIDE";
        };
        count_min = lib.mkOption {
          type = lib.types.int;
          default = 8;
        };
        count_max = lib.mkOption {
          type = lib.types.int;
          default = 8;
        };
        loot_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:saddle";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_ingot";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:bread";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_3 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:wheat";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_4 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:gunpowder";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_5 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:string";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_6 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:bucket";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_7 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:golden_apple";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_8 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:redstone";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_9 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:record_13";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_10 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:record_cat";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_11 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:name_tag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_12 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:golden_horse_armor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_13 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_horse_armor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_14 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_horse_armor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_15 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:enchanted_book";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_16 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:record_blocks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_17 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:record_chirp";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_18 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:record_far";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_19 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:record_mall";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_20 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:record_mellohi";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_21 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:record_stal";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_22 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:record_strad";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_23 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:record_ward";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_24 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:record_11";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_25 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:record_wait";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_26 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_27 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_leggings";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_28 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_29 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_chestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_30 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_31 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_chestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_32 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_leggings";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_33 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_34 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_door";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_35 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:blaze_rod";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_36 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.steel.sword";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_37 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_38 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.plate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_39 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.legs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_40 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_41 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "OpenBlocks:technicolorGlasses";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_42 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:standardBindingAgent";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_43 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:mundanePowerCatalyst";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_44 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:mundaneLengtheningCatalyst";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_45 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:averagePowerCatalyst";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_46 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:averageLengtheningCatalyst";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_47 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:greaterPowerCatalyst";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_48 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:greaterLengtheningCatalyst";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_49 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:temple_caller";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_50 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:40b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_51 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:30b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_52 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:20b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_53 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:10b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_54 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:heartCanister";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_55 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "OpenComputers:item";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_56 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "EMT:TaintedMjolnir";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_57 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "EMT:BaseBaubles";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_58 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "openmodularturrets:disposeItemTurret";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_59 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "openmodularturrets:baseTierWood";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_60 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "openmodularturrets:leverBlock";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_61 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_62 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_63 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_64 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_65 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_66 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_67 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_68 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_69 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_70 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemThaumonomicon";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_71 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemSwordThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_72 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemPickThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_73 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemAxeThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_74 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemHoeThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_75 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemRingRunic";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_76 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_77 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_78 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_79 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_80 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_81 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_82 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemAmuletVis";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{aqua:100,terra:100,ignis:300,ordo:200,perditio:200,aer:400}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_83 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:blockCustomPlant";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_84 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:blockCustomPlant";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_85 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Automagy:baubleEnderDisjunction";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_86 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Automagy:phialExtra";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_87 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:beeDroneGE";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{MaxH:40,Health:40,IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.speciesSteadfast\",UID0:\"forestry.speciesSteadfast\",Slot:0b},1:{UID1:\"forestry.speedSlower\",UID0:\"forestry.speedSlower\",Slot:1b},2:{UID1:\"forestry.lifespanNormal\",UID0:\"forestry.lifespanNormal\",Slot:2b},3:{UID1:\"forestry.fertilityNormal\",UID0:\"forestry.fertilityNormal\",Slot:3b},4:{UID1:\"forestry.toleranceNone\",UID0:\"forestry.toleranceNone\",Slot:4b},5:{UID1:\"forestry.boolTrue\",UID0:\"forestry.boolTrue\",Slot:5b},6:{UID1:\"forestry.toleranceNone\",UID0:\"forestry.toleranceNone\",Slot:7b},7:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:8b},8:{UID1:\"forestry.boolTrue\",UID0:\"forestry.boolTrue\",Slot:9b},9:{UID1:\"forestry.flowersVanilla\",UID0:\"forestry.flowersVanilla\",Slot:10b},10:{UID1:\"forestry.floweringSlowest\",UID0:\"forestry.floweringSlowest\",Slot:11b},11:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:12b},12:{UID1:\"forestry.effectNone\",UID0:\"forestry.effectNone\",Slot:13b}]}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_88 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "ExtraUtilities:divisionSigil";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_89 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Avaritia:Ultimate_Stew";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_90 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Avaritia:Cosmic_Meatballs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_91 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:spagettiandmeatballsItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_92 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:deluxecheeseburgerItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_93 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:delightedmealItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_94 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:heartybreakfastItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_95 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:curryItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_96 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:rainbowcurryItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_97 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:supremepizzaItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_98 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:baconmushroomburgerItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_99 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:sausageinbreadItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_100 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:beefwellingtonItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_101 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:epicbaconItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_102 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "DraconicEvolution:dezilsMarshmallow";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_103 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32137;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_104 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32100;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 80;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_105 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11054;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 120;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_106 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11089;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_107 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11305;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_108 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11300;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_109 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11031;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_110 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11335;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_111 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:emerald";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_112 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8502;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_113 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8503;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_114 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8504;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_115 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8505;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_116 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8527;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_117 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8528;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_118 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2067;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_119 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2030;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_120 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 90;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_121 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 80;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_122 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11018;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_123 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11019;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_124 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11034;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 50;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_125 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11033;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_126 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11036;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_127 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11048;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_128 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11058;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_129 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11302;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_130 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11303;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_131 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11304;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 70;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_132 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11306;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_133 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11307;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_134 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11308;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_135 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11310;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_136 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11343;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_137 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11354;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_138 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11365;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_139 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11382;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
      };
    };
  };
  loot_mineshaftCorridor_xml = lib.mkOption {
    description = "loot_mineshaftCorridor_xml configuration (./config/TooMuchLoot/loot/mineshaftCorridor.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TooMuchLoot/loot/mineshaftCorridor.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.str;
          default = "mineshaftCorridor";
        };
        loading_mode = lib.mkOption {
          type = lib.types.str;
          default = "OVERRIDE";
        };
        count_min = lib.mkOption {
          type = lib.types.int;
          default = 4;
        };
        count_max = lib.mkOption {
          type = lib.types.int;
          default = 9;
        };
        loot_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_ingot";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
            };
          };
        };
        loot_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:gold_ingot";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:redstone";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
            };
          };
        };
        loot_3 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:dye";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
            };
          };
        };
        loot_4 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_5 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:coal";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_6 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:bread";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_7 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:rail";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_8 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:melon_seeds";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_9 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:pumpkin_seeds";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_10 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:saddle";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_11 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_horse_armor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_12 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:enchanted_book";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_13 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_chestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_14 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_15 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_leggings";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_16 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_17 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_chestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_18 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:blaze_rod";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_19 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemTinCanFilled";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_20 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:misc";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_21 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:plants";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_22 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:fluid.creosote.bottle";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_23 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.crowbar";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_24 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.steel.shears";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_25 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.steel.pickaxe";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_26 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.steel.axe";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_27 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:minecart";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_28 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chest_minecart";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_29 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:tnt_minecart";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_30 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:rail";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
            };
          };
        };
        loot_31 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:hopper_minecart";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_32 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:part.tie";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_33 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:fuel.coke";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_34 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:part.gear";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_35 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:cube";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_36 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:cart.tnt.wood";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_37 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:cart.work";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_38 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "OpenBlocks:technicolorGlasses";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_39 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:adventurers_diary";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_40 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:temple_caller";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_41 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:40b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_42 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:30b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_43 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:20b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_44 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:10b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 14;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_45 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "openmodularturrets:disposeItemTurret";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_46 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "openmodularturrets:baseTierWood";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_47 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "openmodularturrets:leverBlock";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_48 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8516;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_49 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2516;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_50 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_51 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_52 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_53 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_54 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_55 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_56 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_57 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_58 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_59 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemThaumonomicon";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_60 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemSwordThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_61 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemPickThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_62 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemAxeThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_63 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemHoeThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_64 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemRingRunic";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_65 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_66 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_67 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_68 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_69 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_70 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_71 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemAmuletVis";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{aqua:100,terra:100,ignis:300,ordo:200,perditio:200,aer:400}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_72 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Automagy:baubleEnderDisjunction";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_73 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Automagy:phialExtra";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_74 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "ExtraUtilities:divisionSigil";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_75 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Avaritia:Ultimate_Stew";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_76 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Avaritia:Cosmic_Meatballs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_77 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:spagettiandmeatballsItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_78 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:deluxecheeseburgerItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_79 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:delightedmealItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_80 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:heartybreakfastItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_81 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:curryItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_82 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:rainbowcurryItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_83 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:supremepizzaItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_84 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:baconmushroomburgerItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_85 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:sausageinbreadItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_86 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:beefwellingtonItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_87 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:epicbaconItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_88 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "DraconicEvolution:dezilsMarshmallow";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_89 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11054;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_90 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11089;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_91 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11305;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_92 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11300;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_93 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8503;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_94 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8504;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_95 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8505;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_96 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8527;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_97 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8528;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_98 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8502;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_99 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:emerald";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_100 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1335;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_101 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2335;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_102 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_103 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_104 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11018;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_105 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11019;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_106 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11031;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_107 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11034;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_108 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11033;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_109 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11036;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_110 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11048;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_111 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11058;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_112 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11302;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_113 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11303;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_114 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11304;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_115 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11306;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_116 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11307;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_117 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11308;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_118 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11310;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_119 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11343;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_120 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11354;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_121 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11365;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_122 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11382;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
      };
    };
  };
  loot_naturalistChest_xml = lib.mkOption {
    description = "loot_naturalistChest_xml configuration (./config/TooMuchLoot/loot/naturalistChest.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TooMuchLoot/loot/naturalistChest.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.str;
          default = "naturalistChest";
        };
        loading_mode = lib.mkOption {
          type = lib.types.str;
          default = "OVERRIDE";
        };
        count_min = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        count_max = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        loot_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:candle";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{colour:16777215}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
            };
          };
        };
        loot_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:scoop";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:propolis";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_3 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:beeCombs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
            };
          };
        };
        loot_4 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:beeCombs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
            };
          };
        };
        loot_5 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:beeCombs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_6 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:beePrincessGE";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{MaxH:20,Health:20,IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.speciesForest\",UID0:\"forestry.speciesForest\",Slot:0b},1:{UID1:\"forestry.speedSlowest\",UID0:\"forestry.speedSlowest\",Slot:1b},2:{UID1:\"forestry.lifespanShorter\",UID0:\"forestry.lifespanShorter\",Slot:2b},3:{UID1:\"forestry.fertilityHigh\",UID0:\"forestry.fertilityHigh\",Slot:3b},4:{UID1:\"forestry.toleranceNone\",UID0:\"forestry.toleranceNone\",Slot:4b},5:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:5b},6:{UID1:\"forestry.toleranceNone\",UID0:\"forestry.toleranceNone\",Slot:7b},7:{UID1:\"forestry.boolTrue\",UID0:\"forestry.boolTrue\",Slot:8b},8:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:9b},9:{UID1:\"forestry.flowersVanilla\",UID0:\"forestry.flowersVanilla\",Slot:10b},10:{UID1:\"forestry.floweringSlower\",UID0:\"forestry.floweringSlower\",Slot:11b},11:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:12b},12:{UID1:\"forestry.effectNone\",UID0:\"forestry.effectNone\",Slot:13b}]}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_7 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:beeDroneGE";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{MaxH:20,Health:20,IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.speciesCommon\",UID0:\"forestry.speciesCommon\",Slot:0b},1:{UID1:\"forestry.speedSlower\",UID0:\"forestry.speedSlower\",Slot:1b},2:{UID1:\"forestry.lifespanShorter\",UID0:\"forestry.lifespanShorter\",Slot:2b},3:{UID1:\"forestry.fertilityNormal\",UID0:\"forestry.fertilityNormal\",Slot:3b},4:{UID1:\"forestry.toleranceNone\",UID0:\"forestry.toleranceNone\",Slot:4b},5:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:5b},6:{UID1:\"forestry.toleranceNone\",UID0:\"forestry.toleranceNone\",Slot:7b},7:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:8b},8:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:9b},9:{UID1:\"forestry.flowersVanilla\",UID0:\"forestry.flowersVanilla\",Slot:10b},10:{UID1:\"forestry.floweringSlowest\",UID0:\"forestry.floweringSlowest\",Slot:11b},11:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:12b},12:{UID1:\"forestry.effectNone\",UID0:\"forestry.effectNone\",Slot:13b}]}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_8 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:beePrincessGE";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{MaxH:20,Health:20,IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.speciesMeadows\",UID0:\"forestry.speciesMeadows\",Slot:0b},1:{UID1:\"forestry.speedSlowest\",UID0:\"forestry.speedSlowest\",Slot:1b},2:{UID1:\"forestry.lifespanShorter\",UID0:\"forestry.lifespanShorter\",Slot:2b},3:{UID1:\"forestry.fertilityNormal\",UID0:\"forestry.fertilityNormal\",Slot:3b},4:{UID1:\"forestry.toleranceNone\",UID0:\"forestry.toleranceNone\",Slot:4b},5:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:5b},6:{UID1:\"forestry.toleranceNone\",UID0:\"forestry.toleranceNone\",Slot:7b},7:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:8b},8:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:9b},9:{UID1:\"forestry.flowersVanilla\",UID0:\"forestry.flowersVanilla\",Slot:10b},10:{UID1:\"forestry.floweringSlower\",UID0:\"forestry.floweringSlower\",Slot:11b},11:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:12b},12:{UID1:\"forestry.effectNone\",UID0:\"forestry.effectNone\",Slot:13b}]}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_9 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:grafter";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_10 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:sapling";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeOak\",UID0:\"forestry.treeOak\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightSmall\",UID0:\"forestry.heightSmall\",Slot:2b},3:{UID1:\"forestry.saplingsAverage\",UID0:\"forestry.saplingsAverage\",Slot:3b},4:{UID1:\"forestry.fruitApple\",UID0:\"forestry.fruitApple\",Slot:4b},5:{UID1:\"forestry.yieldLowest\",UID0:\"forestry.yieldLowest\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLowest\",UID0:\"forestry.sappinessLowest\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationFaster\",UID0:\"forestry.maturationFaster\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_11 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:sapling";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeSpruce\",UID0:\"forestry.treeSpruce\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightAverage\",UID0:\"forestry.heightAverage\",Slot:2b},3:{UID1:\"forestry.saplingsAverage\",UID0:\"forestry.saplingsAverage\",Slot:3b},4:{UID1:\"forestry.fruitNone\",UID0:\"forestry.fruitNone\",Slot:4b},5:{UID1:\"forestry.yieldLowest\",UID0:\"forestry.yieldLowest\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLowest\",UID0:\"forestry.sappinessLowest\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationFaster\",UID0:\"forestry.maturationFaster\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_12 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:sapling";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeBirch\",UID0:\"forestry.treeBirch\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightSmall\",UID0:\"forestry.heightSmall\",Slot:2b},3:{UID1:\"forestry.saplingsAverage\",UID0:\"forestry.saplingsAverage\",Slot:3b},4:{UID1:\"forestry.fruitNone\",UID0:\"forestry.fruitNone\",Slot:4b},5:{UID1:\"forestry.yieldLowest\",UID0:\"forestry.yieldLowest\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLowest\",UID0:\"forestry.sappinessLowest\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationFaster\",UID0:\"forestry.maturationFaster\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_13 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:sapling";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeLarch\",UID0:\"forestry.treeLarch\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightAverage\",UID0:\"forestry.heightAverage\",Slot:2b},3:{UID1:\"forestry.saplingsLow\",UID0:\"forestry.saplingsLow\",Slot:3b},4:{UID1:\"forestry.fruitNone\",UID0:\"forestry.fruitNone\",Slot:4b},5:{UID1:\"forestry.yieldLowest\",UID0:\"forestry.yieldLowest\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLower\",UID0:\"forestry.sappinessLower\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationAverage\",UID0:\"forestry.maturationAverage\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_14 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:sapling";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeLime\",UID0:\"forestry.treeLime\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightSmall\",UID0:\"forestry.heightSmall\",Slot:2b},3:{UID1:\"forestry.saplingsLow\",UID0:\"forestry.saplingsLow\",Slot:3b},4:{UID1:\"forestry.fruitNone\",UID0:\"forestry.fruitNone\",Slot:4b},5:{UID1:\"forestry.yieldLower\",UID0:\"forestry.yieldLower\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLower\",UID0:\"forestry.sappinessLower\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationAverage\",UID0:\"forestry.maturationAverage\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_15 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:pollenFertile";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeOak\",UID0:\"forestry.treeOak\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightSmall\",UID0:\"forestry.heightSmall\",Slot:2b},3:{UID1:\"forestry.saplingsAverage\",UID0:\"forestry.saplingsAverage\",Slot:3b},4:{UID1:\"forestry.fruitApple\",UID0:\"forestry.fruitApple\",Slot:4b},5:{UID1:\"forestry.yieldLowest\",UID0:\"forestry.yieldLowest\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLowest\",UID0:\"forestry.sappinessLowest\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationFaster\",UID0:\"forestry.maturationFaster\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_16 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:pollenFertile";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeSpruce\",UID0:\"forestry.treeSpruce\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightAverage\",UID0:\"forestry.heightAverage\",Slot:2b},3:{UID1:\"forestry.saplingsAverage\",UID0:\"forestry.saplingsAverage\",Slot:3b},4:{UID1:\"forestry.fruitNone\",UID0:\"forestry.fruitNone\",Slot:4b},5:{UID1:\"forestry.yieldLowest\",UID0:\"forestry.yieldLowest\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLowest\",UID0:\"forestry.sappinessLowest\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationFaster\",UID0:\"forestry.maturationFaster\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_17 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:pollenFertile";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeBirch\",UID0:\"forestry.treeBirch\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightSmall\",UID0:\"forestry.heightSmall\",Slot:2b},3:{UID1:\"forestry.saplingsAverage\",UID0:\"forestry.saplingsAverage\",Slot:3b},4:{UID1:\"forestry.fruitNone\",UID0:\"forestry.fruitNone\",Slot:4b},5:{UID1:\"forestry.yieldLowest\",UID0:\"forestry.yieldLowest\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLowest\",UID0:\"forestry.sappinessLowest\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationFaster\",UID0:\"forestry.maturationFaster\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_18 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:pollenFertile";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeLarch\",UID0:\"forestry.treeLarch\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightAverage\",UID0:\"forestry.heightAverage\",Slot:2b},3:{UID1:\"forestry.saplingsLow\",UID0:\"forestry.saplingsLow\",Slot:3b},4:{UID1:\"forestry.fruitNone\",UID0:\"forestry.fruitNone\",Slot:4b},5:{UID1:\"forestry.yieldLowest\",UID0:\"forestry.yieldLowest\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLower\",UID0:\"forestry.sappinessLower\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationAverage\",UID0:\"forestry.maturationAverage\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_19 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Forestry:pollenFertile";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeLime\",UID0:\"forestry.treeLime\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightSmall\",UID0:\"forestry.heightSmall\",Slot:2b},3:{UID1:\"forestry.saplingsLow\",UID0:\"forestry.saplingsLow\",Slot:3b},4:{UID1:\"forestry.fruitNone\",UID0:\"forestry.fruitNone\",Slot:4b},5:{UID1:\"forestry.yieldLower\",UID0:\"forestry.yieldLower\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLower\",UID0:\"forestry.sappinessLower\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationAverage\",UID0:\"forestry.maturationAverage\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
      };
    };
  };
  loot_pyramidDesertyChest_xml = lib.mkOption {
    description = "loot_pyramidDesertyChest_xml configuration (./config/TooMuchLoot/loot/pyramidDesertyChest.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TooMuchLoot/loot/pyramidDesertyChest.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.str;
          default = "pyramidDesertyChest";
        };
        loading_mode = lib.mkOption {
          type = lib.types.str;
          default = "OVERRIDE";
        };
        count_min = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        count_max = lib.mkOption {
          type = lib.types.int;
          default = 7;
        };
        loot_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_ingot";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
            };
          };
        };
        loot_2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:gold_ingot";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
            };
          };
        };
        loot_3 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:emerald";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_4 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:bone";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_5 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:rotten_flesh";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
            };
          };
        };
        loot_6 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:saddle";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_7 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_horse_armor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_8 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:golden_horse_armor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_9 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_horse_armor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_10 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:enchanted_book";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_11 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_12 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_chestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_13 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_leggings";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_14 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_15 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_door";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_16 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:blaze_rod";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_17 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemToolBronzeSword";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_18 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeHelmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_19 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeChestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_20 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeLegs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_21 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeBoots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_22 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.steel.sword";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_23 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_24 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.plate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_25 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.legs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_26 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_27 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:adventurers_diary";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_28 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:temple_caller";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_29 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:40b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_30 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:30b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_31 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:20b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_32 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:10b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_33 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:heartCanister";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_34 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "OpenComputers:item";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_35 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_36 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_37 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_38 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_39 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_40 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_41 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_42 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_43 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_44 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemThaumonomicon";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_45 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemSwordThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_46 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemPickThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_47 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemAxeThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_48 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemHoeThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_49 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemRingRunic";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_50 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_51 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_52 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_53 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_54 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_55 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_56 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemAmuletVis";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{aqua:100,terra:100,ignis:300,ordo:200,perditio:200,aer:400}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_57 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:blockCustomPlant";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_58 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:blockCustomPlant";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_59 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Automagy:baubleEnderDisjunction";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_60 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Automagy:phialExtra";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_61 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "ExtraUtilities:divisionSigil";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_62 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Avaritia:Ultimate_Stew";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_63 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Avaritia:Cosmic_Meatballs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_64 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:spagettiandmeatballsItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_65 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:deluxecheeseburgerItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_66 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:delightedmealItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_67 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:heartybreakfastItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_68 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:curryItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_69 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:rainbowcurryItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_70 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:supremepizzaItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_71 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:baconmushroomburgerItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_72 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:sausageinbreadItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_73 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:beefwellingtonItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_74 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:epicbaconItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_75 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "DraconicEvolution:dezilsMarshmallow";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_76 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32137;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_77 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11054;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_78 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11085;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_79 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8502;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_80 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8503;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_81 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8504;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_82 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8505;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_83 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8527;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_84 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8528;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_85 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_86 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_87 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11089;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_88 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11018;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_89 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11019;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_90 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11031;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_91 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11034;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_92 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11033;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_93 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11036;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_94 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11048;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_95 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11058;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_96 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11302;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_97 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11303;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_98 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11304;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_99 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11306;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_100 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11307;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_101 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11308;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_102 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11310;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_103 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11343;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_104 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11354;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_105 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11365;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_106 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11382;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
      };
    };
  };
  loot_pyramidJungleChest_xml = lib.mkOption {
    description = "loot_pyramidJungleChest_xml configuration (./config/TooMuchLoot/loot/pyramidJungleChest.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TooMuchLoot/loot/pyramidJungleChest.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.str;
          default = "pyramidJungleChest";
        };
        loading_mode = lib.mkOption {
          type = lib.types.str;
          default = "OVERRIDE";
        };
        count_min = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        count_max = lib.mkOption {
          type = lib.types.int;
          default = 7;
        };
        loot_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_ingot";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
            };
          };
        };
        loot_2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:gold_ingot";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
            };
          };
        };
        loot_3 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:emerald";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_4 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:bone";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_5 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:rotten_flesh";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
            };
          };
        };
        loot_6 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:saddle";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_7 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_horse_armor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_8 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:golden_horse_armor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_9 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_horse_armor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_10 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:enchanted_book";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_11 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemToolBronzeSword";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_12 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeHelmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_13 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeChestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_14 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeLegs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_15 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeBoots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_16 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_17 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_leggings";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_18 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_19 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_chestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_20 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.steel.sword";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_21 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_22 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.plate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_23 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.legs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_24 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_25 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:adventurers_diary";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_26 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:temple_caller";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_27 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:40b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_28 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:30b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_29 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:20b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_30 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:10b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_31 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:heartCanister";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_32 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "OpenComputers:item";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_33 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_34 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_35 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_36 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_37 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_38 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_39 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_40 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_41 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_42 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemThaumonomicon";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_43 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemSwordThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_44 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemPickThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_45 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemAxeThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_46 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemHoeThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_47 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemRingRunic";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_48 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_49 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_50 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_51 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_52 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_53 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_54 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemAmuletVis";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{aqua:100,terra:100,ignis:300,ordo:200,perditio:200,aer:400}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_55 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Automagy:baubleEnderDisjunction";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_56 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Automagy:phialExtra";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_57 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "ExtraUtilities:divisionSigil";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_58 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Avaritia:Ultimate_Stew";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_59 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Avaritia:Cosmic_Meatballs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_60 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:spagettiandmeatballsItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_61 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:deluxecheeseburgerItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_62 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:delightedmealItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_63 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:heartybreakfastItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_64 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:curryItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_65 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:rainbowcurryItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_66 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:supremepizzaItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_67 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:baconmushroomburgerItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_68 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:sausageinbreadItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_69 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:beefwellingtonItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_70 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "harvestcraft:epicbaconItem";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_71 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "DraconicEvolution:dezilsMarshmallow";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_72 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32008;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 64;
              };
            };
          };
        };
        loot_73 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32598;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{GT.ItemCharge:2147483647L}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_74 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11300;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_75 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8502;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_76 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8503;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_77 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8504;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_78 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8505;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_79 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8527;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_80 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8528;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_81 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_82 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_83 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11089;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_84 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11054;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_85 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11018;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_86 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11019;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_87 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11031;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_88 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11034;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_89 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11033;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_90 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11036;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_91 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11048;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_92 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11058;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_93 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11302;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_94 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11303;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_95 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11304;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_96 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11306;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_97 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11307;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_98 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11308;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_99 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11310;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_100 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11343;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_101 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11354;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_102 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11365;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_103 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11382;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
      };
    };
  };
  loot_pyramidJungleDispenser_xml = lib.mkOption {
    description = "loot_pyramidJungleDispenser_xml configuration (./config/TooMuchLoot/loot/pyramidJungleDispenser.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TooMuchLoot/loot/pyramidJungleDispenser.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.str;
          default = "pyramidJungleDispenser";
        };
        loading_mode = lib.mkOption {
          type = lib.types.str;
          default = "OVERRIDE";
        };
        count_min = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        count_max = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        loot_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:arrow";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
            };
          };
        };
        loot_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:fire_charge";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
      };
    };
  };
  loot_railcraft_workshop_xml = lib.mkOption {
    description = "loot_railcraft_workshop_xml configuration (./config/TooMuchLoot/loot/railcraft_workshop.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TooMuchLoot/loot/railcraft_workshop.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.str;
          default = "railcraft:workshop";
        };
        loading_mode = lib.mkOption {
          type = lib.types.str;
          default = "OVERRIDE";
        };
        count_min = lib.mkOption {
          type = lib.types.int;
          default = 10;
        };
        count_max = lib.mkOption {
          type = lib.types.int;
          default = 16;
        };
        loot_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:fluid.creosote.bottle";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:coal";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.crowbar";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_3 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.magnifying.glass";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_4 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.goggles";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_5 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.overalls";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_6 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:minecart";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_7 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chest_minecart";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_8 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:tnt_minecart";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_9 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:rail";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
            };
          };
        };
        loot_10 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:hopper";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_11 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:piston";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_12 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:hopper_minecart";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_13 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:part.tie";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_14 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:part.tie";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_15 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:part.rail";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 18;
              };
            };
          };
        };
        loot_16 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:part.rail";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 18;
              };
            };
          };
        };
        loot_17 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:part.rail";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 18;
              };
            };
          };
        };
        loot_18 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:part.rail";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 18;
              };
            };
          };
        };
        loot_19 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:part.rail";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 18;
              };
            };
          };
        };
        loot_20 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:fuel.coke";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_21 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:part.gear";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_22 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:cart.tnt.wood";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_23 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:cart.work";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_24 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.surveyor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_25 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.signal.tuner";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_26 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.electric.meter";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
      };
    };
  };
  loot_strongholdCorridor_xml = lib.mkOption {
    description = "loot_strongholdCorridor_xml configuration (./config/TooMuchLoot/loot/strongholdCorridor.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TooMuchLoot/loot/strongholdCorridor.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.str;
          default = "strongholdCorridor";
        };
        loading_mode = lib.mkOption {
          type = lib.types.str;
          default = "OVERRIDE";
        };
        count_min = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        count_max = lib.mkOption {
          type = lib.types.int;
          default = 4;
        };
        loot_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:ender_pearl";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_ingot";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
            };
          };
        };
        loot_3 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:gold_ingot";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_4 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:redstone";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
            };
          };
        };
        loot_5 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:bread";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_6 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:apple";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_7 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_pickaxe";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_8 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_sword";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_9 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_chestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_10 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_11 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_leggings";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_12 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_13 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_14 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_leggings";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_15 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_16 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_chestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_17 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:golden_apple";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_18 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:saddle";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_19 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_horse_armor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_20 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:golden_horse_armor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_21 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_horse_armor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_22 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:enchanted_book";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_23 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemToolBronzeSword";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_24 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeHelmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_25 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeChestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_26 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeLegs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_27 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeBoots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_28 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_29 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_chestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_30 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_leggings";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_31 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_32 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:flowers";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_33 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:flowers";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_34 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.steel.sword";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_35 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_36 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.plate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_37 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.legs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_38 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_39 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "MagicBees:frameOblivion";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 18;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_40 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:adventurers_diary";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_41 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:temple_caller";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_42 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:40b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_43 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:30b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_44 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:20b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 14;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_45 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:10b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 18;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_46 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "openmodularturrets:disposeItemTurret";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_47 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "openmodularturrets:baseTierWood";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_48 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "openmodularturrets:leverBlock";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_49 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_50 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_51 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_52 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_53 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_54 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_55 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_56 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_57 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_58 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemThaumonomicon";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_59 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemSwordThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_60 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemPickThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_61 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemAxeThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_62 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemHoeThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_63 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemRingRunic";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_64 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_65 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_66 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_67 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_68 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_69 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_70 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemAmuletVis";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{aqua:100,terra:100,ignis:300,ordo:200,perditio:200,aer:400}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_71 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Automagy:baubleEnderDisjunction";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_72 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Automagy:phialExtra";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_73 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "ExtraUtilities:divisionSigil";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_74 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_75 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_76 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11089;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_77 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11054;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_78 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11018;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_79 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11019;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_80 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11031;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_81 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11034;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_82 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11033;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_83 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11036;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_84 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11048;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_85 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11058;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_86 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11302;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_87 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11303;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_88 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11304;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_89 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11306;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_90 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11307;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_91 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11308;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_92 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11310;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_93 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11343;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_94 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11354;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_95 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11365;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_96 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11382;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
      };
    };
  };
  loot_strongholdCrossing_xml = lib.mkOption {
    description = "loot_strongholdCrossing_xml configuration (./config/TooMuchLoot/loot/strongholdCrossing.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TooMuchLoot/loot/strongholdCrossing.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.str;
          default = "strongholdCrossing";
        };
        loading_mode = lib.mkOption {
          type = lib.types.str;
          default = "OVERRIDE";
        };
        count_min = lib.mkOption {
          type = lib.types.int;
          default = 1;
        };
        count_max = lib.mkOption {
          type = lib.types.int;
          default = 5;
        };
        loot_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_ingot";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
            };
          };
        };
        loot_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:gold_ingot";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:redstone";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
            };
          };
        };
        loot_3 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:coal";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_4 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:bread";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_5 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:apple";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_6 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_pickaxe";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_7 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:enchanted_book";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_8 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_door";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_9 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemToolBronzeSword";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_10 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeHelmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_11 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeChestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_12 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeLegs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_13 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeBoots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_14 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_15 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_leggings";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_16 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_17 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_chestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_18 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:flowers";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_19 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:flowers";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_20 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.steel.sword";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_21 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_22 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.plate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_23 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.legs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_24 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_25 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:temple_caller";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_26 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:40b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_27 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:30b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_28 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:20b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 14;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_29 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:10b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 18;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_30 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_31 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_32 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_33 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_34 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_35 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_36 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_37 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_38 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_39 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemThaumonomicon";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_40 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemSwordThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_41 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemPickThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_42 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemAxeThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_43 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemHoeThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_44 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemRingRunic";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_45 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_46 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_47 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_48 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_49 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_50 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_51 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemAmuletVis";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{aqua:100,terra:100,ignis:300,ordo:200,perditio:200,aer:400}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_52 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Automagy:baubleEnderDisjunction";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_53 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Automagy:phialExtra";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_54 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "ExtraUtilities:divisionSigil";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_55 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32137;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_56 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32765;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_57 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11335;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
            };
          };
        };
        loot_58 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11305;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 45;
              };
            };
          };
        };
        loot_59 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11300;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 45;
              };
            };
          };
        };
        loot_60 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11031;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
            };
          };
        };
      };
    };
  };
  loot_strongholdLibrary_xml = lib.mkOption {
    description = "loot_strongholdLibrary_xml configuration (./config/TooMuchLoot/loot/strongholdLibrary.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TooMuchLoot/loot/strongholdLibrary.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.str;
          default = "strongholdLibrary";
        };
        loading_mode = lib.mkOption {
          type = lib.types.str;
          default = "OVERRIDE";
        };
        count_min = lib.mkOption {
          type = lib.types.int;
          default = 1;
        };
        count_max = lib.mkOption {
          type = lib.types.int;
          default = 5;
        };
        loot_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:book";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:paper";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
            };
          };
        };
        loot_2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:map";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_3 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:compass";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_4 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:enchanted_book";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
            };
          };
        };
        loot_5 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:blaze_rod";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_6 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "MagicBees:frameOblivion";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 23;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_7 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "miscutils:frameVoid";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 23;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_8 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:adventurers_diary";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_9 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:temple_caller";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_10 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:40b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_11 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:30b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_12 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:20b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 18;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_13 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:10b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 24;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_14 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "OpenComputers:item";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_15 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_16 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_17 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_18 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_19 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_20 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_21 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_22 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_23 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_24 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemLootBag";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_25 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemThaumonomicon";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_26 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemSwordThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_27 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemPickThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_28 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemAxeThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_29 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemHoeThaumium";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_30 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemRingRunic";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_31 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_32 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_33 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_34 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_35 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_36 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemBaubleBlanks";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_37 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemAmuletVis";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{aqua:100,terra:100,ignis:300,ordo:200,perditio:200,aer:400}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_38 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:blockCustomPlant";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_39 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:blockCustomPlant";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_40 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Automagy:baubleEnderDisjunction";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_41 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Automagy:phialExtra";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_42 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IguanaTweaksTConstruct:wearableBucket";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
      };
    };
  };
  loot_villageBlacksmith_xml = lib.mkOption {
    description = "loot_villageBlacksmith_xml configuration (./config/TooMuchLoot/loot/villageBlacksmith.xml)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TooMuchLoot/loot/villageBlacksmith.xml";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "xml";
        readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.str;
          default = "villageBlacksmith";
        };
        loading_mode = lib.mkOption {
          type = lib.types.str;
          default = "OVERRIDE";
        };
        count_min = lib.mkOption {
          type = lib.types.int;
          default = 4;
        };
        count_max = lib.mkOption {
          type = lib.types.int;
          default = 11;
        };
        loot_0 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_1 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_ingot";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
            };
          };
        };
        loot_2 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:gold_ingot";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_3 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:bread";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_4 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:apple";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_5 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_pickaxe";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_6 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_sword";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_7 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_chestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_8 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_9 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_leggings";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_10 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_11 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_chestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_12 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_13 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_leggings";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_14 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_15 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:chainmail_chestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_16 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:obsidian";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
            };
          };
        };
        loot_17 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:sapling";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
            };
          };
        };
        loot_18 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:saddle";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_19 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:iron_horse_armor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_20 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:golden_horse_armor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_21 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:diamond_horse_armor";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_22 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemToolBronzePickaxe";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_23 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemToolBronzeSword";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_24 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeHelmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_25 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeChestplate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_26 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeLegs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_27 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:itemArmorBronzeBoots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_28 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IC2:blockRubSapling";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_29 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:plants";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_30 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:misc";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_31 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:wadingBoots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_32 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "BiomesOPlenty:flippers";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_33 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.crowbar";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_34 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.steel.shears";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_35 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.steel.sword";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_36 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:tool.steel.axe";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_37 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.helmet";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_38 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.plate";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_39 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.legs";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_40 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:armor.steel.boots";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_41 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:fuel.coke";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_42 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:cube";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_43 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:temple_caller";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_44 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:40b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_45 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:30b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_46 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:20b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_47 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "HardcoreEnderExpansion:knowledge_note";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{pts:10b}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_48 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemResource";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_49 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:blockCustomPlant";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_50 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:blockCustomPlant";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_51 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "Automagy:phialExtra";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_52 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "IguanaTweaksTConstruct:wearableBucket";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_53 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32765;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_54 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2030;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_55 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 2067;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_56 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11031;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_57 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11305;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
            };
          };
        };
        loot_58 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11300;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
            };
          };
        };
        loot_59 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11301;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
            };
          };
        };
        loot_60 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11335;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
            };
          };
        };
        loot_61 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_62 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 16;
              };
            };
          };
        };
        loot_63 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11089;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_64 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11054;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_65 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11018;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_66 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11019;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_67 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11031;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_68 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11034;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_69 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11033;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_70 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11036;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_71 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11048;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_72 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11058;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_73 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11302;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_74 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11303;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_75 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11304;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
            };
          };
        };
        loot_76 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11306;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_77 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11307;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_78 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11308;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_79 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11310;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_80 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11343;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_81 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11354;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        loot_82 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11365;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_83 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 11382;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        loot_84 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 23032;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_85 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 27032;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_86 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 28032;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_87 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 29032;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_88 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 32100;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_89 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 20032;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_90 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 23032;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_91 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 24032;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_92 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 21032;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_93 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 22032;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_94 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 23057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_95 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 27057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_96 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 28057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_97 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 29057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_98 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 20057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_99 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 23057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_100 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 24057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_101 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 21057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_102 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 22057;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_103 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 23035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_104 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 27035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_105 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 28035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_106 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 29035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_107 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 20035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_108 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 23035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_109 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 24035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_110 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 21035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        loot_111 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.02";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 22035;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_112 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1360;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_113 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1300;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_114 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 1240;
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        loot_115 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:pickaxe";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{InfiTool:{BaseDurability:356,Head:14,HeadEXP:0L,BaseAttack:4,ToolEXP:0L,Built:1b,HarvestLevel:3,Attack:4,RenderHead:14,ModDurability:0.0f,Handle:14,Broken:0b,Shoddy:0.0f,RenderHandle:14,Accessory:14,MiningSpeed:650,RenderAccessory:14,ToolLevel:1,HarvestLevelModified:0b,Unbreaking:1,Damage:0,BonusDurability:0,TotalDurability:356,Modifiers:0},display:{Name:\"§fBronze Pickaxe\"}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_116 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:shovel";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{InfiTool:{BaseDurability:356,Head:14,BaseAttack:5,ToolEXP:0L,Built:1b,HarvestLevel:4,Attack:5,RenderHead:14,ModDurability:0.0f,Handle:14,Broken:0b,Shoddy:0.0f,RenderHandle:14,MiningSpeed:650,ToolLevel:1,Unbreaking:1,Damage:0,BonusDurability:0,TotalDurability:356,Modifiers:0},display:{Name:\"§fBronze Shovel\"}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
        loot_117 = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              item = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:broadsword";
              };
              damage = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{InfiTool:{BaseDurability:427,Head:14,BaseAttack:7,ToolEXP:0L,Built:1b,HarvestLevel:4,Attack:7,RenderHead:14,ModDurability:0.0f,Handle:14,Broken:0b,Shoddy:0.0f,RenderHandle:14,Accessory:14,MiningSpeed:650,RenderAccessory:14,ToolLevel:1,Unbreaking:1,Damage:0,BonusDurability:0,TotalDurability:427,Modifiers:0},display:{Name:\"§fBronze Broadsword\"}}";
              };
              weight = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              count_min = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              count_max = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
            };
          };
        };
      };
    };
  };
}
