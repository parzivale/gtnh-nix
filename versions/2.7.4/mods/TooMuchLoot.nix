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
      __root = lib.mkOption {
        type = lib.types.str;
        default = "LootGroup";
        readOnly = true;
      };
      "@category" = lib.mkOption {
        type = lib.types.str;
        default = "bonusChest";
      };
      "@count_max" = lib.mkOption {
        type = lib.types.int;
        default = 10;
      };
      "@count_min" = lib.mkOption {
        type = lib.types.int;
        default = 10;
      };
      "@loading_mode" = lib.mkOption {
        type = lib.types.str;
        default = "OVERRIDE";
      };
      loot_0 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:stick";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_1 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:planks";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_2 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:log";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_3 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:apple";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_4 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:bread";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:log2";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_6 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemTreetap";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "BiomesOPlenty:wadingBoots";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_8 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "BiomesOPlenty:flippers";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_9 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:broadsword";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{InfiTool:{BaseDurability:427,Head:14,BaseAttack:7,ToolEXP:0L,Built:1b,HarvestLevel:4,Attack:7,RenderHead:14,ModDurability:0.0f,Handle:14,Broken:0b,Shoddy:0.0f,RenderHandle:14,Accessory:14,MiningSpeed:650,RenderAccessory:14,ToolLevel:1,Unbreaking:1,Damage:0,BonusDurability:0,TotalDurability:427,Modifiers:0},display:{Name:\"§fBronze Broadsword\"}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_10 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:pickaxe";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{InfiTool:{BaseDurability:38,Head:0,BaseAttack:2,ToolEXP:0L,HarvestLevel:0,Attack:2,RenderHead:0,ModDurability:0.0f,Handle:0,Broken:0b,Shoddy:0.0f,RenderHandle:0,Accessory:0,MiningSpeed:150,RenderAccessory:0,ToolLevel:1,Unbreaking:0,Damage:0,BonusDurability:0,TotalDurability:38,Modifiers:0},display:{Name:\"§fStarter Pickaxe\"}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_11 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:hatchet";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{InfiTool:{BaseDurability:38,Head:0,BaseAttack:4,ToolEXP:0L,HarvestLevel:0,Attack:4,RenderHead:0,ModDurability:0.0f,Handle:0,Broken:0b,Shoddy:0.0f,RenderHandle:0,MiningSpeed:150,ToolLevel:1,Unbreaking:0,Damage:0,BonusDurability:0,TotalDurability:38,Modifiers:0},display:{Name:\"§fStarter Hatchet\"}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_12 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32100;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 2;
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
      __root = lib.mkOption {
        type = lib.types.str;
        default = "LootGroup";
        readOnly = true;
      };
      "@category" = lib.mkOption {
        type = lib.types.str;
        default = "chest1";
      };
      "@count_max" = lib.mkOption {
        type = lib.types.int;
        default = 4;
      };
      "@count_min" = lib.mkOption {
        type = lib.types.int;
        default = 2;
      };
      "@loading_mode" = lib.mkOption {
        type = lib.types.str;
        default = "OVERRIDE";
      };
      loot_0 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:minecart";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_1 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:hopper_minecart";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_2 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:furnace_minecart";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_3 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chest_minecart";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_4 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:hopper";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 32;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:rail";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_6 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:ladder";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_7 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:bed";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_8 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:trapdoor";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_bars";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_10 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:activator_rail";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_11 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:wooden_door";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_12 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:cauldron";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_13 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:comparator";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_14 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:repeater";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_15 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:bookshelf";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_16 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:cookie";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_17 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "JABBA:barrel";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_18 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:machine.beta";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_19 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:machine.beta";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_20 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemTreetap";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 30;
          };
          };
        };
      };
      loot_21 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:blockMachine";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_22 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "BuildCraft|Factory:tankBlock";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_23 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 18035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_24 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 18057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_25 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 18300;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_26 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 18086;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_27 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 18032;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_28 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 18305;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 18089;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_30 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 17300;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_31 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 17032;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_32 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 17035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_33 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 17057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_34 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 17304;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_35 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:pamlemonSapling";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_36 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:pammapleSapling";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_37 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:pamoliveSapling";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_38 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:pampeppercornSapling";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_39 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:pamvanillaSapling";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_40 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "StorageDrawers:fullDrawers1";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_41 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "StorageDrawers:fullDrawers2";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_42 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "StorageDrawers:fullDrawers4";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_43 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:GravelOre";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_44 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:factory2";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
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
      __root = lib.mkOption {
        type = lib.types.str;
        default = "LootGroup";
        readOnly = true;
      };
      "@category" = lib.mkOption {
        type = lib.types.str;
        default = "chest2";
      };
      "@count_max" = lib.mkOption {
        type = lib.types.int;
        default = 6;
      };
      "@count_min" = lib.mkOption {
        type = lib.types.int;
        default = 3;
      };
      "@loading_mode" = lib.mkOption {
        type = lib.types.str;
        default = "OVERRIDE";
      };
      loot_0 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_1 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 5124;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_2 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 5122;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_3 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_4 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 17054;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_6 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11308;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_7 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 17308;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_8 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 17880;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_9 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11880;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_10 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "irontank:ironTank";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_11 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 24;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 816;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:track";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{track:\"railcraft:track.speed\"}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_12 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 24;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:track";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{track:\"railcraft:track.reinforced\"}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_13 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:track";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{track:\"railcraft:track.speed.boost\"}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_14 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 26865;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:track";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{track:\"railcraft:track.speed.transition\"}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_15 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:track.elevator";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_16 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:cart.tank";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_17 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:machine.beta";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_18 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:machine.beta";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_19 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_door";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_20 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:tnt";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_21 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:clock";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_22 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:compass";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_23 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:piston";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_24 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:flint_and_steel";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_25 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:magma_cream";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_26 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 43;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:materials";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_27 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32261;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_28 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:neapolitanicecreamItem";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:beehives";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_30 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:beehives";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_31 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:beehives";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_32 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:beehives";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_33 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:beehives";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_34 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:beehives";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_35 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:slime.sapling";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_36 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IronChest:BlockIronChest";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_37 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "StorageDrawers:upgradeTemplate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_38 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "StorageDrawers:upgradeLock";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_39 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorAlloyChestplate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_40 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32301;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_41 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32302;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_42 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32303;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_43 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32306;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_44 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32307;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_45 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32308;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_46 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32317;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_47 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 5602;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_48 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32721;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_49 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:machine.beta";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_50 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:machine.beta";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_51 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:machine.beta";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
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
      __root = lib.mkOption {
        type = lib.types.str;
        default = "LootGroup";
        readOnly = true;
      };
      "@category" = lib.mkOption {
        type = lib.types.str;
        default = "chest3";
      };
      "@count_max" = lib.mkOption {
        type = lib.types.int;
        default = 8;
      };
      "@count_min" = lib.mkOption {
        type = lib.types.int;
        default = 4;
      };
      "@loading_mode" = lib.mkOption {
        type = lib.types.str;
        default = "OVERRIDE";
      };
      loot_0 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:ghast_tear";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_1 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:blaze_rod";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_2 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:cake";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 30;
          };
          };
        };
      };
      loot_3 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "JABBA:mover";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_4 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "dreamcraft:item.SteelBars";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_5 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:ffarm";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{FarmBlock:0}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:ffarm";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{FarmBlock:0}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_7 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:ffarm";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{FarmBlock:0}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_8 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:ffarm";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{FarmBlock:0}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:ffarm";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{FarmBlock:0}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:factory";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_11 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "EnderIO:blockTank";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_12 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "openmodularturrets:hardWallTierOne";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_13 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "openmodularturrets:hardWallTierTwo";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_14 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "openmodularturrets:fenceTierOne";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_15 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "openmodularturrets:fenceTierTwo";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_16 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "irontank:goldTank";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_17 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBootsRobe";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_18 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLeggingsRobe";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_19 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemChestplateRobe";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_20 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:blockCustomPlant";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_21 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:blockJar";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_22 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "BiomesOPlenty:flowers2";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_23 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:materials";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_24 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 26;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:materials";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_25 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 14;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "kubatech:kubaitems";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_26 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "kubatech:kubaitems";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_27 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 19;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "kubatech:kubaitems";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_28 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:beeCombs";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 32;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:honeyDrop";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_30 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:apiculture";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_31 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32405;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32600;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32610;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32630;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32640;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_36 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32650;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_37 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32680;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_38 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32690;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_39 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32727;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_40 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32730;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_41 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32731;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_42 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32732;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_43 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32733;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_44 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32734;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_45 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32740;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_46 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32745;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_47 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32749;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_48 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1246;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_49 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1366;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_50 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 30727;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_51 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32519;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_52 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 31066;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_53 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "ExtraUtilities:spike_base_diamond";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_54 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:frameImpregnated";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
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
      __root = lib.mkOption {
        type = lib.types.str;
        default = "LootGroup";
        readOnly = true;
      };
      "@category" = lib.mkOption {
        type = lib.types.str;
        default = "chest4";
      };
      "@count_max" = lib.mkOption {
        type = lib.types.int;
        default = 10;
      };
      "@count_min" = lib.mkOption {
        type = lib.types.int;
        default = 5;
      };
      "@loading_mode" = lib.mkOption {
        type = lib.types.str;
        default = "OVERRIDE";
      };
      loot_0 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:brewing_stand";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:enchanting_table";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "dreamcraft:item.AluminiumBars";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_3 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "ProjRed|Transportation:projectred.transportation.pipe";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_4 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 44;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "ProjRed|Core:projectred.core.part";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_5 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:chipsets";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{T:0s}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_6 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:chipsets";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{T:1s}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:chipsets";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{T:2s}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_8 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:chipsets";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{T:3s}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_9 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "irontank:diamondTank";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_10 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "adventurebackpack:coalJetpack";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{jetpackData:{}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_11 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "adventurebackpack:copterPack";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_12 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 32;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:blockMiningPipe";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_13 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemPartCarbonPlate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_14 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemBoat";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_15 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:materials";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_16 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Avaritia:Cosmic_Meatballs";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_17 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Avaritia:Ultimate_Stew";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_18 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:golden_apple";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_19 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:alveary";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_20 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "ExtraUtilities:divisionSigil";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_21 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "MagicBees:frameOblivion";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_22 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "ExtraBees:hiveFrame.soul";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:frameProven";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_24 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32729;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_25 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32407;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_26 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32601;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_27 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32611;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_28 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32631;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_29 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32641;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_30 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32529;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_31 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 32;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 32;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2856;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_32 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "EnderIO:itemItemConduit";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_33 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "EnderIO:itemLiquidConduit";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_34 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "EnderIO:itemMachinePart";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_35 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "EnderIO:itemRedstoneConduit";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_36 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "EnderIO:blockReinforcedObsidian";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_37 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "OpenBlocks:fan";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_38 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemSanitySoap";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_39 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "thaumicinsurgence:item.ItemSanitySoapAlpha";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_40 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "thaumicinsurgence:item.ItemSanitySoapBeta";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
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
      __root = lib.mkOption {
        type = lib.types.str;
        default = "LootGroup";
        readOnly = true;
      };
      "@category" = lib.mkOption {
        type = lib.types.str;
        default = "dungeonChest";
      };
      "@count_max" = lib.mkOption {
        type = lib.types.int;
        default = 8;
      };
      "@count_min" = lib.mkOption {
        type = lib.types.int;
        default = 8;
      };
      "@loading_mode" = lib.mkOption {
        type = lib.types.str;
        default = "OVERRIDE";
      };
      loot_0 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:saddle";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_1 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_ingot";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_2 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:bread";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_3 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:wheat";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_4 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:gunpowder";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:string";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_6 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:bucket";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:golden_apple";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:redstone";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_9 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:record_13";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_10 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:record_cat";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_11 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:name_tag";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_12 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:golden_horse_armor";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_horse_armor";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_14 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_horse_armor";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:enchanted_book";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:record_blocks";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_17 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:record_chirp";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_18 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:record_far";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_19 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:record_mall";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_20 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:record_mellohi";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_21 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:record_stal";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_22 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:record_strad";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_23 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:record_ward";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_24 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:record_11";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_25 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:record_wait";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_26 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_helmet";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_leggings";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_boots";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          };
        };
      };
      loot_29 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_chestplate";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_helmet";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_chestplate";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_leggings";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_boots";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_door";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:blaze_rod";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_36 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.steel.sword";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_37 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.helmet";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_38 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.plate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_39 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.legs";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_40 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.boots";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_41 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "OpenBlocks:technicolorGlasses";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:standardBindingAgent";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          };
        };
      };
      loot_43 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:mundanePowerCatalyst";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_44 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:mundaneLengtheningCatalyst";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_45 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:averagePowerCatalyst";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:averageLengtheningCatalyst";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:greaterPowerCatalyst";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:greaterLengtheningCatalyst";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:temple_caller";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:40b}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:30b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          };
        };
      };
      loot_52 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:20b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          };
        };
      };
      loot_53 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:10b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          };
        };
      };
      loot_54 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:heartCanister";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_55 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "OpenComputers:item";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_56 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "EMT:TaintedMjolnir";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_57 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "EMT:BaseBaubles";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_58 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "openmodularturrets:disposeItemTurret";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_59 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "openmodularturrets:baseTierWood";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_60 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "openmodularturrets:leverBlock";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_61 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_62 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_63 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_64 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemThaumonomicon";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemSwordThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemPickThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemAxeThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemHoeThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemRingRunic";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemAmuletVis";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{aqua:100,terra:100,ignis:300,ordo:200,perditio:200,aer:400}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:blockCustomPlant";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:blockCustomPlant";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Automagy:baubleEnderDisjunction";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Automagy:phialExtra";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:beeDroneGE";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{MaxH:40,Health:40,IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.speciesSteadfast\",UID0:\"forestry.speciesSteadfast\",Slot:0b},1:{UID1:\"forestry.speedSlower\",UID0:\"forestry.speedSlower\",Slot:1b},2:{UID1:\"forestry.lifespanNormal\",UID0:\"forestry.lifespanNormal\",Slot:2b},3:{UID1:\"forestry.fertilityNormal\",UID0:\"forestry.fertilityNormal\",Slot:3b},4:{UID1:\"forestry.toleranceNone\",UID0:\"forestry.toleranceNone\",Slot:4b},5:{UID1:\"forestry.boolTrue\",UID0:\"forestry.boolTrue\",Slot:5b},6:{UID1:\"forestry.toleranceNone\",UID0:\"forestry.toleranceNone\",Slot:7b},7:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:8b},8:{UID1:\"forestry.boolTrue\",UID0:\"forestry.boolTrue\",Slot:9b},9:{UID1:\"forestry.flowersVanilla\",UID0:\"forestry.flowersVanilla\",Slot:10b},10:{UID1:\"forestry.floweringSlowest\",UID0:\"forestry.floweringSlowest\",Slot:11b},11:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:12b},12:{UID1:\"forestry.effectNone\",UID0:\"forestry.effectNone\",Slot:13b}]}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_88 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "ExtraUtilities:divisionSigil";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Avaritia:Ultimate_Stew";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Avaritia:Cosmic_Meatballs";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          };
        };
      };
      loot_91 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:spagettiandmeatballsItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_92 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:deluxecheeseburgerItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_93 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:delightedmealItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_94 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:heartybreakfastItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_95 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:curryItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_96 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:rainbowcurryItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_97 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:supremepizzaItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_98 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:baconmushroomburgerItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_99 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:sausageinbreadItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_100 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:beefwellingtonItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_101 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:epicbaconItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_102 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "DraconicEvolution:dezilsMarshmallow";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32137;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_104 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32100;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 80;
          };
          };
        };
      };
      loot_105 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11054;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 120;
          };
          };
        };
      };
      loot_106 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11089;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 30;
          };
          };
        };
      };
      loot_107 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11305;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 60;
          };
          };
        };
      };
      loot_108 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11300;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 60;
          };
          };
        };
      };
      loot_109 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11031;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 60;
          };
          };
        };
      };
      loot_110 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11335;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_111 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:emerald";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_112 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8502;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_113 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8503;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_114 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8504;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_115 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8505;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_116 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8527;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 40;
          };
          };
        };
      };
      loot_117 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8528;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 40;
          };
          };
        };
      };
      loot_118 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2067;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 40;
          };
          };
        };
      };
      loot_119 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2030;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 40;
          };
          };
        };
      };
      loot_120 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 90;
          };
          };
        };
      };
      loot_121 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 80;
          };
          };
        };
      };
      loot_122 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11018;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 100;
          };
          };
        };
      };
      loot_123 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11019;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_124 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11034;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 50;
          };
          };
        };
      };
      loot_125 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11033;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_126 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11036;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 40;
          };
          };
        };
      };
      loot_127 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11048;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 30;
          };
          };
        };
      };
      loot_128 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11058;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_129 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11302;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 30;
          };
          };
        };
      };
      loot_130 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11303;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_131 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11304;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 70;
          };
          };
        };
      };
      loot_132 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11306;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_133 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11307;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_134 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11308;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 40;
          };
          };
        };
      };
      loot_135 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11310;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_136 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11343;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_137 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11354;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 40;
          };
          };
        };
      };
      loot_138 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11365;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_139 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11382;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
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
      __root = lib.mkOption {
        type = lib.types.str;
        default = "LootGroup";
        readOnly = true;
      };
      "@category" = lib.mkOption {
        type = lib.types.str;
        default = "mineshaftCorridor";
      };
      "@count_max" = lib.mkOption {
        type = lib.types.int;
        default = 9;
      };
      "@count_min" = lib.mkOption {
        type = lib.types.int;
        default = 4;
      };
      "@loading_mode" = lib.mkOption {
        type = lib.types.str;
        default = "OVERRIDE";
      };
      loot_0 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_ingot";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_1 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:gold_ingot";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:redstone";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:dye";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_4 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:coal";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_6 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:bread";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:rail";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:melon_seeds";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_9 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:pumpkin_seeds";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_10 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:saddle";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_horse_armor";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:enchanted_book";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_chestplate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_14 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_helmet";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_leggings";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          };
        };
      };
      loot_16 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_boots";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_chestplate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          };
        };
      };
      loot_18 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:blaze_rod";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_19 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemTinCanFilled";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          };
        };
      };
      loot_20 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "BiomesOPlenty:misc";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_21 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "BiomesOPlenty:plants";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_22 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:fluid.creosote.bottle";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_23 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.crowbar";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_24 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.steel.shears";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_25 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.steel.pickaxe";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_26 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.steel.axe";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_27 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:minecart";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_28 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chest_minecart";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_29 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:tnt_minecart";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_30 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 32;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:rail";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 30;
          };
          };
        };
      };
      loot_31 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:hopper_minecart";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_32 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:part.tie";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_33 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:fuel.coke";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_34 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:part.gear";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_35 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:cube";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_36 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:cart.tnt.wood";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_37 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:cart.work";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          };
        };
      };
      loot_38 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "OpenBlocks:technicolorGlasses";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:adventurers_diary";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_40 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:temple_caller";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:40b}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:30b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          };
        };
      };
      loot_43 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:20b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_44 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:10b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 14;
          };
          };
        };
      };
      loot_45 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "openmodularturrets:disposeItemTurret";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_46 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "openmodularturrets:baseTierWood";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_47 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "openmodularturrets:leverBlock";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_48 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8516;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          };
        };
      };
      loot_49 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2516;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          };
        };
      };
      loot_50 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_52 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_53 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_55 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_56 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemThaumonomicon";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemSwordThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemPickThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemAxeThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemHoeThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemRingRunic";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemAmuletVis";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{aqua:100,terra:100,ignis:300,ordo:200,perditio:200,aer:400}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Automagy:baubleEnderDisjunction";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Automagy:phialExtra";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "ExtraUtilities:divisionSigil";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Avaritia:Ultimate_Stew";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_76 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Avaritia:Cosmic_Meatballs";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_77 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:spagettiandmeatballsItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_78 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:deluxecheeseburgerItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_79 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:delightedmealItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_80 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:heartybreakfastItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_81 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:curryItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_82 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:rainbowcurryItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_83 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:supremepizzaItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_84 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:baconmushroomburgerItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_85 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:sausageinbreadItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_86 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:beefwellingtonItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_87 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:epicbaconItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_88 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "DraconicEvolution:dezilsMarshmallow";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11054;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          };
        };
      };
      loot_90 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11089;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11305;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          };
        };
      };
      loot_92 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11300;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          };
        };
      };
      loot_93 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8503;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8504;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          };
        };
      };
      loot_95 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8505;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8527;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8528;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8502;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:emerald";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          };
        };
      };
      loot_100 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1335;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          };
        };
      };
      loot_101 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2335;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          };
        };
      };
      loot_102 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          };
        };
      };
      loot_103 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11018;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_105 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11019;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11031;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_107 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11034;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_108 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11033;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11036;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11048;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11058;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11302;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11303;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11304;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          };
        };
      };
      loot_115 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11306;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11307;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11308;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_118 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11310;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11343;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          };
        };
      };
      loot_120 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11354;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_121 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11365;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11382;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 1;
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
      __root = lib.mkOption {
        type = lib.types.str;
        default = "LootGroup";
        readOnly = true;
      };
      "@category" = lib.mkOption {
        type = lib.types.str;
        default = "naturalistChest";
      };
      "@count_max" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "@count_min" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "@loading_mode" = lib.mkOption {
        type = lib.types.str;
        default = "OVERRIDE";
      };
      loot_0 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:candle";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{colour:16777215}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:scoop";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          };
        };
      };
      loot_2 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:propolis";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          };
        };
      };
      loot_3 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:beeCombs";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          };
        };
      };
      loot_4 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:beeCombs";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          };
        };
      };
      loot_5 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:beeCombs";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:beePrincessGE";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{MaxH:20,Health:20,IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.speciesForest\",UID0:\"forestry.speciesForest\",Slot:0b},1:{UID1:\"forestry.speedSlowest\",UID0:\"forestry.speedSlowest\",Slot:1b},2:{UID1:\"forestry.lifespanShorter\",UID0:\"forestry.lifespanShorter\",Slot:2b},3:{UID1:\"forestry.fertilityHigh\",UID0:\"forestry.fertilityHigh\",Slot:3b},4:{UID1:\"forestry.toleranceNone\",UID0:\"forestry.toleranceNone\",Slot:4b},5:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:5b},6:{UID1:\"forestry.toleranceNone\",UID0:\"forestry.toleranceNone\",Slot:7b},7:{UID1:\"forestry.boolTrue\",UID0:\"forestry.boolTrue\",Slot:8b},8:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:9b},9:{UID1:\"forestry.flowersVanilla\",UID0:\"forestry.flowersVanilla\",Slot:10b},10:{UID1:\"forestry.floweringSlower\",UID0:\"forestry.floweringSlower\",Slot:11b},11:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:12b},12:{UID1:\"forestry.effectNone\",UID0:\"forestry.effectNone\",Slot:13b}]}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_7 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:beeDroneGE";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{MaxH:20,Health:20,IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.speciesCommon\",UID0:\"forestry.speciesCommon\",Slot:0b},1:{UID1:\"forestry.speedSlower\",UID0:\"forestry.speedSlower\",Slot:1b},2:{UID1:\"forestry.lifespanShorter\",UID0:\"forestry.lifespanShorter\",Slot:2b},3:{UID1:\"forestry.fertilityNormal\",UID0:\"forestry.fertilityNormal\",Slot:3b},4:{UID1:\"forestry.toleranceNone\",UID0:\"forestry.toleranceNone\",Slot:4b},5:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:5b},6:{UID1:\"forestry.toleranceNone\",UID0:\"forestry.toleranceNone\",Slot:7b},7:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:8b},8:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:9b},9:{UID1:\"forestry.flowersVanilla\",UID0:\"forestry.flowersVanilla\",Slot:10b},10:{UID1:\"forestry.floweringSlowest\",UID0:\"forestry.floweringSlowest\",Slot:11b},11:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:12b},12:{UID1:\"forestry.effectNone\",UID0:\"forestry.effectNone\",Slot:13b}]}}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:beePrincessGE";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{MaxH:20,Health:20,IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.speciesMeadows\",UID0:\"forestry.speciesMeadows\",Slot:0b},1:{UID1:\"forestry.speedSlowest\",UID0:\"forestry.speedSlowest\",Slot:1b},2:{UID1:\"forestry.lifespanShorter\",UID0:\"forestry.lifespanShorter\",Slot:2b},3:{UID1:\"forestry.fertilityNormal\",UID0:\"forestry.fertilityNormal\",Slot:3b},4:{UID1:\"forestry.toleranceNone\",UID0:\"forestry.toleranceNone\",Slot:4b},5:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:5b},6:{UID1:\"forestry.toleranceNone\",UID0:\"forestry.toleranceNone\",Slot:7b},7:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:8b},8:{UID1:\"forestry.boolFalse\",UID0:\"forestry.boolFalse\",Slot:9b},9:{UID1:\"forestry.flowersVanilla\",UID0:\"forestry.flowersVanilla\",Slot:10b},10:{UID1:\"forestry.floweringSlower\",UID0:\"forestry.floweringSlower\",Slot:11b},11:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:12b},12:{UID1:\"forestry.effectNone\",UID0:\"forestry.effectNone\",Slot:13b}]}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_9 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:grafter";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          };
        };
      };
      loot_10 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:sapling";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeOak\",UID0:\"forestry.treeOak\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightSmall\",UID0:\"forestry.heightSmall\",Slot:2b},3:{UID1:\"forestry.saplingsAverage\",UID0:\"forestry.saplingsAverage\",Slot:3b},4:{UID1:\"forestry.fruitApple\",UID0:\"forestry.fruitApple\",Slot:4b},5:{UID1:\"forestry.yieldLowest\",UID0:\"forestry.yieldLowest\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLowest\",UID0:\"forestry.sappinessLowest\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationFaster\",UID0:\"forestry.maturationFaster\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          };
        };
      };
      loot_11 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:sapling";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeSpruce\",UID0:\"forestry.treeSpruce\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightAverage\",UID0:\"forestry.heightAverage\",Slot:2b},3:{UID1:\"forestry.saplingsAverage\",UID0:\"forestry.saplingsAverage\",Slot:3b},4:{UID1:\"forestry.fruitNone\",UID0:\"forestry.fruitNone\",Slot:4b},5:{UID1:\"forestry.yieldLowest\",UID0:\"forestry.yieldLowest\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLowest\",UID0:\"forestry.sappinessLowest\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationFaster\",UID0:\"forestry.maturationFaster\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          };
        };
      };
      loot_12 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:sapling";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeBirch\",UID0:\"forestry.treeBirch\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightSmall\",UID0:\"forestry.heightSmall\",Slot:2b},3:{UID1:\"forestry.saplingsAverage\",UID0:\"forestry.saplingsAverage\",Slot:3b},4:{UID1:\"forestry.fruitNone\",UID0:\"forestry.fruitNone\",Slot:4b},5:{UID1:\"forestry.yieldLowest\",UID0:\"forestry.yieldLowest\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLowest\",UID0:\"forestry.sappinessLowest\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationFaster\",UID0:\"forestry.maturationFaster\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          };
        };
      };
      loot_13 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:sapling";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeLarch\",UID0:\"forestry.treeLarch\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightAverage\",UID0:\"forestry.heightAverage\",Slot:2b},3:{UID1:\"forestry.saplingsLow\",UID0:\"forestry.saplingsLow\",Slot:3b},4:{UID1:\"forestry.fruitNone\",UID0:\"forestry.fruitNone\",Slot:4b},5:{UID1:\"forestry.yieldLowest\",UID0:\"forestry.yieldLowest\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLower\",UID0:\"forestry.sappinessLower\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationAverage\",UID0:\"forestry.maturationAverage\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_14 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:sapling";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeLime\",UID0:\"forestry.treeLime\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightSmall\",UID0:\"forestry.heightSmall\",Slot:2b},3:{UID1:\"forestry.saplingsLow\",UID0:\"forestry.saplingsLow\",Slot:3b},4:{UID1:\"forestry.fruitNone\",UID0:\"forestry.fruitNone\",Slot:4b},5:{UID1:\"forestry.yieldLower\",UID0:\"forestry.yieldLower\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLower\",UID0:\"forestry.sappinessLower\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationAverage\",UID0:\"forestry.maturationAverage\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_15 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:pollenFertile";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeOak\",UID0:\"forestry.treeOak\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightSmall\",UID0:\"forestry.heightSmall\",Slot:2b},3:{UID1:\"forestry.saplingsAverage\",UID0:\"forestry.saplingsAverage\",Slot:3b},4:{UID1:\"forestry.fruitApple\",UID0:\"forestry.fruitApple\",Slot:4b},5:{UID1:\"forestry.yieldLowest\",UID0:\"forestry.yieldLowest\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLowest\",UID0:\"forestry.sappinessLowest\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationFaster\",UID0:\"forestry.maturationFaster\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_16 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:pollenFertile";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeSpruce\",UID0:\"forestry.treeSpruce\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightAverage\",UID0:\"forestry.heightAverage\",Slot:2b},3:{UID1:\"forestry.saplingsAverage\",UID0:\"forestry.saplingsAverage\",Slot:3b},4:{UID1:\"forestry.fruitNone\",UID0:\"forestry.fruitNone\",Slot:4b},5:{UID1:\"forestry.yieldLowest\",UID0:\"forestry.yieldLowest\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLowest\",UID0:\"forestry.sappinessLowest\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationFaster\",UID0:\"forestry.maturationFaster\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:pollenFertile";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeBirch\",UID0:\"forestry.treeBirch\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightSmall\",UID0:\"forestry.heightSmall\",Slot:2b},3:{UID1:\"forestry.saplingsAverage\",UID0:\"forestry.saplingsAverage\",Slot:3b},4:{UID1:\"forestry.fruitNone\",UID0:\"forestry.fruitNone\",Slot:4b},5:{UID1:\"forestry.yieldLowest\",UID0:\"forestry.yieldLowest\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLowest\",UID0:\"forestry.sappinessLowest\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationFaster\",UID0:\"forestry.maturationFaster\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_18 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:pollenFertile";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeLarch\",UID0:\"forestry.treeLarch\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightAverage\",UID0:\"forestry.heightAverage\",Slot:2b},3:{UID1:\"forestry.saplingsLow\",UID0:\"forestry.saplingsLow\",Slot:3b},4:{UID1:\"forestry.fruitNone\",UID0:\"forestry.fruitNone\",Slot:4b},5:{UID1:\"forestry.yieldLowest\",UID0:\"forestry.yieldLowest\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLower\",UID0:\"forestry.sappinessLower\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationAverage\",UID0:\"forestry.maturationAverage\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Forestry:pollenFertile";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{IsAnalyzed:0b,Genome:{Chromosomes:[0:{UID1:\"forestry.treeLime\",UID0:\"forestry.treeLime\",Slot:0b},1:{UID1:\"forestry.growthLightlevel\",UID0:\"forestry.growthLightlevel\",Slot:1b},2:{UID1:\"forestry.heightSmall\",UID0:\"forestry.heightSmall\",Slot:2b},3:{UID1:\"forestry.saplingsLow\",UID0:\"forestry.saplingsLow\",Slot:3b},4:{UID1:\"forestry.fruitNone\",UID0:\"forestry.fruitNone\",Slot:4b},5:{UID1:\"forestry.yieldLower\",UID0:\"forestry.yieldLower\",Slot:5b},6:{UID1:\"forestry.plantTypeNone\",UID0:\"forestry.plantTypeNone\",Slot:6b},7:{UID1:\"forestry.sappinessLower\",UID0:\"forestry.sappinessLower\",Slot:7b},8:{UID1:\"forestry.territoryAverage\",UID0:\"forestry.territoryAverage\",Slot:8b},9:{UID1:\"forestry.leavesNone\",UID0:\"forestry.leavesNone\",Slot:9b},10:{UID1:\"forestry.maturationAverage\",UID0:\"forestry.maturationAverage\",Slot:10b},11:{UID1:\"forestry.i1d\",UID0:\"forestry.i1d\",Slot:11b},12:{UID1:\"forestry.fireproofFalse\",UID0:\"forestry.fireproofFalse\",Slot:12b}]}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
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
      __root = lib.mkOption {
        type = lib.types.str;
        default = "LootGroup";
        readOnly = true;
      };
      "@category" = lib.mkOption {
        type = lib.types.str;
        default = "pyramidDesertyChest";
      };
      "@count_max" = lib.mkOption {
        type = lib.types.int;
        default = 7;
      };
      "@count_min" = lib.mkOption {
        type = lib.types.int;
        default = 2;
      };
      "@loading_mode" = lib.mkOption {
        type = lib.types.str;
        default = "OVERRIDE";
      };
      loot_0 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_ingot";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_2 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:gold_ingot";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_3 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:emerald";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:bone";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_5 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:rotten_flesh";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:saddle";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_horse_armor";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:golden_horse_armor";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_horse_armor";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:enchanted_book";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_helmet";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_chestplate";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_leggings";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_boots";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_door";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:blaze_rod";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_17 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemToolBronzeSword";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeHelmet";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeChestplate";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeLegs";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_21 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeBoots";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_22 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.steel.sword";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_23 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.helmet";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_24 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.plate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_25 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.legs";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_26 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.boots";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_27 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:adventurers_diary";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_28 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:temple_caller";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:40b}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:30b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          };
        };
      };
      loot_31 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:20b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          };
        };
      };
      loot_32 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:10b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          };
        };
      };
      loot_33 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:heartCanister";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "OpenComputers:item";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_35 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_36 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_37 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_38 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_39 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_40 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_41 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_42 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_43 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemThaumonomicon";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemSwordThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemPickThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemAxeThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemHoeThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemRingRunic";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemAmuletVis";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{aqua:100,terra:100,ignis:300,ordo:200,perditio:200,aer:400}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:blockCustomPlant";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_58 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:blockCustomPlant";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_59 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Automagy:baubleEnderDisjunction";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Automagy:phialExtra";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "ExtraUtilities:divisionSigil";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_62 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Avaritia:Ultimate_Stew";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_63 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Avaritia:Cosmic_Meatballs";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_64 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:spagettiandmeatballsItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_65 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:deluxecheeseburgerItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_66 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:delightedmealItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_67 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:heartybreakfastItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_68 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:curryItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_69 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:rainbowcurryItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_70 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:supremepizzaItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_71 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:baconmushroomburgerItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_72 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:sausageinbreadItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_73 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:beefwellingtonItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_74 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:epicbaconItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_75 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "DraconicEvolution:dezilsMarshmallow";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32137;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11054;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          };
        };
      };
      loot_78 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11085;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8502;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          };
        };
      };
      loot_80 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8503;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8504;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          };
        };
      };
      loot_82 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8505;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8527;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8528;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          };
        };
      };
      loot_86 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11089;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_88 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11018;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_89 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11019;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11031;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11034;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_92 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11033;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11036;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11048;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11058;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11302;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11303;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11304;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          };
        };
      };
      loot_99 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11306;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11307;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11308;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11310;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11343;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          };
        };
      };
      loot_104 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11354;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_105 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11365;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11382;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 1;
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
      __root = lib.mkOption {
        type = lib.types.str;
        default = "LootGroup";
        readOnly = true;
      };
      "@category" = lib.mkOption {
        type = lib.types.str;
        default = "pyramidJungleChest";
      };
      "@count_max" = lib.mkOption {
        type = lib.types.int;
        default = 7;
      };
      "@count_min" = lib.mkOption {
        type = lib.types.int;
        default = 2;
      };
      "@loading_mode" = lib.mkOption {
        type = lib.types.str;
        default = "OVERRIDE";
      };
      loot_0 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_ingot";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_2 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:gold_ingot";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_3 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:emerald";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:bone";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_5 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:rotten_flesh";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:saddle";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_horse_armor";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:golden_horse_armor";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_horse_armor";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:enchanted_book";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemToolBronzeSword";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeHelmet";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeChestplate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_14 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeLegs";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_15 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeBoots";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_helmet";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_leggings";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          };
        };
      };
      loot_18 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_boots";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_chestplate";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.steel.sword";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_21 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.helmet";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_22 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.plate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_23 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.legs";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_24 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.boots";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_25 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:adventurers_diary";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_26 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:temple_caller";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:40b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_28 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:30b}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:20b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          };
        };
      };
      loot_30 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:10b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          };
        };
      };
      loot_31 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:heartCanister";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "OpenComputers:item";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_33 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_34 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_35 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_36 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_37 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_38 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_39 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_40 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_41 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemThaumonomicon";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemSwordThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemPickThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemAxeThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemHoeThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemRingRunic";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemAmuletVis";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{aqua:100,terra:100,ignis:300,ordo:200,perditio:200,aer:400}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Automagy:baubleEnderDisjunction";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Automagy:phialExtra";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "ExtraUtilities:divisionSigil";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Avaritia:Ultimate_Stew";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_59 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Avaritia:Cosmic_Meatballs";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_60 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:spagettiandmeatballsItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_61 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:deluxecheeseburgerItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_62 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:delightedmealItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_63 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:heartybreakfastItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_64 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:curryItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_65 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:rainbowcurryItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_66 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:supremepizzaItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_67 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:baconmushroomburgerItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_68 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:sausageinbreadItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_69 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:beefwellingtonItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_70 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "harvestcraft:epicbaconItem";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_71 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "DraconicEvolution:dezilsMarshmallow";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 64;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32008;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_73 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32598;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{GT.ItemCharge:2147483647L}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11300;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          };
        };
      };
      loot_75 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8502;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8503;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8504;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8505;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8527;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8528;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          };
        };
      };
      loot_82 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11089;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_84 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11054;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11018;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_86 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11019;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11031;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_88 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11034;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_89 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11033;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11036;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11048;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11058;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11302;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11303;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11304;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          };
        };
      };
      loot_96 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11306;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11307;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11308;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11310;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11343;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          };
        };
      };
      loot_101 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11354;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11365;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11382;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 1;
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
      __root = lib.mkOption {
        type = lib.types.str;
        default = "LootGroup";
        readOnly = true;
      };
      "@category" = lib.mkOption {
        type = lib.types.str;
        default = "pyramidJungleDispenser";
      };
      "@count_max" = lib.mkOption {
        type = lib.types.int;
        default = 2;
      };
      "@count_min" = lib.mkOption {
        type = lib.types.int;
        default = 2;
      };
      "@loading_mode" = lib.mkOption {
        type = lib.types.str;
        default = "OVERRIDE";
      };
      loot_0 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:arrow";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 30;
          };
          };
        };
      };
      loot_1 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:fire_charge";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 30;
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
      __root = lib.mkOption {
        type = lib.types.str;
        default = "LootGroup";
        readOnly = true;
      };
      "@category" = lib.mkOption {
        type = lib.types.str;
        default = "railcraft:workshop";
      };
      "@count_max" = lib.mkOption {
        type = lib.types.int;
        default = 16;
      };
      "@count_min" = lib.mkOption {
        type = lib.types.int;
        default = 10;
      };
      "@loading_mode" = lib.mkOption {
        type = lib.types.str;
        default = "OVERRIDE";
      };
      loot_0 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:fluid.creosote.bottle";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_1 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:coal";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_2 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.crowbar";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_3 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.magnifying.glass";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_4 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.goggles";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.overalls";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_6 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:minecart";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chest_minecart";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_8 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:tnt_minecart";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_9 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 32;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:rail";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 30;
          };
          };
        };
      };
      loot_10 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:hopper";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_11 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:piston";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_12 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:hopper_minecart";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_13 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:part.tie";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:part.tie";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_15 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 18;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:part.rail";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 18;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:part.rail";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_17 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 18;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:part.rail";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_18 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 18;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:part.rail";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_19 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 18;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:part.rail";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_20 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:fuel.coke";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_21 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:part.gear";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_22 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:cart.tnt.wood";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_23 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:cart.work";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          };
        };
      };
      loot_24 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.surveyor";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_25 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.signal.tuner";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_26 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.electric.meter";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
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
      __root = lib.mkOption {
        type = lib.types.str;
        default = "LootGroup";
        readOnly = true;
      };
      "@category" = lib.mkOption {
        type = lib.types.str;
        default = "strongholdCorridor";
      };
      "@count_max" = lib.mkOption {
        type = lib.types.int;
        default = 4;
      };
      "@count_min" = lib.mkOption {
        type = lib.types.int;
        default = 2;
      };
      "@loading_mode" = lib.mkOption {
        type = lib.types.str;
        default = "OVERRIDE";
      };
      loot_0 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:ender_pearl";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_1 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_ingot";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_3 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:gold_ingot";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_4 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:redstone";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:bread";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_6 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:apple";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_pickaxe";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_8 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_sword";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_9 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_chestplate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_10 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_helmet";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_11 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_leggings";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_12 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_boots";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_13 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_helmet";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_leggings";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_boots";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          };
        };
      };
      loot_16 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_chestplate";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:golden_apple";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:saddle";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_horse_armor";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:golden_horse_armor";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_horse_armor";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:enchanted_book";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemToolBronzeSword";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeHelmet";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_25 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeChestplate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_26 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeLegs";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeBoots";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_28 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_helmet";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_chestplate";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_leggings";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_boots";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "BiomesOPlenty:flowers";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_33 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "BiomesOPlenty:flowers";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_34 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.steel.sword";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_35 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.helmet";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_36 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.plate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_37 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.legs";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_38 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.boots";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_39 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "MagicBees:frameOblivion";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 18;
          };
          };
        };
      };
      loot_40 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:adventurers_diary";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_41 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:temple_caller";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:40b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_43 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:30b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          };
        };
      };
      loot_44 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:20b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 14;
          };
          };
        };
      };
      loot_45 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:10b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 18;
          };
          };
        };
      };
      loot_46 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "openmodularturrets:disposeItemTurret";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_47 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "openmodularturrets:baseTierWood";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_48 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "openmodularturrets:leverBlock";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_49 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_52 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_55 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_56 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemThaumonomicon";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemSwordThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemPickThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemAxeThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemHoeThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemRingRunic";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemAmuletVis";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{aqua:100,terra:100,ignis:300,ordo:200,perditio:200,aer:400}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Automagy:baubleEnderDisjunction";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Automagy:phialExtra";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "ExtraUtilities:divisionSigil";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 335;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3335;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          };
        };
      };
      loot_77 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11089;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_79 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11054;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11018;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_81 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11019;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11031;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_83 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11034;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_84 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11033;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          };
        };
      };
      loot_85 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11036;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11048;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11058;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11302;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11303;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11304;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          };
        };
      };
      loot_91 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11306;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          };
        };
      };
      loot_92 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11307;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11308;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11310;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11343;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          };
        };
      };
      loot_96 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11354;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11365;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11382;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 1;
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
      __root = lib.mkOption {
        type = lib.types.str;
        default = "LootGroup";
        readOnly = true;
      };
      "@category" = lib.mkOption {
        type = lib.types.str;
        default = "strongholdCrossing";
      };
      "@count_max" = lib.mkOption {
        type = lib.types.int;
        default = 5;
      };
      "@count_min" = lib.mkOption {
        type = lib.types.int;
        default = 1;
      };
      "@loading_mode" = lib.mkOption {
        type = lib.types.str;
        default = "OVERRIDE";
      };
      loot_0 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_ingot";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_1 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:gold_ingot";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:redstone";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:coal";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_4 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:bread";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_5 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:apple";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_6 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_pickaxe";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:enchanted_book";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_door";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemToolBronzeSword";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_10 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeHelmet";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeChestplate";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeLegs";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeBoots";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_14 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_helmet";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_leggings";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          };
        };
      };
      loot_16 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_boots";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_chestplate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          };
        };
      };
      loot_18 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "BiomesOPlenty:flowers";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_19 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "BiomesOPlenty:flowers";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_20 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.steel.sword";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_21 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.helmet";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_22 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.plate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_23 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.legs";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_24 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.boots";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_25 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:temple_caller";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:40b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_27 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:30b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          };
        };
      };
      loot_28 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:20b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 14;
          };
          };
        };
      };
      loot_29 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:10b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 18;
          };
          };
        };
      };
      loot_30 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_31 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_32 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemThaumonomicon";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemSwordThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemPickThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemAxeThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemHoeThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemRingRunic";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemAmuletVis";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{aqua:100,terra:100,ignis:300,ordo:200,perditio:200,aer:400}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Automagy:baubleEnderDisjunction";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Automagy:phialExtra";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "ExtraUtilities:divisionSigil";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_55 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32137;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          };
        };
      };
      loot_56 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32765;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_57 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11335;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          };
        };
      };
      loot_58 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 45;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11305;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 45;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11300;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11031;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 6;
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
      __root = lib.mkOption {
        type = lib.types.str;
        default = "LootGroup";
        readOnly = true;
      };
      "@category" = lib.mkOption {
        type = lib.types.str;
        default = "strongholdLibrary";
      };
      "@count_max" = lib.mkOption {
        type = lib.types.int;
        default = 5;
      };
      "@count_min" = lib.mkOption {
        type = lib.types.int;
        default = 1;
      };
      "@loading_mode" = lib.mkOption {
        type = lib.types.str;
        default = "OVERRIDE";
      };
      loot_0 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:book";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_1 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:paper";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_2 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:map";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:compass";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:enchanted_book";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:blaze_rod";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_6 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "MagicBees:frameOblivion";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 23;
          };
          };
        };
      };
      loot_7 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "miscutils:frameVoid";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 23;
          };
          };
        };
      };
      loot_8 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:adventurers_diary";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:temple_caller";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:40b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          };
        };
      };
      loot_11 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:30b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          };
        };
      };
      loot_12 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:20b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 18;
          };
          };
        };
      };
      loot_13 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:10b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 24;
          };
          };
        };
      };
      loot_14 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "OpenComputers:item";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_15 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_16 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_18 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_21 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_22 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_24 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemLootBag";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemThaumonomicon";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemSwordThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemPickThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemAxeThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemHoeThaumium";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemRingRunic";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemBaubleBlanks";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemAmuletVis";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{aqua:100,terra:100,ignis:300,ordo:200,perditio:200,aer:400}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:blockCustomPlant";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_39 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:blockCustomPlant";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          };
        };
      };
      loot_40 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Automagy:baubleEnderDisjunction";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Automagy:phialExtra";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IguanaTweaksTConstruct:wearableBucket";
          };
          "@weight" = lib.mkOption {
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
      __root = lib.mkOption {
        type = lib.types.str;
        default = "LootGroup";
        readOnly = true;
      };
      "@category" = lib.mkOption {
        type = lib.types.str;
        default = "villageBlacksmith";
      };
      "@count_max" = lib.mkOption {
        type = lib.types.int;
        default = 11;
      };
      "@count_min" = lib.mkOption {
        type = lib.types.int;
        default = 4;
      };
      "@loading_mode" = lib.mkOption {
        type = lib.types.str;
        default = "OVERRIDE";
      };
      loot_0 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_ingot";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_2 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:gold_ingot";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:bread";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_4 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:apple";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 15;
          };
          };
        };
      };
      loot_5 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_pickaxe";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_6 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_sword";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_7 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_chestplate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_8 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_helmet";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_9 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_leggings";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_10 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_boots";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_11 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_chestplate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_12 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_helmet";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_leggings";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_boots";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:chainmail_chestplate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          };
        };
      };
      loot_16 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:obsidian";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_17 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:sapling";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_18 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:saddle";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:iron_horse_armor";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:golden_horse_armor";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:diamond_horse_armor";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemToolBronzePickaxe";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemToolBronzeSword";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeHelmet";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_25 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeChestplate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_26 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeLegs";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:itemArmorBronzeBoots";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_28 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IC2:blockRubSapling";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "BiomesOPlenty:plants";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_30 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "BiomesOPlenty:misc";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_31 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "BiomesOPlenty:wadingBoots";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_32 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "BiomesOPlenty:flippers";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 25;
          };
          };
        };
      };
      loot_33 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.crowbar";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.steel.shears";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_35 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.steel.sword";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_36 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:tool.steel.axe";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_37 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.helmet";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_38 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.plate";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_39 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.legs";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_40 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:armor.steel.boots";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_41 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:fuel.coke";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 20;
          };
          };
        };
      };
      loot_42 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:cube";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_43 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:temple_caller";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:40b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_45 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:30b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          };
        };
      };
      loot_46 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:20b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          };
        };
      };
      loot_47 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "HardcoreEnderExpansion:knowledge_note";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{pts:10b}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          };
        };
      };
      loot_48 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemResource";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_49 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:blockCustomPlant";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:blockCustomPlant";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "Automagy:phialExtra";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "IguanaTweaksTConstruct:wearableBucket";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32765;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2030;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          };
        };
      };
      loot_55 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 2067;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          };
        };
      };
      loot_56 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11031;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          };
        };
      };
      loot_57 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11305;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11300;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11301;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11335;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          };
        };
      };
      loot_62 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 16;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          };
        };
      };
      loot_63 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11089;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_64 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11054;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          };
        };
      };
      loot_65 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11018;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_66 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11019;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11031;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          };
        };
      };
      loot_68 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11034;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_69 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11033;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11036;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11048;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11058;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11302;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11303;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 6;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11304;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          };
        };
      };
      loot_76 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11306;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11307;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11308;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11310;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11343;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11354;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11365;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 11382;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          };
        };
      };
      loot_84 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 23032;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_85 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 27032;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_86 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 28032;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_87 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 29032;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_88 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 32100;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 20032;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_90 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 23032;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_91 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 24032;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_92 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 21032;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_93 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 22032;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_94 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 23057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_95 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 27057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_96 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 28057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_97 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 29057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_98 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 20057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_99 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 23057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_100 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 24057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_101 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 21057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_102 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 22057;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_103 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 23035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_104 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 27035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_105 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 28035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_106 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 29035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_107 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 20035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_108 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 23035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_109 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 24035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_110 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 21035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_111 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 22035;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.02";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      loot_112 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1360;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1300;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 1240;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:pickaxe";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{InfiTool:{BaseDurability:356,Head:14,HeadEXP:0L,BaseAttack:4,ToolEXP:0L,Built:1b,HarvestLevel:3,Attack:4,RenderHead:14,ModDurability:0.0f,Handle:14,Broken:0b,Shoddy:0.0f,RenderHandle:14,Accessory:14,MiningSpeed:650,RenderAccessory:14,ToolLevel:1,HarvestLevelModified:0b,Unbreaking:1,Damage:0,BonusDurability:0,TotalDurability:356,Modifiers:0},display:{Name:\"§fBronze Pickaxe\"}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      loot_116 = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:shovel";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{InfiTool:{BaseDurability:356,Head:14,BaseAttack:5,ToolEXP:0L,Built:1b,HarvestLevel:4,Attack:5,RenderHead:14,ModDurability:0.0f,Handle:14,Broken:0b,Shoddy:0.0f,RenderHandle:14,MiningSpeed:650,ToolLevel:1,Unbreaking:1,Damage:0,BonusDurability:0,TotalDurability:356,Modifiers:0},display:{Name:\"§fBronze Shovel\"}}";
          };
          "@weight" = lib.mkOption {
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
          "@count_max" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@count_min" = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          "@damage" = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          "@item" = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:broadsword";
          };
          "@nbt" = lib.mkOption {
            type = lib.types.str;
            default = "{InfiTool:{BaseDurability:427,Head:14,BaseAttack:7,ToolEXP:0L,Built:1b,HarvestLevel:4,Attack:7,RenderHead:14,ModDurability:0.0f,Handle:14,Broken:0b,Shoddy:0.0f,RenderHandle:14,Accessory:14,MiningSpeed:650,RenderAccessory:14,ToolLevel:1,Unbreaking:1,Damage:0,BonusDurability:0,TotalDurability:427,Modifiers:0},display:{Name:\"§fBronze Broadsword\"}}";
          };
          "@weight" = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          };
        };
      };
      };
    };
  };
}
