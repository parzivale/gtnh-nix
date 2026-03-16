{lib, ...}: {
  roguelike_cfg = lib.mkOption {
    description = "roguelike_cfg configuration (./config/roguelike_dungeons/roguelike.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/roguelike.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "properties";
        readOnly = true;
        };
        dimensionBL = lib.mkOption {
          type = lib.types.str;
          default = "";
        };
        dimensionWL = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        doNaturalSpawn = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        doNoveltySpawn = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        generous = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
        levelMaxRooms = lib.mkOption {
          type = lib.types.int;
          default = 30;
        };
        levelRange = lib.mkOption {
          type = lib.types.int;
          default = 80;
        };
        levelScatter = lib.mkOption {
          type = lib.types.int;
          default = 10;
        };
        looting = lib.mkOption {
          type = lib.types.float;
          default = 0.085;
        };
        lowerLimit = lib.mkOption {
          type = lib.types.int;
          default = 60;
        };
        preciousBlocks = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
        rogueSpawners = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        spawnFrequency = lib.mkOption {
          type = lib.types.int;
          default = 16;
        };
        upperLimit = lib.mkOption {
          type = lib.types.int;
          default = 100;
        };
      };
    };
  };
  settings_dungeon_desert_json = lib.mkOption {
    description = "settings_dungeon_desert_json configuration (./config/roguelike_dungeons/settings/dungeon_desert.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/dungeon_desert.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "dungeon_desert";
        };
        criteria = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              biomeTypes = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "SANDY" ];
              };
            };
          };
        };
        "inherit" = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "loot_all" "loot_hot_food" "theme_desert" "tower_desert" "rooms_desert" "segments_desert" ];
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    diff = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                  };
                };
              };
              "1" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    diff = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_dungeon_forest_json = lib.mkOption {
    description = "settings_dungeon_forest_json configuration (./config/roguelike_dungeons/settings/dungeon_forest.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/dungeon_forest.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "dungeon_forest";
        };
        criteria = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              biomeTypes = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "FOREST" ];
              };
            };
          };
        };
        "inherit" = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "loot_all" "loot_forest" "tower_forest" "rooms_forest" ];
        };
      };
    };
  };
  settings_dungeon_jungle_json = lib.mkOption {
    description = "settings_dungeon_jungle_json configuration (./config/roguelike_dungeons/settings/dungeon_jungle.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/dungeon_jungle.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "dungeon_jungle";
        };
        criteria = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              biomeTypes = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "JUNGLE" ];
              };
            };
          };
        };
        "inherit" = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "loot_all" "loot_jungle" "theme_jungle" "tower_jungle" "segments_jungle" ];
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    diff = lib.mkOption {
                      type = lib.types.int;
                      default = 3;
                    };
                  };
                };
              };
              "1" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    diff = lib.mkOption {
                      type = lib.types.int;
                      default = 3;
                    };
                  };
                };
              };
              "2" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    diff = lib.mkOption {
                      type = lib.types.int;
                      default = 3;
                    };
                  };
                };
              };
              "3" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    diff = lib.mkOption {
                      type = lib.types.int;
                      default = 3;
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_dungeon_mesa_json = lib.mkOption {
    description = "settings_dungeon_mesa_json configuration (./config/roguelike_dungeons/settings/dungeon_mesa.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/dungeon_mesa.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "dungeon_mesa";
        };
        criteria = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              biomeTypes = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "MESA" ];
              };
            };
          };
        };
        "inherit" = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "loot_all" "loot_hot_food" "theme_mesa" "tower_mesa" ];
        };
      };
    };
  };
  settings_dungeon_mountain_json = lib.mkOption {
    description = "settings_dungeon_mountain_json configuration (./config/roguelike_dungeons/settings/dungeon_mountain.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/dungeon_mountain.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "dungeon_mountain";
        };
        criteria = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              biomeTypes = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "MOUNTAIN" ];
              };
            };
          };
        };
        "inherit" = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "loot_all" "loot_mountain" "theme_mountain" "tower_mountain" "rooms_mountain" "segments_mountain" ];
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "2" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    diff = lib.mkOption {
                      type = lib.types.int;
                      default = 4;
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_dungeon_plains_json = lib.mkOption {
    description = "settings_dungeon_plains_json configuration (./config/roguelike_dungeons/settings/dungeon_plains.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/dungeon_plains.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "dungeon_plains";
        };
        criteria = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              biomeTypes = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "PLAINS" ];
              };
            };
          };
        };
        "inherit" = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "loot_all" "loot_plains" "rooms_plains" ];
        };
      };
    };
  };
  settings_dungeon_swamp_json = lib.mkOption {
    description = "settings_dungeon_swamp_json configuration (./config/roguelike_dungeons/settings/dungeon_swamp.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/dungeon_swamp.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "dungeon_swamp";
        };
        criteria = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              biomeTypes = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "SWAMP" ];
              };
            };
          };
        };
        "inherit" = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "loot_all" "loot_swamp" "theme_swamp" "tower_swamp" "rooms_swamp" "segments_swamp" ];
        };
      };
    };
  };
  settings_loot_all_json = lib.mkOption {
    description = "settings_loot_all_json configuration (./config/roguelike_dungeons/settings/loot_all.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_all.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_all";
        };
        "inherit" = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "loot_ore" "loot_blocks" "loot_armor" "loot_weapons" "loot_tools" "loot_starter" "loot_enchanting" "loot_reward" "loot_supplies" "loot_smith" "loot_junk" "loot_potions" "loot_music" ];
        };
        overrides = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "LOOTRULES" ];
        };
      };
    };
  };
  settings_loot_armor_json = lib.mkOption {
    description = "settings_loot_armor_json configuration (./config/roguelike_dungeons/settings/loot_armor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_armor.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_armor";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 0 1 2 3 4 ];
              };
              type = lib.mkOption {
                type = lib.types.str;
                default = "ARMOUR";
              };
              each = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              quantity = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "BiblioCraft:item.BiblioGlasses";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 3;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "BiblioCraft:item.BiblioGlasses";
                      meta = 2;
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "BiblioCraft:item.BiblioGlasses";
                      meta = 1;
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "BiblioCraft:item.BiblioGlasses";
                      meta = 0;
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "Forestry:builderBag";
                      meta = 0;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "Forestry:diggerBag";
                      meta = 0;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "Forestry:foresterBag";
                      meta = 0;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "Forestry:hunterBag";
                      meta = 0;
                    };
                    weight = 2;
                  }
                  {
                    data = {
                      name = "Forestry:minerBag";
                      meta = 0;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "Thaumcraft:ItemBaubleBlanks";
                      meta = 0;
                    };
                    weight = 12;
                  }
                  {
                    data = {
                      name = "Thaumcraft:ItemBaubleBlanks";
                      meta = 1;
                    };
                    weight = 12;
                  }
                  {
                    data = {
                      name = "Thaumcraft:ItemBaubleBlanks";
                      meta = 2;
                    };
                    weight = 12;
                  }
                  {
                    data = {
                      name = "TwilightForest:item.charmOfKeeping1";
                      meta = 0;
                    };
                    weight = 12;
                  }
                  {
                    data = {
                      name = "TwilightForest:item.charmOfKeeping2";
                      meta = 0;
                    };
                    weight = 8;
                  }
                  {
                    data = {
                      name = "TwilightForest:item.charmOfKeeping3";
                      meta = 0;
                    };
                    weight = 4;
                  }
                  {
                    data = {
                      name = "BiomesOPlenty:flippers";
                      meta = 0;
                    };
                    weight = 8;
                  }
                  {
                    data = {
                      name = "Backpack:backpack";
                      meta = 0;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "ExtraUtilities:glove";
                      meta = 0;
                    };
                    weight = 3;
                  }
                ];
              };
            };
          });
          default = [
            {
              level = [ 0 1 2 3 4 ];
              type = "ARMOUR";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "BiblioCraft:item.BiblioGlasses";
                    meta = 2;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "BiblioCraft:item.BiblioGlasses";
                    meta = 1;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "BiblioCraft:item.BiblioGlasses";
                    meta = 0;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "Forestry:builderBag";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "Forestry:diggerBag";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "Forestry:foresterBag";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "Forestry:hunterBag";
                    meta = 0;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "Forestry:minerBag";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "Thaumcraft:ItemBaubleBlanks";
                    meta = 0;
                  };
                  weight = 12;
                }
                {
                  data = {
                    name = "Thaumcraft:ItemBaubleBlanks";
                    meta = 1;
                  };
                  weight = 12;
                }
                {
                  data = {
                    name = "Thaumcraft:ItemBaubleBlanks";
                    meta = 2;
                  };
                  weight = 12;
                }
                {
                  data = {
                    name = "TwilightForest:item.charmOfKeeping1";
                    meta = 0;
                  };
                  weight = 12;
                }
                {
                  data = {
                    name = "TwilightForest:item.charmOfKeeping2";
                    meta = 0;
                  };
                  weight = 8;
                }
                {
                  data = {
                    name = "TwilightForest:item.charmOfKeeping3";
                    meta = 0;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "BiomesOPlenty:flippers";
                    meta = 0;
                  };
                  weight = 8;
                }
                {
                  data = {
                    name = "Backpack:backpack";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "ExtraUtilities:glove";
                    meta = 0;
                  };
                  weight = 3;
                }
              ];
            }
            {
              level = 0;
              type = "ARMOUR";
              each = true;
              quantity = 2;
              loot = [
                {
                  data = {
                    name = "BiomesOPlenty:bootsMud";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "BiomesOPlenty:chestplateMud";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "BiomesOPlenty:helmetMud";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "BiomesOPlenty:leggingsMud";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "TConstruct:helmetWood";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "TConstruct:leggingsWood";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "TConstruct:chestplateWood";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "TConstruct:bootsWood";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:leather_boots";
                    meta = 0;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "minecraft:leather_boots";
                    meta = 0;
                    ntb = "{display:{color:4154789,Name:\"Crocs\"}}";
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "minecraft:leather_chestplate";
                    meta = 0;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "minecraft:leather_chestplate";
                    meta = 0;
                    nbt = "{display:{color:11328472,Name:\"Oxford Button Down Shirt\"}}";
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "minecraft:leather_helmet";
                    meta = 0;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "minecraft:leather_helmet";
                    meta = 0;
                    nbt = "{display:{color:12553267,Name:\"Fedora\"}}";
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "minecraft:leather_leggings";
                    meta = 0;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "minecraft:leather_leggings";
                    meta = 0;
                    nbt = "{display:{color:10057608,Name:\"pant\"}}";
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "TConstruct:slime_boots";
                    meta = 0;
                  };
                  weight = 4;
                }
              ];
            }
            {
              level = 1;
              type = "ARMOUR";
              each = true;
              quantity = 2;
              loot = [
                {
                  data = {
                    name = "harvestcraft:hardenedleatherbootsItem";
                    meta = 0;
                  };
                  weight = 13;
                }
                {
                  data = {
                    name = "harvestcraft:hardenedleatherchestItem";
                    meta = 0;
                  };
                  weight = 13;
                }
                {
                  data = {
                    name = "harvestcraft:hardenedleatherhelmItem";
                    meta = 0;
                  };
                  weight = 13;
                }
                {
                  data = {
                    name = "harvestcraft:hardenedleatherleggingsItem";
                    meta = 0;
                  };
                  weight = 13;
                }
                {
                  data = {
                    name = "harvestthenether:quartzbootsItem";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestthenether:quartzchestItem";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestthenether:quartzhelmItem";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestthenether:quartzleggingsItem";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "adventurebackpack:adventureHat";
                    meta = 0;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "adventurebackpack:adventurePants";
                    meta = 0;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "adventurebackpack:adventureSuit";
                    meta = 0;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "adventurebackpack:pistonBoots";
                    meta = 0;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "minecraft:golden_boots";
                    meta = 0;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:golden_chestplate";
                    meta = 0;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:golden_helmet";
                    meta = 0;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:golden_leggings";
                    meta = 0;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:iron_boots";
                    meta = 0;
                  };
                  weight = 8;
                }
                {
                  data = {
                    name = "minecraft:iron_chestplate";
                    meta = 0;
                  };
                  weight = 8;
                }
                {
                  data = {
                    name = "minecraft:iron_helmet";
                    meta = 0;
                  };
                  weight = 8;
                }
                {
                  data = {
                    name = "minecraft:iron_leggings";
                    meta = 0;
                  };
                  weight = 8;
                }
              ];
            }
            {
              level = 2;
              type = "ARMOUR";
              each = true;
              quantity = 2;
              loot = [
                {
                  data = {
                    name = "ProjRed|Exploration:projectred.exploration.rubychestplate";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "ProjRed|Exploration:projectred.exploration.rubyhelmet";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "ProjRed|Exploration:projectred.exploration.rubyleggings";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "ProjRed|Exploration:projectred.exploration.rubyboots";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "ProjRed|Exploration:projectred.exploration.sapphireboots";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "ProjRed|Exploration:projectred.exploration.sapphirechestplate";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "ProjRed|Exploration:projectred.exploration.sapphirehelmet";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "ProjRed|Exploration:projectred.exploration.sapphireleggings";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:chainmail_boots";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:chainmail_chestplate";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:chainmail_helmet";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:chainmail_leggings";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:iron_boots";
                    meta = 0;
                  };
                  weight = 8;
                }
                {
                  data = {
                    name = "minecraft:iron_chestplate";
                    meta = 0;
                  };
                  weight = 8;
                }
                {
                  data = {
                    name = "minecraft:iron_helmet";
                    meta = 0;
                  };
                  weight = 8;
                }
                {
                  data = {
                    name = "minecraft:iron_leggings";
                    meta = 0;
                  };
                  weight = 8;
                }
              ];
            }
            {
              level = 3;
              type = "ARMOUR";
              each = true;
              quantity = 2;
              loot = [
                {
                  data = {
                    name = "Railcraft:armor.steel.boots";
                    meta = 0;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "Railcraft:armor.steel.helmet";
                    meta = 0;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "Railcraft:armor.steel.legs";
                    meta = 0;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "Railcraft:armor.steel.plate";
                    meta = 0;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "minecraft:diamond_boots";
                    meta = 0;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:diamond_chestplate";
                    meta = 0;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:diamond_helmet";
                    meta = 0;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:diamond_leggings";
                    meta = 0;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:iron_boots";
                    meta = 0;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:iron_chestplate";
                    meta = 0;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:iron_helmet";
                    meta = 0;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:iron_leggings";
                    meta = 0;
                  };
                  weight = 20;
                }
              ];
            }
            {
              level = 4;
              type = "ARMOUR";
              each = true;
              quantity = 2;
              loot = [
                {
                  data = {
                    name = "Railcraft:armor.steel.boots";
                    meta = 0;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "Railcraft:armor.steel.helmet";
                    meta = 0;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "Railcraft:armor.steel.legs";
                    meta = 0;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "Railcraft:armor.steel.plate";
                    meta = 0;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "minecraft:diamond_boots";
                    meta = 0;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:diamond_chestplate";
                    meta = 0;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:diamond_helmet";
                    meta = 0;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:diamond_leggings";
                    meta = 0;
                  };
                  weight = 20;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_blocks_json = lib.mkOption {
    description = "settings_loot_blocks_json configuration (./config/roguelike_dungeons/settings/loot_blocks.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_blocks.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_blocks";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 0 1 2 3 4 ];
              };
              loot_pools = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    type = lib.mkOption {
                      type = lib.types.str;
                      default = "BLOCKS";
                    };
                    each = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    quantity = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                  };
                });
                default = [
                  {
                    type = "BLOCKS";
                    each = true;
                    quantity = 5;
                  }
                  {
                    type = "TOOLS";
                    each = true;
                    quantity = 2;
                  }
                ];
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "chisel:hempcrete";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 14;
                          };
                          min = lib.mkOption {
                            type = lib.types.int;
                            default = 48;
                          };
                          max = lib.mkOption {
                            type = lib.types.int;
                            default = 64;
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "chisel:hempcrete";
                      meta = 14;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:redstone_lamp";
                      meta = 0;
                      min = 8;
                      max = 24;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "chisel:sveltstone";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "chisel:laboratoryblock";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:stained_glass";
                      meta = 7;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:glass";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:planks";
                      meta = 1;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "chisel:woolen_clay";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "chisel:froglight";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "chisel:paperwall_block";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "Botania:thatch";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "Botania:endStoneBrick";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "chisel:antiBlock";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "chisel:cubit";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "Ztones:tile.laveBlock";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "Ztones:tile.bittBlock";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "Ztones:tile.tankBlock";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "Ztones:tile.zestBlock";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "Ztones:auroraBlock";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 25;
                  }
                  {
                    data = {
                      name = "Ztones:stoneTile";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 25;
                  }
                  {
                    data = {
                      name = "etfuturum:smooth_stone";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "etfuturum:light_blue_bed";
                      meta = 0;
                      min = 1;
                      max = 2;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "etfuturum:sapling";
                      meta = 0;
                      min = 1;
                      max = 2;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "etfuturum:sapling";
                      meta = 1;
                      min = 1;
                      max = 2;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "etfuturum:moss_block";
                      meta = 0;
                      min = 1;
                      max = 2;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "etfuturum:deepslate_emerald_ore";
                      meta = 0;
                      min = 1;
                      max = 2;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "etfuturum:rose";
                      meta = 0;
                      min = 1;
                      max = 2;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "chisel:factoryblock";
                      meta = 0;
                      min = 48;
                      max = 64;
                    };
                    weight = 10;
                  }
                ];
              };
            };
          });
          default = [
            {
              level = [ 0 1 2 3 4 ];
              loot_pools = [
                {
                  type = "BLOCKS";
                  each = true;
                  quantity = 5;
                }
                {
                  type = "TOOLS";
                  each = true;
                  quantity = 2;
                }
              ];
              loot = [
                {
                  data = {
                    name = "chisel:hempcrete";
                    meta = 14;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:redstone_lamp";
                    meta = 0;
                    min = 8;
                    max = 24;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "chisel:sveltstone";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "chisel:laboratoryblock";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:stained_glass";
                    meta = 7;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:glass";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:planks";
                    meta = 1;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "chisel:woolen_clay";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "chisel:froglight";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "chisel:paperwall_block";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Botania:thatch";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Botania:endStoneBrick";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "chisel:antiBlock";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "chisel:cubit";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Ztones:tile.laveBlock";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Ztones:tile.bittBlock";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Ztones:tile.tankBlock";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Ztones:tile.zestBlock";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Ztones:auroraBlock";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 25;
                }
                {
                  data = {
                    name = "Ztones:stoneTile";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 25;
                }
                {
                  data = {
                    name = "etfuturum:smooth_stone";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "etfuturum:light_blue_bed";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "etfuturum:sapling";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "etfuturum:sapling";
                    meta = 1;
                    min = 1;
                    max = 2;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "etfuturum:moss_block";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "etfuturum:deepslate_emerald_ore";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "etfuturum:rose";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "chisel:factoryblock";
                    meta = 0;
                    min = 48;
                    max = 64;
                  };
                  weight = 10;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_builtin_override_json = lib.mkOption {
    description = "settings_loot_builtin_override_json configuration (./config/roguelike_dungeons/settings/loot_builtin_override.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_builtin_override.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "builtin:loot";
        };
        "inherit" = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ "loot_all" ];
        };
      };
    };
  };
  settings_loot_dungeon_forest_json = lib.mkOption {
    description = "settings_loot_dungeon_forest_json configuration (./config/roguelike_dungeons/settings/loot_dungeon_forest.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_dungeon_forest.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_forest";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              loot_pools = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    type = lib.mkOption {
                      type = lib.types.str;
                      default = "FOOD";
                    };
                    each = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    quantity = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                  };
                });
                default = [
                  {
                    type = "FOOD";
                    each = true;
                    quantity = 5;
                  }
                  {
                    type = "ARMOUR";
                    each = true;
                    quantity = 3;
                  }
                ];
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "harvestcraft:candiedgingerItem";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                          min = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          max = lib.mkOption {
                            type = lib.types.int;
                            default = 3;
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "harvestcraft:candiedgingerItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:candiedlemonItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:candiedsweetpotatoesItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:candiedwalnutsItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:caramelItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:caramelappleItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:vegemiteItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:taffyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:lemonbarItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:gingersnapsItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:marshmellowsItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:jellybeansItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:gummybearsItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:mochiItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metaitem.01";
                      meta = 32010;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:cranberrysauceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:peppermintItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:pralinesItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:sesamesnapsItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "WitchingGadgets:item.WG_MagicFood";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metaitem.02";
                      meta = 32212;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:sesameballItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:marinatedcucumbersItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:sweetpickleItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:museliItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:poachedpearItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:glazedcarrotsItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                ];
              };
            };
          });
          default = [
            {
              level = 0;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 5;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:candiedgingerItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:candiedlemonItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:candiedsweetpotatoesItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:candiedwalnutsItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:caramelItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:caramelappleItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:vegemiteItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:taffyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:lemonbarItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:gingersnapsItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:marshmellowsItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:jellybeansItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:gummybearsItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:mochiItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 32010;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:cranberrysauceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:peppermintItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:pralinesItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:sesamesnapsItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "WitchingGadgets:item.WG_MagicFood";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32212;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:sesameballItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:marinatedcucumbersItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:sweetpickleItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:museliItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:poachedpearItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:glazedcarrotsItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 1;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 5;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "BloodArsenal:blood_cookie";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:raisincookiesItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "BloodArsenal:juice_and_cookies";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:cookie";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:chaoscookieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:creamcookieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:peanutbuttercookiesItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:chocolatedonutItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:cinnamonsugardonutItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:donutItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:frosteddonutItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:jellydonutItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:powdereddonutItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 2;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:cranberrybarItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:brownieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:baklavaItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:gingeredrhubarbtartItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:lemonmeringueItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:cinnamonrollItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:cinnamonappleoatmealItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:spicebunItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:figbarItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:manjuuItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:jaffaItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:timtamItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:bakedbeansItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:generaltsochickenItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:orangechickenItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:sunflowerbroccolisaladItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:pineapplehamItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:lambwithmintsauceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:bakedhamItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:lambwithmintsauceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "ExtraTrees:food";
                    meta = 23;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "ExtraTrees:food";
                    meta = 23;
                    min = 1;
                    max = 40;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:marzipanItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 3;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:chickenpotpieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:cherrypieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:cottagepieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:gooseberrypieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:keylimepieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:meatpieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:mincepieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:pecanpieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:raspberrypieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:shepardspieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:spinachpieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:strawberrypieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:sweetpotatopieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:applepieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:blueberrypieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:cheesecakeItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "WitchingGadgets:item.WG_MagicFood";
                    meta = 1;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:pumpkin_pie";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:cheesecakeItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 4;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "minecraft:cake";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:ricecakeItem";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:redvelvetcakeItem";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:pumpkincheesecakeItem";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:potatocakesItem";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:pineappleupsidedowncakeItem";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:pancakesItem";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:maplesyruppancakesItem";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:holidaycakeItem";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:chocolatesprinklecakeItem";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:cherrycheesecakeItem";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:cheesecakeItem";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:blueberrypancakesItem";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:pamcarrotCake";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:cheesecakeItem";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:carrotcakeItem";
                    meta = 0;
                    min = 1;
                    max = 2;
                  };
                  weight = 1;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_dungeon_ice_json = lib.mkOption {
    description = "settings_loot_dungeon_ice_json configuration (./config/roguelike_dungeons/settings/loot_dungeon_ice.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_dungeon_ice.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_ice";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              loot_pools = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    type = lib.mkOption {
                      type = lib.types.str;
                      default = "FOOD";
                    };
                    each = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    quantity = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                  };
                });
                default = [
                  {
                    type = "FOOD";
                    each = true;
                    quantity = 5;
                  }
                  {
                    type = "ARMOUR";
                    each = true;
                    quantity = 3;
                  }
                ];
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "harvestcraft:applesmoothieItem";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                          min = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          max = lib.mkOption {
                            type = lib.types.int;
                            default = 3;
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "harvestcraft:applesmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:apricotsmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:bananasmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:blackberrysmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:blueberrysmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:cherrysmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:coconutsmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:cranberrysmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:figsmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:gooseberrysmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:grapefruitsmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:grapesmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:kiwismoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:lemonsmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:limesmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:mangosmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:melonsmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:orangesmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:papayasmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:peachsmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:pearsmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:persimmonsmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:plumsmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:pomegranatesmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:raspberrysmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:starfruitsmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:strawberrysmoothieItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                ];
              };
            };
          });
          default = [
            {
              level = 0;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 5;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:applesmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:apricotsmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:bananasmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:blackberrysmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:blueberrysmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:cherrysmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:coconutsmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:cranberrysmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:figsmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:gooseberrysmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:grapefruitsmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:grapesmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:kiwismoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:lemonsmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:limesmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:mangosmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:melonsmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:orangesmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:papayasmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:peachsmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:pearsmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:persimmonsmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:plumsmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:pomegranatesmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:raspberrysmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:starfruitsmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:strawberrysmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 1;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 5;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "ThaumicHorizons:iceCream";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:caramelicecreamItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:cherryicecreamItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:chocolateicecreamItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:icecreamItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:cherrysmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:mochaicecreamItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:neapolitanicecreamItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:pistachioicecreamItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:spumoniicecreamItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:strawberryicecreamItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:vanillaicecreamItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 2;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "cookingforblockheads:toast";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:beansontoastItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:cheeseontoastItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:frenchtoastItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:toastItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:toastedcoconutItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:toastsandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:vegemiteontoastItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 3;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:spagettiItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:spagettiandmeatballsItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:frenchtoastItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:chickenparmasanItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:ceasarsaladItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:mushroomrisottoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:eggplantparmItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 4;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:randomtacoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:tacoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:fishtacoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:avocadoburritoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:beanburritoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:nachoesItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:heartybreakfastItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_dungeon_jungle_json = lib.mkOption {
    description = "settings_loot_dungeon_jungle_json configuration (./config/roguelike_dungeons/settings/loot_dungeon_jungle.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_dungeon_jungle.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_jungle";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              loot_pools = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    type = lib.mkOption {
                      type = lib.types.str;
                      default = "FOOD";
                    };
                    each = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    quantity = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                  };
                });
                default = [
                  {
                    type = "FOOD";
                    each = true;
                    quantity = 5;
                  }
                  {
                    type = "ARMOUR";
                    each = true;
                    quantity = 3;
                  }
                ];
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "harvestcraft:mangojellyItem";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                          min = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          max = lib.mkOption {
                            type = lib.types.int;
                            default = 3;
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "harvestcraft:mangojellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:orangejellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:papayajellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:peachjellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:pomegranatejellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:raspberryjellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:starfruitjellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:strawberryjellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:watermelonjellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:apricotjellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:figjellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:grapefruitjellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:persimmonjellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:pearjellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:plumjellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:limejellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:grapejellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:applejellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:blackberryjellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:blueberryjellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:cherryjellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:cranberryjellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:kiwijellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:lemonjellyItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                ];
              };
            };
          });
          default = [
            {
              level = 0;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 5;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:mangojellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:orangejellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:papayajellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:peachjellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:pomegranatejellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:raspberryjellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:starfruitjellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:strawberryjellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:watermelonjellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:apricotjellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:figjellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:grapefruitjellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:persimmonjellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:pearjellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:plumjellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:limejellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:grapejellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:applejellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:blackberryjellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:blueberryjellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:cherryjellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:cranberryjellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:kiwijellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:lemonjellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
              ];
            }
            {
              level = 2;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 5;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:porksausageItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:raspberrytrifleItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:sausageItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:sausagerollItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:museliItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:carprawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:dimsumItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:friedpecanokraItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:bbqpulledporkItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:pepperoniItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:pickledonionsItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
              ];
            }
            {
              level = 1;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 5;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:creamcookieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:creamofavocadosoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:creamedbroccolisoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:creamedcornItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:peachesandcreamoatmealItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:coconutcreamItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
              ];
            }
            {
              level = 3;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:chickensandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishsandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:leafychickensandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:leafyfishsandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32231;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32232;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32244;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32243;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32242;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32241;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32234;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32233;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
              ];
            }
            {
              level = 4;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:beetburgerItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:baconmushroomburgerItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:deluxecheeseburgerItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:onionhamburgerItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:coleslawburgerItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:baconcheeseburgerItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:cheeseburgerItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:hamburgerItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32221;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32222;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32223;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32224;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_dungeon_mountain_json = lib.mkOption {
    description = "settings_loot_dungeon_mountain_json configuration (./config/roguelike_dungeons/settings/loot_dungeon_mountain.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_dungeon_mountain.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_mountain";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              loot_pools = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    type = lib.mkOption {
                      type = lib.types.str;
                      default = "FOOD";
                    };
                    each = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    quantity = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                  };
                });
                default = [
                  {
                    type = "FOOD";
                    each = true;
                    quantity = 5;
                  }
                  {
                    type = "ARMOUR";
                    each = true;
                    quantity = 3;
                  }
                ];
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "harvestcraft:applejuiceItem";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                          min = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          max = lib.mkOption {
                            type = lib.types.int;
                            default = 3;
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "harvestcraft:applejuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:melonjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:carrotjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:strawberryjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:lemonaideItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:blueberryjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:cherryjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:papayajuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:starfruitjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:orangejuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:peachjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:limejuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:mangojuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:pomegranatejuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:blackberryjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:raspberryjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:kiwijuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:cranberryjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:cactusfruitjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:plumjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:pearjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:apricotjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:figjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:grapefruitjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:persimmonjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:bananajuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:gooseberryjuiceItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metaitem.02";
                      meta = 32101;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metaitem.02";
                      meta = 32104;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metaitem.02";
                      meta = 32112;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metaitem.02";
                      meta = 32115;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metaitem.02";
                      meta = 32118;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metaitem.02";
                      meta = 32125;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metaitem.02";
                      meta = 32127;
                      min = 1;
                      max = 3;
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metaitem.02";
                      meta = 32129;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metaitem.02";
                      meta = 32131;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metaitem.02";
                      meta = 32135;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "BloodArsenal:orange_juice";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "adventurebackpack:melonJuiceBottle";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                ];
              };
            };
          });
          default = [
            {
              level = 0;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 5;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:applejuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:melonjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:carrotjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:strawberryjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:lemonaideItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:blueberryjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:cherryjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:papayajuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:starfruitjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:orangejuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:peachjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:limejuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:mangojuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:pomegranatejuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:blackberryjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:raspberryjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:kiwijuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:cranberryjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:cactusfruitjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:plumjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:pearjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:apricotjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:figjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:grapefruitjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:persimmonjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:bananajuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:gooseberryjuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32101;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32104;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32112;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32115;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32118;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32125;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32127;
                    min = 1;
                    max = 3;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32129;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32131;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32135;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "BloodArsenal:orange_juice";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "adventurebackpack:melonJuiceBottle";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
              ];
            }
            {
              level = 1;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 5;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:cherrysodaItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:colasodaItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:gingersodaItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:grapesodaItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:grapefruitsodaItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:lemonlimesodaItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:orangesodaItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:rootbeersodaItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:strawberrysodaItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:chocolatemilkItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:soymilkItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:coconutmilkItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:chocolatemilkshakeItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:gooseberrymilkshakeItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:strawberrymilkshakeItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:bananamilkshakeItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32006;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32136;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32002;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32005;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 2525;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 2624;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 2;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:raspberryicedteaItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:chaiteaItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:teaItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:appleciderItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32000;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32001;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32003;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32004;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32007;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32008;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32009;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32100;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32103;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32107;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32109;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32120;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32121;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32122;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32123;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32126;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32128;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32133;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32137;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32002;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
              ];
            }
            {
              level = 4;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32102;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32105;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32110;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32111;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32113;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32114;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32116;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32117;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32119;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32130;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32132;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32134;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32106;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
              ];
            }
            {
              level = 3;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:asparagussoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:potatosoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:ricesoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:beetsoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:creamedbroccolisoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:splitpeasoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:turnipsoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:celerysoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:leekbaconsoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:lambbarleysoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:oldworldveggiesoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:gardensoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:seedsoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:cactussoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:creamofavocadosoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:peaandhamsoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:potatoandleeksoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:chickennoodlesoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:spidereyesoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:vegetablesoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:tomatosoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:onionsoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:cucumbersoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:carrotsoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:pumpkinsoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "etfuturum:beetroot_soup";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "etfuturum:suspicious_stew";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:mushroom_stew";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "etfuturum:rabbit_stew";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Automagy:foodstuff";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "witchery:stewraw";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "witchery:stew";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:meatystewItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Natura:natura.stewbowl";
                    meta = 14;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_dungeon_plains_json = lib.mkOption {
    description = "settings_loot_dungeon_plains_json configuration (./config/roguelike_dungeons/settings/loot_dungeon_plains.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_dungeon_plains.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_plains";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              loot_pools = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    type = lib.mkOption {
                      type = lib.types.str;
                      default = "FOOD";
                    };
                    each = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    quantity = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                  };
                });
                default = [
                  {
                    type = "FOOD";
                    each = true;
                    quantity = 5;
                  }
                  {
                    type = "ARMOUR";
                    each = true;
                    quantity = 3;
                  }
                ];
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "harvestcraft:appleyogurtItem";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                          min = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          max = lib.mkOption {
                            type = lib.types.int;
                            default = 3;
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "harvestcraft:appleyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:apricotyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:bananayogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:blackberryyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:blueberryyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:cherryyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:chocolateyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:coconutyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:figyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:grapeyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:kiwiyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:lemonyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:limeyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:mangoyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:melonyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:orangeyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:papayayogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:peachyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:pearyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:pineappleyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:plainyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:plumyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:pomegranateyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:pumpkinyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:starfruityogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:strawberryyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:raspberryyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:cranberryyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:gooseberryyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:persimmonyogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:grapefruityogurtItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                ];
              };
            };
          });
          default = [
            {
              level = 0;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 5;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:appleyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:apricotyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:bananayogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:blackberryyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:blueberryyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:cherryyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:chocolateyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:coconutyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:figyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:grapeyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:kiwiyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:lemonyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:limeyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:mangoyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:melonyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:orangeyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:papayayogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:peachyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:pearyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:pineappleyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:plainyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:plumyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:pomegranateyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:pumpkinyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:starfruityogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:strawberryyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:raspberryyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:cranberryyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:gooseberryyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:persimmonyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:grapefruityogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
              ];
            }
            {
              level = 1;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 5;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:honeysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:apricotjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:watermelonjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:strawberryjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:starfruitjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:raspberryjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:pomegranatejellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:peachjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:cranberryjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:kiwijellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:lemonjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:limejellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:mangojellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:orangejellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:papayajellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:cherryjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:blueberryjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:blackberryjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:applejellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:plumjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:figjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:grapefruitjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:persimmonjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:pearjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:gooseberryjellysandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:hamsweetpicklesandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
              ];
            }
            {
              level = 2;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:butteredpotatoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:chickenpotpieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:cornishpastyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:friesItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:hashItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:leekbaconsoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:mixedsaladItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:potatoandleeksoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:potatocakesItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:potatosoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:potroastItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:roastedrootveggiemedleyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:roastpotatoesItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:scallionbakedpotatoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:shepardspieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:vegetablesoupItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:veggiestripsItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:cottagepieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "BiomesOPlenty:food";
                    meta = 5;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "BiomesOPlenty:food";
                    meta = 11;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32205;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32206;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32203;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32202;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32002;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32200;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32201;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32205;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
              ];
            }
            {
              level = 4;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:applejellyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:applejuiceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:applepieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:applesauceItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:applesmoothieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:appleyogurtItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:caramelappleItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:cinnamonappleoatmealItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:fruitcrumbleItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:fruitpunchItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:fruitsaladItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:mincepieItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:ploughmanslunchItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:golden_apple";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:golden_apple";
                    meta = 1;
                    min = 1;
                    max = 3;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "BiomesOPlenty:food";
                    meta = 4;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
              ];
            }
            {
              level = 3;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:cheeseItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:cheeseontoastItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:grilledcheeseItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32576;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32222;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32232;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32242;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32558;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_dungeon_swamp_json = lib.mkOption {
    description = "settings_loot_dungeon_swamp_json configuration (./config/roguelike_dungeons/settings/loot_dungeon_swamp.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_dungeon_swamp.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_swamp";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              loot_pools = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    type = lib.mkOption {
                      type = lib.types.str;
                      default = "FOOD";
                    };
                    each = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    quantity = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                  };
                });
                default = [
                  {
                    type = "FOOD";
                    each = true;
                    quantity = 5;
                  }
                  {
                    type = "ARMOUR";
                    each = true;
                    quantity = 3;
                  }
                ];
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "harvestcraft:anchovyrawItem";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                          min = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          max = lib.mkOption {
                            type = lib.types.int;
                            default = 3;
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "harvestcraft:anchovyrawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:bassrawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:herringrawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:calamaricookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:calamarirawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:carprawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:catfishrawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:charrrawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:crayfishcookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:crayfishrawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:eelrawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:greenheartfishItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:grouperrawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:jellyfishrawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:mudfishrawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:octopusrawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:octopuscookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:perchrawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:scalloprawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:shrimprawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:scallopcookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:shrimpcookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:snailrawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:snailcookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:snapperrawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:tilapiarawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:tunarawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "harvestcraft:walleyerawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 15;
                  }
                  {
                    data = {
                      name = "harvestcraft:troutrawItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:fish";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:fish";
                      meta = 2;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:fish";
                      meta = 3;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:fish";
                      meta = 1;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:cooked_fished";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:cooked_fished";
                      meta = 1;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "berriespp:foodGoldfish";
                      meta = 1;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                ];
              };
            };
          });
          default = [
            {
              level = 0;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 5;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:anchovyrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:bassrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:herringrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:calamaricookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:calamarirawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:carprawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:catfishrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:charrrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:crayfishcookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:crayfishrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:eelrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:greenheartfishItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:grouperrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:jellyfishrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:mudfishrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:octopusrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:octopuscookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:perchrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:scalloprawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:shrimprawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:scallopcookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:shrimpcookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:snailrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:snailcookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:snapperrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:tilapiarawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:tunarawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:walleyerawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "harvestcraft:troutrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:fish";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:fish";
                    meta = 2;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:fish";
                    meta = 3;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:fish";
                    meta = 1;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:cooked_fished";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:cooked_fished";
                    meta = 1;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "berriespp:foodGoldfish";
                    meta = 1;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
              ];
            }
            {
              level = 1;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 5;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:anchovyrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:bassrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:herringrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:calamaricookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:calamarirawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:carprawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:catfishrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:charrrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:crayfishcookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:crayfishrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:eelrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:greenheartfishItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:grouperrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:jellyfishrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:mudfishrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:octopusrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:octopuscookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:perchrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:scalloprawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:shrimprawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:scallopcookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:shrimpcookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:snailrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:snailcookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:snapperrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:tilapiarawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:tunarawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "harvestcraft:walleyerawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "harvestcraft:troutrawItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:fish";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:fish";
                    meta = 2;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:fish";
                    meta = 3;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:fish";
                    meta = 1;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:cooked_fished";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:cooked_fished";
                    meta = 1;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "berriespp:foodGoldfish";
                    meta = 1;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
              ];
            }
            {
              level = 2;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:sushiItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:leafyfishsandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishtacoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishdinnerItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishsandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishsticksItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishandchipsItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishlettucewrapItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:californiarollItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
              ];
            }
            {
              level = 3;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:sushiItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:leafyfishsandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishtacoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishdinnerItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishsandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishsticksItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishandchipsItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishlettucewrapItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:californiarollItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
              ];
            }
            {
              level = 4;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:sushiItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:leafyfishsandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishtacoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishdinnerItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishsandwichItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishsticksItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishandchipsItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:fishlettucewrapItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "harvestcraft:californiarollItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 20;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_enchanting_json = lib.mkOption {
    description = "settings_loot_enchanting_json configuration (./config/roguelike_dungeons/settings/loot_enchanting.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_enchanting.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_enchanting";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 0 1 2 3 4 ];
              };
              loot_pools = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    type = lib.mkOption {
                      type = lib.types.str;
                      default = "ENCHANTING";
                    };
                    each = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    quantity = lib.mkOption {
                      type = lib.types.int;
                      default = 3;
                    };
                  };
                });
                default = [
                  {
                    type = "ENCHANTING";
                    each = true;
                    quantity = 3;
                  }
                  {
                    type = "TOOLS";
                    each = true;
                    quantity = 1;
                  }
                ];
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "enchanted_book";
                          };
                          nbt = lib.mkOption {
                            type = lib.types.str;
                            default = "{StoredEnchantments:[0:{id:35s,lvl:1s}]}";
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 8;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "enchanted_book";
                      nbt = "{StoredEnchantments:[0:{id:35s,lvl:1s}]}";
                    };
                    weight = 8;
                  }
                  {
                    data = {
                      name = "enchanted_book";
                      nbt = "{StoredEnchantments:[0:{id:35s,lvl:2s}]}";
                    };
                    weight = 4;
                  }
                  {
                    data = {
                      name = "enchanted_book";
                      nbt = "{StoredEnchantments:[0:{id:35s,lvl:3s}]}";
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "Automagy:phialExtra";
                      meta = 0;
                      min = 1;
                      max = 4;
                    };
                    weight = 6;
                  }
                  {
                    data = {
                      name = "minecraft:redstone";
                      meta = 0;
                      min = 20;
                      max = 32;
                    };
                    weight = 8;
                  }
                  {
                    data = {
                      name = "minecraft:dye";
                      meta = 4;
                      min = 20;
                      max = 32;
                    };
                    weight = 8;
                  }
                ];
              };
              type = lib.mkOption {
                type = lib.types.str;
                default = "ENCHANTING";
              };
              each = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              quantity = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          });
          default = [
            {
              level = [ 0 1 2 3 4 ];
              loot_pools = [
                {
                  type = "ENCHANTING";
                  each = true;
                  quantity = 3;
                }
                {
                  type = "TOOLS";
                  each = true;
                  quantity = 1;
                }
              ];
              loot = [
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:35s,lvl:1s}]}";
                  };
                  weight = 8;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:35s,lvl:2s}]}";
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:35s,lvl:3s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "Automagy:phialExtra";
                    meta = 0;
                    min = 1;
                    max = 4;
                  };
                  weight = 6;
                }
                {
                  data = {
                    name = "minecraft:redstone";
                    meta = 0;
                    min = 20;
                    max = 32;
                  };
                  weight = 8;
                }
                {
                  data = {
                    name = "minecraft:dye";
                    meta = 4;
                    min = 20;
                    max = 32;
                  };
                  weight = 8;
                }
              ];
            }
            {
              level = [ 0 1 2 3 4 ];
              type = "ENCHANTING";
              each = true;
              quantity = 8;
              loot = [
                {
                  data = {
                    name = "minecraft:book";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
              ];
            }
            {
              level = 0;
              loot_pools = [
                {
                  type = "ENCHANTING";
                  each = true;
                  quantity = 3;
                }
                {
                  type = "TOOLS";
                  each = true;
                  quantity = 1;
                }
              ];
              loot = [
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:0s,lvl:1s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:17s,lvl:2s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:19s,lvl:1s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:180s,lvl:1s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:16s,lvl:1s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:32s,lvl:1s}]}";
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 1;
              loot_pools = [
                {
                  type = "ENCHANTING";
                  each = true;
                  quantity = 3;
                }
                {
                  type = "TOOLS";
                  each = true;
                  quantity = 1;
                }
              ];
              loot = [
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:197s,lvl:1s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:126s,lvl:1s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:100s,lvl:1s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:32s,lvl:2s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:62s,lvl:1s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:6s,lvl:1s}]}";
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 2;
              loot_pools = [
                {
                  type = "ENCHANTING";
                  each = true;
                  quantity = 3;
                }
                {
                  type = "TOOLS";
                  each = true;
                  quantity = 1;
                }
              ];
              loot = [
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:48s,lvl:3s},1:{id:33s,lvl:1s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:34s,lvl:3s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:3s,lvl:3s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:19s,lvl:2s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:98s,lvl:5s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:101s,lvl:2s}]}";
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 3;
              loot_pools = [
                {
                  type = "ENCHANTING";
                  each = true;
                  quantity = 3;
                }
                {
                  type = "TOOLS";
                  each = true;
                  quantity = 1;
                }
              ];
              loot = [
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:21s,lvl:3s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:16s,lvl:4s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:4s,lvl:4s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:70s,lvl:3s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:34s,lvl:3s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:18s,lvl:4s},1:{id:48s,lvl:4s},2:{id:100s,lvl:3s}]}";
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 4;
              loot_pools = [
                {
                  type = "ENCHANTING";
                  each = true;
                  quantity = 3;
                }
                {
                  type = "TOOLS";
                  each = true;
                  quantity = 1;
                }
              ];
              loot = [
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:127s,lvl:5s},1:{id:129s,lvl:5s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:211s,lvl:2s},1:{id:48s,lvl:3s},2:{id:9s,lvl:1s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:16s,lvl:6s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:153s,lvl:3s},1:{id:46s,lvl:1s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{RepairCost:1,StoredEnchantments:[0:{id:98s,lvl:5s},1:{id:68s,lvl:1s}]}";
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enchanted_book";
                    nbt = "{StoredEnchantments:[0:{id:17s,lvl:5s},1:{id:20s,lvl:2s}]}";
                  };
                  weight = 1;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_hot_food_json = lib.mkOption {
    description = "settings_loot_hot_food_json configuration (./config/roguelike_dungeons/settings/loot_hot_food.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_hot_food.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_hot_food";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              loot_pools = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    type = lib.mkOption {
                      type = lib.types.str;
                      default = "FOOD";
                    };
                    each = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    quantity = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                  };
                });
                default = [
                  {
                    type = "FOOD";
                    each = true;
                    quantity = 5;
                  }
                  {
                    type = "ARMOUR";
                    each = true;
                    quantity = 3;
                  }
                ];
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "harvestcraft:calamaricookedItem";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                          min = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          max = lib.mkOption {
                            type = lib.types.int;
                            default = 3;
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "harvestcraft:calamaricookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:clamcookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:crabcookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:crayfishcookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:frogcookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:muttoncookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:octopuscookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:rabbitcookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:scallopcookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:shrimpcookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:snailcookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:turtlecookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:venisoncookedItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "harvestcraft:firmtofuItem";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "miscutils:item.BasicMetaFood";
                      meta = 7;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "miscutils:item.BasicMetaFood";
                      meta = 8;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "miscutils:item.BasicMetaFood";
                      meta = 3;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "miscutils:item.BasicMetaFood";
                      meta = 1;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "miscutils:item.BasicMetaFood";
                      meta = 5;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "minecraft:cooked_fished";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "minecraft:cooked_fished";
                      meta = 1;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "minecraft:cooked_porkchop";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "minecraft:cooked_beef";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "minecraft:cooked_chicken";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "Natura:impmeat";
                      meta = 1;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "ThaumicHorizons:meatCookedTH";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "TwilightForest:item.venisonCooked";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 1;
                  }
                ];
              };
            };
          });
          default = [
            {
              level = 0;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 5;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:calamaricookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:clamcookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:crabcookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:crayfishcookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:frogcookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:muttoncookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:octopuscookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:rabbitcookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:scallopcookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:shrimpcookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:snailcookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:turtlecookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:venisoncookedItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:firmtofuItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "miscutils:item.BasicMetaFood";
                    meta = 7;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "miscutils:item.BasicMetaFood";
                    meta = 8;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "miscutils:item.BasicMetaFood";
                    meta = 3;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "miscutils:item.BasicMetaFood";
                    meta = 1;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "miscutils:item.BasicMetaFood";
                    meta = 5;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:cooked_fished";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:cooked_fished";
                    meta = 1;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:cooked_porkchop";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:cooked_beef";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:cooked_chicken";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "Natura:impmeat";
                    meta = 1;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "ThaumicHorizons:meatCookedTH";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TwilightForest:item.venisonCooked";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 1;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 5;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:pistachiobakedsalmonItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:scallionbakedpotatoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:bakedbeetsItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:bakedbeansItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:bakedhamItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:loadedbakedpotatoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:bakedsweetpotatoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:baked_potato";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32570;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 2;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:pistachiobakedsalmonItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:scallionbakedpotatoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:bakedbeetsItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:bakedbeansItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:bakedhamItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:loadedbakedpotatoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:bakedsweetpotatoItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:baked_potato";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32570;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 3;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:sundayroastItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:roastpotatoesItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:roastedpumpkinseedsItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:potroastItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:roastedrootveggiemedleyItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:ovenroastedcauliflowerItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:roastedchestnutItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:roastchickenItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 32201;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 4;
              loot_pools = [
                {
                  type = "FOOD";
                  each = true;
                  quantity = 6;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "harvestcraft:hotdogItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:hotwingsItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "harvestcraft:hotchocolateItem";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 1;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_junk_json = lib.mkOption {
    description = "settings_loot_junk_json configuration (./config/roguelike_dungeons/settings/loot_junk.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_junk.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_junk";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              each = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              quantity = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "minecraft:clay_ball";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                          min = lib.mkOption {
                            type = lib.types.int;
                            default = 3;
                          };
                          max = lib.mkOption {
                            type = lib.types.int;
                            default = 7;
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 30;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "minecraft:clay_ball";
                      meta = 0;
                      min = 3;
                      max = 7;
                    };
                    weight = 30;
                  }
                  {
                    data = {
                      name = "minecraft:reeds";
                      meta = 0;
                      min = 3;
                      max = 5;
                    };
                    weight = 30;
                  }
                  {
                    data = {
                      name = "minecraft:bone";
                      meta = 0;
                      min = 3;
                      max = 5;
                    };
                    weight = 30;
                  }
                  {
                    data = {
                      name = "minecraft:sand";
                      meta = 0;
                      min = 3;
                      max = 7;
                    };
                    weight = 30;
                  }
                  {
                    data = {
                      name = "minecraft:stick";
                      meta = 0;
                      min = 3;
                      max = 7;
                    };
                    weight = 30;
                  }
                  {
                    data = {
                      name = "minecraft:coal";
                      meta = 0;
                      min = 1;
                      max = 4;
                    };
                    weight = 30;
                  }
                  {
                    data = {
                      name = "minecraft:gravel";
                      meta = 0;
                      min = 3;
                      max = 7;
                    };
                    weight = 30;
                  }
                  {
                    data = {
                      name = "minecraft:leather";
                      meta = 0;
                      min = 2;
                      max = 4;
                    };
                    weight = 30;
                  }
                  {
                    data = {
                      name = "minecraft:arrow";
                      meta = 0;
                      min = 3;
                      max = 9;
                    };
                    weight = 30;
                  }
                  {
                    data = {
                      name = "minecraft:flint";
                      meta = 0;
                      min = 3;
                      max = 7;
                    };
                    weight = 30;
                  }
                  {
                    data = {
                      name = "minecraft:rotten_flesh";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 30;
                  }
                  {
                    data = {
                      name = "Thaumcraft:ItemLootBag";
                      meta = 0;
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "Natura:barleyFood";
                      meta = 3;
                      min = 1;
                      max = 7;
                    };
                    weight = 20;
                  }
                  {
                    data = {
                      name = "minecraft:name_tag";
                      meta = 0;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "enhancedlootbags:lootbag";
                      meta = 0;
                    };
                    weight = 1;
                  }
                ];
              };
            };
          });
          default = [
            {
              level = 0;
              each = true;
              quantity = 8;
              loot = [
                {
                  data = {
                    name = "minecraft:clay_ball";
                    meta = 0;
                    min = 3;
                    max = 7;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:reeds";
                    meta = 0;
                    min = 3;
                    max = 5;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:bone";
                    meta = 0;
                    min = 3;
                    max = 5;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:sand";
                    meta = 0;
                    min = 3;
                    max = 7;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:stick";
                    meta = 0;
                    min = 3;
                    max = 7;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:coal";
                    meta = 0;
                    min = 1;
                    max = 4;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:gravel";
                    meta = 0;
                    min = 3;
                    max = 7;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:leather";
                    meta = 0;
                    min = 2;
                    max = 4;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:arrow";
                    meta = 0;
                    min = 3;
                    max = 9;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:flint";
                    meta = 0;
                    min = 3;
                    max = 7;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:rotten_flesh";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "Thaumcraft:ItemLootBag";
                    meta = 0;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "Natura:barleyFood";
                    meta = 3;
                    min = 1;
                    max = 7;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:name_tag";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enhancedlootbags:lootbag";
                    meta = 0;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 1;
              each = true;
              quantity = 8;
              loot = [
                {
                  data = {
                    name = "minecraft:clay_ball";
                    meta = 0;
                    min = 3;
                    max = 7;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:paper";
                    meta = 0;
                    min = 3;
                    max = 5;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:sand";
                    meta = 0;
                    min = 3;
                    max = 7;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:torch";
                    meta = 0;
                    min = 3;
                    max = 7;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:coal";
                    meta = 0;
                    min = 1;
                    max = 4;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:gunpowder";
                    meta = 0;
                    min = 1;
                    max = 4;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:gravel";
                    meta = 0;
                    min = 3;
                    max = 7;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "Backpack:tannedLeather";
                    meta = 0;
                    min = 2;
                    max = 4;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:dye";
                    meta = 4;
                    min = 4;
                    max = 10;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "minecraft:arrow";
                    meta = 0;
                    min = 3;
                    max = 9;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "minecraft:redstone";
                    meta = 0;
                    min = 3;
                    max = 24;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "etfuturum:tipped_arrow";
                    meta = 8264;
                    min = 3;
                    max = 14;
                  };
                  weight = 11;
                }
                {
                  data = {
                    name = "etfuturum:tipped_arrow";
                    meta = 8266;
                    min = 3;
                    max = 9;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "etfuturum:tipped_arrow";
                    meta = 8229;
                    min = 3;
                    max = 9;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:flint";
                    meta = 0;
                    min = 3;
                    max = 7;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:bone";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "Thaumcraft:ItemLootBag";
                    meta = 0;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "minecraft:name_tag";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:string";
                    meta = 0;
                    min = 1;
                    max = 7;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "enhancedlootbags:lootbag";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enhancedlootbags:lootbag";
                    meta = 36;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 2;
              each = true;
              quantity = 8;
              loot = [
                {
                  data = {
                    name = "minecraft:book";
                    meta = 0;
                    min = 3;
                    max = 5;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "TConstruct:blankPattern";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:torch";
                    meta = 0;
                    min = 3;
                    max = 7;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:coal";
                    meta = 0;
                    min = 1;
                    max = 4;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:gunpowder";
                    meta = 0;
                    min = 1;
                    max = 4;
                  };
                  weight = 50;
                }
                {
                  data = {
                    name = "etfuturum:tipped_arrow";
                    meta = 8264;
                    min = 3;
                    max = 14;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "etfuturum:tipped_arrow";
                    meta = 8266;
                    min = 3;
                    max = 9;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "etfuturum:tipped_arrow";
                    meta = 8229;
                    min = 3;
                    max = 9;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "minecraft:ghast_tear";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "Thaumcraft:ItemLootBag";
                    meta = 1;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "minecraft:name_tag";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:redstone";
                    meta = 0;
                    min = 3;
                    max = 24;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:string";
                    meta = 0;
                    min = 1;
                    max = 7;
                  };
                  weight = 60;
                }
                {
                  data = {
                    name = "minecraft:bone";
                    meta = 0;
                    min = 1;
                    max = 7;
                  };
                  weight = 60;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 30503;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:dye";
                    meta = 4;
                    min = 4;
                    max = 10;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "gregtech:gt.blockreinforced";
                    meta = 5;
                    min = 2;
                    max = 4;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "enhancedlootbags:lootbag";
                    meta = 1;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enhancedlootbags:lootbag";
                    meta = 28;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enhancedlootbags:lootbag";
                    meta = 36;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 3;
              each = true;
              quantity = 8;
              loot = [
                {
                  data = {
                    name = "minecraft:book";
                    meta = 0;
                    min = 3;
                    max = 5;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:ender_pearl";
                    meta = 0;
                    min = 3;
                    max = 5;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "TConstruct:blankPattern";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:torch";
                    meta = 0;
                    min = 3;
                    max = 7;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "gregtech:gt.blockreinforced";
                    meta = 5;
                    min = 2;
                    max = 4;
                  };
                  weight = 50;
                }
                {
                  data = {
                    name = "etfuturum:tipped_arrow";
                    meta = 8264;
                    min = 3;
                    max = 14;
                  };
                  weight = 40;
                }
                {
                  data = {
                    name = "etfuturum:tipped_arrow";
                    meta = 8266;
                    min = 3;
                    max = 9;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "etfuturum:tipped_arrow";
                    meta = 8229;
                    min = 3;
                    max = 9;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:ghast_tear";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "Thaumcraft:ItemLootBag";
                    meta = 1;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "minecraft:name_tag";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:redstone";
                    meta = 0;
                    min = 3;
                    max = 24;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:string";
                    meta = 0;
                    min = 1;
                    max = 7;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:bone";
                    meta = 0;
                    min = 1;
                    max = 7;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "enhancedlootbags:lootbag";
                    meta = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:dye";
                    meta = 4;
                    min = 4;
                    max = 10;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "enhancedlootbags:lootbag";
                    meta = 51;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enhancedlootbags:lootbag";
                    meta = 25;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enhancedlootbags:lootbag";
                    meta = 28;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 4;
              each = true;
              quantity = 8;
              loot = [
                {
                  data = {
                    name = "minecraft:book";
                    meta = 0;
                    min = 3;
                    max = 5;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:ender_pearl";
                    meta = 0;
                    min = 3;
                    max = 5;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "TConstruct:blankPattern";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:torch";
                    meta = 0;
                    min = 3;
                    max = 7;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "gregtech:gt.blockreinforced";
                    meta = 5;
                    min = 2;
                    max = 4;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "etfuturum:tipped_arrow";
                    meta = 8264;
                    min = 3;
                    max = 14;
                  };
                  weight = 35;
                }
                {
                  data = {
                    name = "etfuturum:tipped_arrow";
                    meta = 8266;
                    min = 3;
                    max = 9;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "etfuturum:tipped_arrow";
                    meta = 8229;
                    min = 3;
                    max = 9;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "minecraft:ghast_tear";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:dye";
                    meta = 4;
                    min = 4;
                    max = 10;
                  };
                  weight = 35;
                }
                {
                  data = {
                    name = "Thaumcraft:ItemLootBag";
                    meta = 2;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "minecraft:redstone";
                    meta = 0;
                    min = 3;
                    max = 24;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "minecraft:name_tag";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:magma_cream";
                    meta = 0;
                    min = 1;
                    max = 7;
                  };
                  weight = 20;
                }
                {
                  data = {
                    name = "enhancedlootbags:lootbag";
                    meta = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enhancedlootbags:lootbag";
                    meta = 51;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enhancedlootbags:lootbag";
                    meta = 25;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "enhancedlootbags:lootbag";
                    meta = 28;
                  };
                  weight = 1;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_music_json = lib.mkOption {
    description = "settings_loot_music_json configuration (./config/roguelike_dungeons/settings/loot_music.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_music.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_music";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 0 1 2 3 4 ];
              };
              type = lib.mkOption {
                type = lib.types.str;
                default = "MUSIC";
              };
              each = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              quantity = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "minecraft:record_11";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "minecraft:record_11";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:record_13";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:record_cat";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:record_blocks";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:record_chirp";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:record_far";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:record_mall";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:record_mellohi";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:record_stal";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:record_strad";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:record_ward";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:record_wait";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "BiomesOPlenty:record_corruption";
                      meta = 0;
                    };
                    weight = 2;
                  }
                  {
                    data = {
                      name = "BiomesOPlenty:record_wanderer";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "Botania:recordGaia1";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "Botania:recordGaia2";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "etfuturum:otherside_record";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "HardcoreEnderExpansion:music_disk";
                      meta = 0;
                    };
                    weight = 5;
                  }
                  {
                    data = {
                      name = "HardcoreEnderExpansion:music_disk";
                      meta = 1;
                    };
                    weight = 5;
                  }
                  {
                    data = {
                      name = "HardcoreEnderExpansion:music_disk";
                      meta = 2;
                    };
                    weight = 5;
                  }
                  {
                    data = {
                      name = "HardcoreEnderExpansion:music_disk";
                      meta = 3;
                    };
                    weight = 5;
                  }
                  {
                    data = {
                      name = "HardcoreEnderExpansion:music_disk";
                      meta = 4;
                    };
                    weight = 5;
                  }
                  {
                    data = {
                      name = "HardcoreEnderExpansion:music_disk";
                      meta = 5;
                    };
                    weight = 5;
                  }
                  {
                    data = {
                      name = "HardcoreEnderExpansion:music_disk";
                      meta = 6;
                    };
                    weight = 5;
                  }
                  {
                    data = {
                      name = "HardcoreEnderExpansion:music_disk";
                      meta = 7;
                    };
                    weight = 5;
                  }
                  {
                    data = {
                      name = "HardcoreEnderExpansion:music_disk";
                      meta = 8;
                    };
                    weight = 5;
                  }
                  {
                    data = {
                      name = "HardcoreEnderExpansion:music_disk";
                      meta = 9;
                    };
                    weight = 5;
                  }
                ];
              };
            };
          });
          default = [
            {
              level = [ 0 1 2 3 4 ];
              type = "MUSIC";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "minecraft:record_11";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:record_13";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:record_cat";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:record_blocks";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:record_chirp";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:record_far";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:record_mall";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:record_mellohi";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:record_stal";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:record_strad";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:record_ward";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:record_wait";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "BiomesOPlenty:record_corruption";
                    meta = 0;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "BiomesOPlenty:record_wanderer";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Botania:recordGaia1";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Botania:recordGaia2";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "etfuturum:otherside_record";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "HardcoreEnderExpansion:music_disk";
                    meta = 0;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "HardcoreEnderExpansion:music_disk";
                    meta = 1;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "HardcoreEnderExpansion:music_disk";
                    meta = 2;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "HardcoreEnderExpansion:music_disk";
                    meta = 3;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "HardcoreEnderExpansion:music_disk";
                    meta = 4;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "HardcoreEnderExpansion:music_disk";
                    meta = 5;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "HardcoreEnderExpansion:music_disk";
                    meta = 6;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "HardcoreEnderExpansion:music_disk";
                    meta = 7;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "HardcoreEnderExpansion:music_disk";
                    meta = 8;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "HardcoreEnderExpansion:music_disk";
                    meta = 9;
                  };
                  weight = 5;
                }
              ];
            }
            {
              level = [ 4 ];
              type = "MUSIC";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "etfuturum:pigstep_record";
                    meta = 0;
                  };
                  weight = 30;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_ore_json = lib.mkOption {
    description = "settings_loot_ore_json configuration (./config/roguelike_dungeons/settings/loot_ore.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_ore.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_ore";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              loot_pools = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    type = lib.mkOption {
                      type = lib.types.str;
                      default = "ORE";
                    };
                    each = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    quantity = lib.mkOption {
                      type = lib.types.int;
                      default = 8;
                    };
                  };
                });
                default = [
                  {
                    type = "ORE";
                    each = true;
                    quantity = 8;
                  }
                  {
                    type = "WEAPONS";
                    each = true;
                    quantity = 4;
                  }
                ];
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "minecraft:emerald";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                          min = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          max = lib.mkOption {
                            type = lib.types.int;
                            default = 3;
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "minecraft:emerald";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:diamond";
                      meta = 0;
                      min = 1;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metaitem.01";
                      meta = 11305;
                      min = 3;
                      max = 4;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metaitem.01";
                      meta = 11304;
                      min = 4;
                      max = 10;
                    };
                    weight = 15;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metaitem.01";
                      meta = 11036;
                      min = 4;
                      max = 10;
                    };
                    weight = 15;
                  }
                  {
                    data = {
                      name = "minecraft:gold_ingot";
                      meta = 0;
                      min = 5;
                      max = 8;
                    };
                    weight = 15;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metaitem.01";
                      meta = 11035;
                      min = 5;
                      max = 15;
                    };
                    weight = 30;
                  }
                  {
                    data = {
                      name = "minecraft:iron_ingot";
                      meta = 0;
                      min = 5;
                      max = 15;
                    };
                    weight = 30;
                  }
                  {
                    data = {
                      name = "minecraft:coal";
                      meta = 0;
                      min = 5;
                      max = 15;
                    };
                    weight = 20;
                  }
                ];
              };
            };
          });
          default = [
            {
              level = 0;
              loot_pools = [
                {
                  type = "ORE";
                  each = true;
                  quantity = 8;
                }
                {
                  type = "WEAPONS";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "minecraft:emerald";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:diamond";
                    meta = 0;
                    min = 1;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11305;
                    min = 3;
                    max = 4;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11304;
                    min = 4;
                    max = 10;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11036;
                    min = 4;
                    max = 10;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "minecraft:gold_ingot";
                    meta = 0;
                    min = 5;
                    max = 8;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11035;
                    min = 5;
                    max = 15;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:iron_ingot";
                    meta = 0;
                    min = 5;
                    max = 15;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:coal";
                    meta = 0;
                    min = 5;
                    max = 15;
                  };
                  weight = 20;
                }
              ];
            }
            {
              level = 1;
              loot_pools = [
                {
                  type = "ORE";
                  each = true;
                  quantity = 9;
                }
                {
                  type = "WEAPONS";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11335;
                    min = 3;
                    max = 5;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11371;
                    min = 3;
                    max = 5;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11054;
                    min = 4;
                    max = 10;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11300;
                    min = 4;
                    max = 10;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11305;
                    min = 2;
                    max = 4;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11057;
                    min = 5;
                    max = 15;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11304;
                    min = 3;
                    max = 8;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:iron_ingot";
                    meta = 0;
                    min = 5;
                    max = 15;
                  };
                  weight = 30;
                }
              ];
            }
            {
              level = 2;
              loot_pools = [
                {
                  type = "ORE";
                  each = true;
                  quantity = 9;
                }
                {
                  type = "WEAPONS";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 30501;
                    min = 1;
                    max = 2;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.02";
                    meta = 30500;
                    min = 1;
                    max = 2;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 8502;
                    min = 2;
                    max = 3;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "minecraft:emerald";
                    meta = 0;
                    min = 2;
                    max = 3;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "minecraft:diamond";
                    meta = 0;
                    min = 2;
                    max = 3;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11054;
                    min = 3;
                    max = 9;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:gold_ingot";
                    meta = 0;
                    min = 3;
                    max = 9;
                  };
                  weight = 30;
                }
              ];
            }
            {
              level = 3;
              loot_pools = [
                {
                  type = "ORE";
                  each = true;
                  quantity = 10;
                }
                {
                  type = "WEAPONS";
                  each = true;
                  quantity = 4;
                }
              ];
              loot = [
                {
                  data = {
                    name = "miscutils:itemIngotTumbaga";
                    meta = 0;
                    min = 6;
                    max = 18;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11033;
                    min = 3;
                    max = 5;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11880;
                    min = 4;
                    max = 10;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "minecraft:dye";
                    meta = 4;
                    min = 4;
                    max = 10;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11308;
                    min = 4;
                    max = 6;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11300;
                    min = 5;
                    max = 15;
                  };
                  weight = 30;
                }
                {
                  data = {
                    name = "minecraft:redstone";
                    meta = 0;
                    min = 3;
                    max = 24;
                  };
                  weight = 30;
                }
              ];
            }
            {
              level = 4;
              loot_pools = [
                {
                  type = "ORE";
                  each = true;
                  quantity = 8;
                }
                {
                  type = "WEAPONS";
                  each = true;
                  quantity = 3;
                }
              ];
              loot = [
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 2347;
                    min = 3;
                    max = 5;
                  };
                  weight = 9;
                }
                {
                  data = {
                    name = "etfuturum:ancient_debris";
                    meta = 11330;
                    min = 1;
                    max = 2;
                  };
                  weight = 6;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11335;
                    min = 2;
                    max = 4;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11371;
                    min = 2;
                    max = 4;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11305;
                    min = 2;
                    max = 4;
                  };
                  weight = 15;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 11089;
                    min = 3;
                    max = 10;
                  };
                  weight = 40;
                }
                {
                  data = {
                    name = "gregtech:gt.metaitem.01";
                    meta = 2022;
                    min = 3;
                    max = 24;
                  };
                  weight = 40;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_potions_json = lib.mkOption {
    description = "settings_loot_potions_json configuration (./config/roguelike_dungeons/settings/loot_potions.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_potions.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_potions";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 0 1 2 3 4 ];
              };
              loot_pools = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    type = lib.mkOption {
                      type = lib.types.str;
                      default = "POTIONS";
                    };
                    each = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    quantity = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                  };
                });
                default = [
                  {
                    type = "POTIONS";
                    each = true;
                    quantity = 2;
                  }
                  {
                    type = "ARMOUR";
                    each = true;
                    quantity = 1;
                  }
                ];
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "minecraft:potion";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 16417;
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "minecraft:potion";
                      meta = 16417;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "minecraft:potion";
                      meta = 8225;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "minecraft:potion";
                      meta = 8197;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "minecraft:potion";
                      meta = 8229;
                    };
                    weight = 1;
                  }
                ];
              };
            };
          });
          default = [
            {
              level = [ 0 1 2 3 4 ];
              loot_pools = [
                {
                  type = "POTIONS";
                  each = true;
                  quantity = 2;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 1;
                }
              ];
              loot = [
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16417;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8225;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8197;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8229;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 0;
              loot_pools = [
                {
                  type = "POTIONS";
                  each = true;
                  quantity = 4;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 2;
                }
              ];
              loot = [
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16458;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8225;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8194;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8226;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8194;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8238;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8265;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 1;
              loot_pools = [
                {
                  type = "POTIONS";
                  each = true;
                  quantity = 4;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 2;
                }
              ];
              loot = [
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8225;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8194;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8226;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8194;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8238;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16422;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16454;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8264;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16428;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16460;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8265;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 2;
              loot_pools = [
                {
                  type = "POTIONS";
                  each = true;
                  quantity = 4;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 2;
                }
              ];
              loot = [
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8225;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8194;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8226;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8194;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8238;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16422;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16454;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8264;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16428;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16460;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "etfuturum:lingering_potion";
                    meta = 8229;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "etfuturum:lingering_potion";
                    meta = 8236;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "etfuturum:lingering_potion";
                    meta = 8264;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "etfuturum:lingering_potion";
                    meta = 8266;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "etfuturum:lingering_potion";
                    meta = 8268;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8265;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 3;
              loot_pools = [
                {
                  type = "POTIONS";
                  each = true;
                  quantity = 4;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 2;
                }
              ];
              loot = [
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8225;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8194;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8226;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8194;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8238;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16422;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16454;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8264;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16428;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16460;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "etfuturum:lingering_potion";
                    meta = 8229;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "etfuturum:lingering_potion";
                    meta = 8236;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "etfuturum:lingering_potion";
                    meta = 8264;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "etfuturum:lingering_potion";
                    meta = 8266;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "etfuturum:lingering_potion";
                    meta = 8268;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "RandomThings:imbue";
                    meta = 0;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "RandomThings:imbue";
                    meta = 1;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "RandomThings:imbue";
                    meta = 2;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "RandomThings:imbue";
                    meta = 4;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "RandomThings:imbue";
                    meta = 5;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8265;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 4;
              loot_pools = [
                {
                  type = "POTIONS";
                  each = true;
                  quantity = 4;
                }
                {
                  type = "ARMOUR";
                  each = true;
                  quantity = 2;
                }
              ];
              loot = [
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8225;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8194;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8226;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8194;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8238;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16422;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16454;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8264;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16428;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16460;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "etfuturum:lingering_potion";
                    meta = 8229;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "etfuturum:lingering_potion";
                    meta = 8236;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "etfuturum:lingering_potion";
                    meta = 8264;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "etfuturum:lingering_potion";
                    meta = 8266;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "etfuturum:lingering_potion";
                    meta = 8268;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "RandomThings:imbue";
                    meta = 0;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "RandomThings:imbue";
                    meta = 1;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "RandomThings:imbue";
                    meta = 2;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "RandomThings:imbue";
                    meta = 4;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "RandomThings:imbue";
                    meta = 5;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8159;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8259;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8227;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 16451;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "minecraft:potion";
                    meta = 8265;
                  };
                  weight = 1;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_reward_json = lib.mkOption {
    description = "settings_loot_reward_json configuration (./config/roguelike_dungeons/settings/loot_reward.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_reward.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_reward";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              type = lib.mkOption {
                type = lib.types.str;
                default = "REWARD";
              };
              each = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              quantity = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "minecraft:spawn_egg";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 99;
                          };
                          min = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                          };
                          max = lib.mkOption {
                            type = lib.types.int;
                            default = 3;
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "minecraft:spawn_egg";
                      meta = 99;
                      min = 2;
                      max = 3;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "ExtraUtilities:golden_lasso";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "JABBA:mover";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "Forestry:factory2";
                      meta = 2;
                      min = 4;
                      max = 5;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:obsidian";
                      meta = 0;
                      min = 10;
                      max = 11;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "minecraft:saddle";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "IronChest:BlockIronChest";
                      meta = 4;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "TConstruct:slimesling";
                      meta = 0;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "TConstruct:materials";
                      meta = 7;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "gregtech:gt.blockmachines";
                      meta = 817;
                    };
                    weight = 10;
                  }
                  {
                    data = {
                      name = "ExtraUtilities:sound_muffler";
                      meta = 0;
                    };
                    weight = 5;
                  }
                  {
                    data = {
                      name = "ExtraUtilities:sound_muffler";
                      meta = 1;
                    };
                    weight = 5;
                  }
                ];
              };
            };
          });
          default = [
            {
              level = 0;
              type = "REWARD";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "minecraft:spawn_egg";
                    meta = 99;
                    min = 2;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "ExtraUtilities:golden_lasso";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "JABBA:mover";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Forestry:factory2";
                    meta = 2;
                    min = 4;
                    max = 5;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:obsidian";
                    meta = 0;
                    min = 10;
                    max = 11;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:saddle";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "IronChest:BlockIronChest";
                    meta = 4;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "TConstruct:slimesling";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "TConstruct:materials";
                    meta = 7;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.blockmachines";
                    meta = 817;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "ExtraUtilities:sound_muffler";
                    meta = 0;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "ExtraUtilities:sound_muffler";
                    meta = 1;
                  };
                  weight = 5;
                }
              ];
            }
            {
              level = 1;
              type = "REWARD";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "chisel:obsidianChisel";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "IronChest:BlockIronChest";
                    meta = 6;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "IC2:itemArmorAlloyChestplate";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "TConstruct:materials";
                    meta = 26;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "ExtraUtilities:spike_base_diamond";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "ExtraUtilities:trading_post";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "ArchitectureCraft:sawbench";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "OpenBlocks:hangglider";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Backpack:workbenchbackpack";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "naturescompass:NaturesCompass";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.blockmachines";
                    meta = 9250;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "gregtech:gt.blockmachines";
                    meta = 9330;
                  };
                  weight = 5;
                }
              ];
            }
            {
              level = 2;
              type = "REWARD";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "adventurebackpack:adventureBackpack";
                    meta = 24;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "etfuturum:totem_of_undying";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "IronChest:BlockIronChest";
                    meta = 2;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "TConstruct:materials";
                    meta = 8;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "malisisdoors:door_factory";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "OpenBlocks:guide";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "ExtraTrees:machine";
                    meta = 1;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "ExtraTrees:machine";
                    meta = 2;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "ExtraTrees:machine";
                    meta = 3;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "ExtraTrees:machine";
                    meta = 4;
                  };
                  weight = 2;
                }
              ];
            }
            {
              level = 3;
              type = "REWARD";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "TConstruct:materials";
                    meta = 6;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Avaritia:Ultimate_Stew";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "BinnieCore:storage";
                    meta = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "ExtraUtilities:chandelier";
                    meta = 0;
                    min = 5;
                    max = 8;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Forestry:beealyzer";
                    meta = 0;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "Forestry:flutterlyzer";
                    meta = 0;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "Forestry:treealyzer";
                    meta = 0;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "MagicBees:frameOblivion";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "OpenBlocks:builder_guide";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "ThaumicHorizons:boatThaumium";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "OpenBlocks:elevator";
                    meta = 0;
                    min = 2;
                    max = 3;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Thaumcraft:blockMetalDevice";
                    meta = 6;
                    min = 6;
                    max = 8;
                  };
                  weight = 10;
                }
              ];
            }
            {
              level = 4;
              type = "REWARD";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "adventurebackpack:copterPack";
                    meta = 0;
                    nbt = "{wearableData:{}}";
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Avaritia:Cosmic_Meatballs";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Backpack:backpack";
                    meta = 100;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "BinnieCore:storage";
                    meta = 5;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "Thaumcraft:WandCasting";
                    meta = 36;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "JABBA:moverDiamond";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "TConstruct:creativeModifier";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "gregtech:gt.detrav.metatool.01";
                    meta = 2;
                    nbt = "{GT.ToolStats:{SecondaryMaterial:\"Steel\",PrimaryMaterial:\"SteelMagnetic\",Mode:0b,MaxDamage:1300L}}";
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "DraconicEvolution:magnet";
                    meta = 0;
                  };
                  weight = 10;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_smith_json = lib.mkOption {
    description = "settings_loot_smith_json configuration (./config/roguelike_dungeons/settings/loot_smith.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_smith.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_smith";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 0 1 2 3 4 ];
              };
              type = lib.mkOption {
                type = lib.types.str;
                default = "SMITH";
              };
              each = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              quantity = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "minecraft:bucket";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                        };
                      };
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "minecraft:bucket";
                      meta = 0;
                    };
                  }
                ];
              };
            };
          });
          default = [
            {
              level = [ 0 1 2 3 4 ];
              type = "SMITH";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "minecraft:bucket";
                    meta = 0;
                  };
                }
              ];
            }
            {
              level = [ 0 1 2 3 4 ];
              type = "SMITH";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "minecraft:iron_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:20s,lvl:2s}],display:{Name:\"Hero's Sword\"}}";
                  };
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_starter_json = lib.mkOption {
    description = "settings_loot_starter_json configuration (./config/roguelike_dungeons/settings/loot_starter.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_starter.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_starter";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 0 1 2 3 4 ];
              };
              type = lib.mkOption {
                type = lib.types.str;
                default = "STARTER";
              };
              each = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              quantity = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "IguanaTweaksTConstruct:clayBucketMilk";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                          weight = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                        };
                      };
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "IguanaTweaksTConstruct:clayBucketMilk";
                      meta = 0;
                      weight = 10;
                    };
                  }
                ];
              };
            };
          });
          default = [
            {
              level = [ 0 1 2 3 4 ];
              type = "STARTER";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "IguanaTweaksTConstruct:clayBucketMilk";
                    meta = 0;
                    weight = 10;
                  };
                }
              ];
            }
            {
              level = [ 0 1 2 3 4 ];
              type = "STARTER";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "minecraft:leather_chestplate";
                    meta = 0;
                  };
                }
              ];
            }
            {
              level = [ 0 1 2 3 4 ];
              type = "STARTER";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "minecraft:bow";
                    meta = 0;
                  };
                }
              ];
            }
            {
              level = [ 0 1 2 3 4 ];
              type = "STARTER";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "minecraft:stone_sword";
                    meta = 0;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = [ 0 1 2 3 4 ];
              type = "STARTER";
              each = true;
              quantity = 8;
              loot = [
                {
                  data = {
                    name = "minecraft:bread";
                    meta = 0;
                  };
                }
                {
                  data = {
                    name = "minecraft:cooked_beef";
                    meta = 0;
                  };
                }
              ];
            }
            {
              level = [ 0 1 2 3 4 ];
              type = "STARTER";
              each = true;
              quantity = 4;
              loot = [
                {
                  data = {
                    name = "minecraft:torch";
                    meta = 0;
                    min = 4;
                    max = 12;
                  };
                }
                {
                  data = {
                    name = "minecraft:arrow";
                    meta = 0;
                    min = 2;
                    max = 8;
                  };
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_supplies_json = lib.mkOption {
    description = "settings_loot_supplies_json configuration (./config/roguelike_dungeons/settings/loot_supplies.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_supplies.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_supplies";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 0 1 2 3 4 ];
              };
              type = lib.mkOption {
                type = lib.types.str;
                default = "SUPPLIES";
              };
              each = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              quantity = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "Forestry:builderBag";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                          weight = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                        };
                      };
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "Forestry:builderBag";
                      meta = 0;
                      weight = 10;
                    };
                  }
                  {
                    data = {
                      name = "Forestry:diggerBag";
                      meta = 0;
                      weight = 10;
                    };
                  }
                  {
                    data = {
                      name = "Forestry:foresterBag";
                      meta = 0;
                      weight = 10;
                    };
                  }
                  {
                    data = {
                      name = "Forestry:hunterBag";
                      meta = 0;
                      weight = 25;
                    };
                  }
                  {
                    data = {
                      name = "Forestry:minerBag";
                      meta = 0;
                      weight = 10;
                    };
                  }
                ];
              };
            };
          });
          default = [
            {
              level = [ 0 1 2 3 4 ];
              type = "SUPPLIES";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "Forestry:builderBag";
                    meta = 0;
                    weight = 10;
                  };
                }
                {
                  data = {
                    name = "Forestry:diggerBag";
                    meta = 0;
                    weight = 10;
                  };
                }
                {
                  data = {
                    name = "Forestry:foresterBag";
                    meta = 0;
                    weight = 10;
                  };
                }
                {
                  data = {
                    name = "Forestry:hunterBag";
                    meta = 0;
                    weight = 25;
                  };
                }
                {
                  data = {
                    name = "Forestry:minerBag";
                    meta = 0;
                    weight = 10;
                  };
                }
              ];
            }
            {
              level = [ 0 1 2 3 4 ];
              type = "SUPPLIES";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "minecraft:bucket";
                    meta = 0;
                  };
                }
              ];
            }
            {
              level = [ 0 1 2 3 4 ];
              type = "SUPPLIES";
              each = true;
              quantity = 2;
              loot = [
                {
                  data = {
                    name = "minecraft:golden_apple";
                    meta = 0;
                  };
                }
              ];
            }
            {
              level = [ 0 1 2 3 4 ];
              type = "SUPPLIES";
              each = true;
              quantity = 6;
              loot = [
                {
                  data = {
                    name = "minecraft:torch";
                    meta = 0;
                    min = 4;
                    max = 24;
                  };
                }
                {
                  data = {
                    name = "minecraft:arrow";
                    meta = 0;
                    min = 2;
                    max = 16;
                  };
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_tools_json = lib.mkOption {
    description = "settings_loot_tools_json configuration (./config/roguelike_dungeons/settings/loot_tools.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_tools.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_tools";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 0 1 2 3 4 ];
              };
              type = lib.mkOption {
                type = lib.types.str;
                default = "TOOLS";
              };
              each = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              quantity = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "berriespp:itemSpade";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "berriespp:itemSpade";
                      meta = 0;
                    };
                    weight = 2;
                  }
                  {
                    data = {
                      name = "berriespp:itemLens";
                      meta = 0;
                    };
                    weight = 2;
                  }
                  {
                    data = {
                      name = "minecraft:flint_and_steel";
                      meta = 0;
                    };
                    weight = 4;
                  }
                  {
                    data = {
                      name = "minecraft:fishing_rod";
                      meta = 0;
                    };
                    weight = 2;
                  }
                  {
                    data = {
                      name = "minecraft:shears";
                      meta = 0;
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "minecraft:lead";
                      meta = 0;
                    };
                    weight = 6;
                  }
                  {
                    data = {
                      name = "minecraft:clock";
                      meta = 0;
                    };
                    weight = 2;
                  }
                  {
                    data = {
                      name = "minecraft:bucket";
                      meta = 0;
                    };
                    weight = 5;
                  }
                  {
                    data = {
                      name = "IguanaTweaksTConstruct:clayBucketFired";
                      meta = 0;
                    };
                    weight = 4;
                  }
                  {
                    data = {
                      name = "IC2:itemTreetap";
                      meta = 0;
                    };
                    weight = 6;
                  }
                  {
                    data = {
                      name = "SpiceOfLife:lunchbox";
                      meta = 0;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "SpiceOfLife:lunchbag";
                      meta = 0;
                    };
                    weight = 2;
                  }
                  {
                    data = {
                      name = "harvestcraft:mixingbowlItem";
                      meta = 0;
                    };
                    weight = 4;
                  }
                  {
                    data = {
                      name = "harvestcraft:potItem";
                      meta = 0;
                    };
                    weight = 4;
                  }
                  {
                    data = {
                      name = "harvestcraft:saucepanItem";
                      meta = 0;
                    };
                    weight = 4;
                  }
                  {
                    data = {
                      name = "harvestcraft:skilletItem";
                      meta = 0;
                    };
                    weight = 4;
                  }
                  {
                    data = {
                      name = "Forestry:scoop";
                      meta = 0;
                    };
                    weight = 5;
                  }
                  {
                    data = {
                      name = "ifu:ifu_buildingKit";
                      meta = 10;
                    };
                    weight = 1;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metatool.01";
                      meta = 12;
                      nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metatool.01";
                      meta = 10;
                      nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metatool.01";
                      meta = 18;
                      nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metatool.01";
                      meta = 16;
                      nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metatool.01";
                      meta = 20;
                      nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metatool.01";
                      meta = 36;
                      nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metatool.01";
                      meta = 22;
                      nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metatool.01";
                      meta = 34;
                      nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metatool.01";
                      meta = 14;
                      nbt = "{ench:[0:{id:19s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Rubber\",Mode:0b,MaxDamage:25600L}}";
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metatool.01";
                      meta = 44;
                      nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metatool.01";
                      meta = 26;
                      nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metatool.01";
                      meta = 46;
                      nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "gregtech:gt.metatool.01";
                      meta = 24;
                      nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                    };
                    weight = 3;
                  }
                  {
                    data = {
                      name = "BiomesOPlenty:scytheDiamond";
                      meta = 0;
                    };
                    weight = 2;
                  }
                ];
              };
            };
          });
          default = [
            {
              level = [ 0 1 2 3 4 ];
              type = "TOOLS";
              each = true;
              quantity = 2;
              loot = [
                {
                  data = {
                    name = "berriespp:itemSpade";
                    meta = 0;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "berriespp:itemLens";
                    meta = 0;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:flint_and_steel";
                    meta = 0;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "minecraft:fishing_rod";
                    meta = 0;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:shears";
                    meta = 0;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "minecraft:lead";
                    meta = 0;
                  };
                  weight = 6;
                }
                {
                  data = {
                    name = "minecraft:clock";
                    meta = 0;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "minecraft:bucket";
                    meta = 0;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "IguanaTweaksTConstruct:clayBucketFired";
                    meta = 0;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "IC2:itemTreetap";
                    meta = 0;
                  };
                  weight = 6;
                }
                {
                  data = {
                    name = "SpiceOfLife:lunchbox";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "SpiceOfLife:lunchbag";
                    meta = 0;
                  };
                  weight = 2;
                }
                {
                  data = {
                    name = "harvestcraft:mixingbowlItem";
                    meta = 0;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "harvestcraft:potItem";
                    meta = 0;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "harvestcraft:saucepanItem";
                    meta = 0;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "harvestcraft:skilletItem";
                    meta = 0;
                  };
                  weight = 4;
                }
                {
                  data = {
                    name = "Forestry:scoop";
                    meta = 0;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "ifu:ifu_buildingKit";
                    meta = 10;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "gregtech:gt.metatool.01";
                    meta = 12;
                    nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "gregtech:gt.metatool.01";
                    meta = 10;
                    nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "gregtech:gt.metatool.01";
                    meta = 18;
                    nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "gregtech:gt.metatool.01";
                    meta = 16;
                    nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "gregtech:gt.metatool.01";
                    meta = 20;
                    nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "gregtech:gt.metatool.01";
                    meta = 36;
                    nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "gregtech:gt.metatool.01";
                    meta = 22;
                    nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "gregtech:gt.metatool.01";
                    meta = 34;
                    nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "gregtech:gt.metatool.01";
                    meta = 14;
                    nbt = "{ench:[0:{id:19s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Rubber\",Mode:0b,MaxDamage:25600L}}";
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "gregtech:gt.metatool.01";
                    meta = 44;
                    nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "gregtech:gt.metatool.01";
                    meta = 26;
                    nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "gregtech:gt.metatool.01";
                    meta = 46;
                    nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "gregtech:gt.metatool.01";
                    meta = 24;
                    nbt = "{ench:[0:{id:16s,lvl:2s}],GT.ToolStats:{SecondaryMaterial:\"Wood\",PrimaryMaterial:\"Steel\",Mode:0b,MaxDamage:51200L}}";
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "BiomesOPlenty:scytheDiamond";
                    meta = 0;
                  };
                  weight = 2;
                }
              ];
            }
            {
              level = 0;
              type = "TOOLS";
              each = true;
              quantity = 2;
              loot = [
                {
                  data = {
                    name = "TConstruct:binding";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:binding";
                    meta = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:binding";
                    meta = 4;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toolRod";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toolRod";
                    meta = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toolRod";
                    meta = 4;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:hatchetHead";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:hatchetHead";
                    meta = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:hatchetHead";
                    meta = 4;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:shovelHead";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:shovelHead";
                    meta = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:shovelHead";
                    meta = 4;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 1;
              type = "TOOLS";
              each = true;
              quantity = 2;
              loot = [
                {
                  data = {
                    name = "TConstruct:binding";
                    meta = 14;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:binding";
                    meta = 18;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:binding";
                    meta = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toolRod";
                    meta = 14;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toolRod";
                    meta = 18;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toolRod";
                    meta = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:hatchetHead";
                    meta = 14;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:hatchetHead";
                    meta = 18;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:hatchetHead";
                    meta = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:shovelHead";
                    meta = 14;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:shovelHead";
                    meta = 18;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:shovelHead";
                    meta = 2;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 2;
              type = "TOOLS";
              each = true;
              quantity = 2;
              loot = [
                {
                  data = {
                    name = "TConstruct:binding";
                    meta = 6;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:binding";
                    meta = 202;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:binding";
                    meta = 1595;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toolRod";
                    meta = 6;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toolRod";
                    meta = 202;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toolRod";
                    meta = 1595;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:hatchetHead";
                    meta = 6;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:hatchetHead";
                    meta = 202;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:hatchetHead";
                    meta = 1595;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:shovelHead";
                    meta = 6;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:shovelHead";
                    meta = 202;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:shovelHead";
                    meta = 1595;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughRod";
                    meta = 6;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughRod";
                    meta = 202;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughRod";
                    meta = 1595;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughBinding";
                    meta = 6;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughBinding";
                    meta = 202;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughBinding";
                    meta = 1595;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:heavyPlate";
                    meta = 6;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:heavyPlate";
                    meta = 202;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:heavyPlate";
                    meta = 1595;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 3;
              type = "TOOLS";
              each = true;
              quantity = 2;
              loot = [
                {
                  data = {
                    name = "TConstruct:excavatorHead";
                    meta = 16;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:excavatorHead";
                    meta = 15;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:excavatorHead";
                    meta = 1647;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:hammerHead";
                    meta = 16;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:hammerHead";
                    meta = 15;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:hammerHead";
                    meta = 1647;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:scytheBlade";
                    meta = 16;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:scytheBlade";
                    meta = 6;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:scytheBlade";
                    meta = 1647;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughRod";
                    meta = 16;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughRod";
                    meta = 15;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughRod";
                    meta = 1647;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughBinding";
                    meta = 16;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughBinding";
                    meta = 15;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughBinding";
                    meta = 1647;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:heavyPlate";
                    meta = 16;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:heavyPlate";
                    meta = 15;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:heavyPlate";
                    meta = 1647;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 4;
              type = "TOOLS";
              each = true;
              quantity = 2;
              loot = [
                {
                  data = {
                    name = "TConstruct:excavatorHead";
                    meta = 201;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:excavatorHead";
                    meta = 11;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:excavatorHead";
                    meta = 10;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:hammerHead";
                    meta = 201;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:hammerHead";
                    meta = 11;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:hammerHead";
                    meta = 10;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:scytheBlade";
                    meta = 201;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:scytheBlade";
                    meta = 11;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:scytheBlade";
                    meta = 10;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughRod";
                    meta = 201;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughRod";
                    meta = 11;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughRod";
                    meta = 10;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughBinding";
                    meta = 201;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughBinding";
                    meta = 11;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:toughBinding";
                    meta = 10;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:heavyPlate";
                    meta = 201;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:heavyPlate";
                    meta = 11;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:heavyPlate";
                    meta = 10;
                  };
                  weight = 1;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_loot_weapons_json = lib.mkOption {
    description = "settings_loot_weapons_json configuration (./config/roguelike_dungeons/settings/loot_weapons.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/loot_weapons.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "loot_weapons";
        };
        loot_rules = lib.mkOption {
          type = lib.types.listOf (lib.types.submodule {
            options = {
              level = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              type = lib.mkOption {
                type = lib.types.str;
                default = "WEAPONS";
              };
              each = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              quantity = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              loot = lib.mkOption {
                type = lib.types.listOf (lib.types.submodule {
                  options = {
                    data = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          name = lib.mkOption {
                            type = lib.types.str;
                            default = "minecraft:bow";
                          };
                          meta = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                        };
                      };
                    };
                    weight = lib.mkOption {
                      type = lib.types.int;
                      default = 13;
                    };
                  };
                });
                default = [
                  {
                    data = {
                      name = "minecraft:bow";
                      meta = 0;
                    };
                    weight = 13;
                  }
                  {
                    data = {
                      name = "Natura:natura.bow.darkwood";
                      meta = 0;
                    };
                    weight = 7;
                  }
                  {
                    data = {
                      name = "minecraft:stone_sword";
                      meta = 0;
                      nbt = "{ench:[0:{id:102s,lvl:1s},1:{id:17s,lvl:1s}],display:{Name:\"Mesopotamian Mace\"}}";
                    };
                    weight = 7;
                  }
                  {
                    data = {
                      name = "minecraft:stone_sword";
                      meta = 0;
                      nbt = "{ench:[0:{id:19s,lvl:2s}],display:{Name:\"Caveman's Club\"}}";
                    };
                    weight = 7;
                  }
                  {
                    data = {
                      name = "minecraft:wooden_sword";
                      meta = 0;
                      nbt = "{ench:[0:{id:16s,lvl:2s},1:{id:34s,lvl:1s}],display:{Name:\"Ancient Acinaces\"}}";
                    };
                    weight = 7;
                  }
                  {
                    data = {
                      name = "minecraft:stone_sword";
                      meta = 0;
                      nbt = "{ench:[0:{id:98s,lvl:1s},1:{id:180s,lvl:1s}],display:{Name:\"Magic Makhaira\"}}";
                    };
                    weight = 7;
                  }
                  {
                    data = {
                      name = "minecraft:stone_sword";
                      meta = 0;
                      nbt = "{ench:[0:{id:18s,lvl:2s},1:{id:19s,lvl:1s}],display:{Name:\"Spider Sica\"}}";
                    };
                    weight = 7;
                  }
                  {
                    data = {
                      name = "minecraft:stick";
                      meta = 0;
                      nbt = "{ench:[0:{id:19s,lvl:5s}],display:{Name:\"Hercales' Club\"}}";
                    };
                    weight = 1;
                  }
                ];
              };
            };
          });
          default = [
            {
              level = 0;
              type = "WEAPONS";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "minecraft:bow";
                    meta = 0;
                  };
                  weight = 13;
                }
                {
                  data = {
                    name = "Natura:natura.bow.darkwood";
                    meta = 0;
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:stone_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:102s,lvl:1s},1:{id:17s,lvl:1s}],display:{Name:\"Mesopotamian Mace\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:stone_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:19s,lvl:2s}],display:{Name:\"Caveman's Club\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:wooden_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:16s,lvl:2s},1:{id:34s,lvl:1s}],display:{Name:\"Ancient Acinaces\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:stone_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:98s,lvl:1s},1:{id:180s,lvl:1s}],display:{Name:\"Magic Makhaira\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:stone_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:18s,lvl:2s},1:{id:19s,lvl:1s}],display:{Name:\"Spider Sica\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:stick";
                    meta = 0;
                    nbt = "{ench:[0:{id:19s,lvl:5s}],display:{Name:\"Hercales' Club\"}}";
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 0;
              type = "WEAPONS";
              each = true;
              quantity = 4;
              loot = [
                {
                  data = {
                    name = "TConstruct:swordBlade";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:swordBlade";
                    meta = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:swordBlade";
                    meta = 4;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:wideGuard";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:wideGuard";
                    meta = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:wideGuard";
                    meta = 4;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:handGuard";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:handGuard";
                    meta = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:handGuard";
                    meta = 4;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:frypanHead";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:frypanHead";
                    meta = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:frypanHead";
                    meta = 4;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:knifeBlade";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:knifeBlade";
                    meta = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:knifeBlade";
                    meta = 4;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:arrowhead";
                    meta = 0;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:arrowhead";
                    meta = 3;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:arrowhead";
                    meta = 4;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 1;
              type = "WEAPONS";
              each = true;
              quantity = 4;
              loot = [
                {
                  data = {
                    name = "TConstruct:swordBlade";
                    meta = 14;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:swordBlade";
                    meta = 18;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:swordBlade";
                    meta = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:wideGuard";
                    meta = 14;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:wideGuard";
                    meta = 18;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:wideGuard";
                    meta = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:handGuard";
                    meta = 14;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:handGuard";
                    meta = 18;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:handGuard";
                    meta = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:frypanHead";
                    meta = 14;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:frypanHead";
                    meta = 18;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:frypanHead";
                    meta = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:knifeBlade";
                    meta = 14;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:knifeBlade";
                    meta = 18;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:knifeBlade";
                    meta = 2;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:arrowhead";
                    meta = 14;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:arrowhead";
                    meta = 18;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:fletching";
                    meta = 0;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "TConstruct:arrowhead";
                    meta = 2;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 1;
              type = "WEAPONS";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "Thaumcraft:ItemBowBone";
                    meta = 0;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "minecraft:bow";
                    meta = 0;
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "Natura:natura.bow.bloodwood";
                    meta = 0;
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:iron_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:34s,lvl:3s},1:{id:16s,lvl:1s}],display:{Name:\"Great Gladius\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:iron_axe";
                    meta = 0;
                    nbt = "{ench:[0:{id:16s,lvl:3s}],display:{Name:\"Deadly Dane Axe\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:iron_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:17s,lvl:1s},1:{id:19s,lvl:2s}],display:{Name:\"Oppresive Oxborough Dirk\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:iron_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:99s,lvl:3s},1:{id:45s,lvl:3s}],display:{Name:\"Handy Harpē\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:iron_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:20s,lvl:1s},1:{id:21s,lvl:2s}],display:{Name:\"Dangerous Deer Catcher\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:golden_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:17s,lvl:7s},1:{id:34s,lvl:5s}],display:{Name:\"Gladius Imperatoria\"}}";
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 2;
              type = "WEAPONS";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "Thaumcraft:ItemBowBone";
                    meta = 0;
                  };
                  weight = 5;
                }
                {
                  data = {
                    name = "minecraft:bow";
                    meta = 0;
                  };
                  weight = 13;
                }
                {
                  data = {
                    name = "Natura:natura.bow.ghostwood";
                    meta = 0;
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:wooden_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:34s,lvl:3s},1:{id:16s,lvl:6s}],display:{Name:\"Noteworthy Naboot\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:iron_axe";
                    meta = 0;
                    nbt = "{ench:[0:{id:16s,lvl:3s},1:{id:19s,lvl:3s}],display:{Name:\"Mighty Meteor Hammer\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:iron_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:99s,lvl:5s},1:{id:21s,lvl:3s}],display:{Name:\"Awakened Angon\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:iron_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:18s,lvl:3s},1:{id:45s,lvl:3s}],display:{Name:\"Skillful Saber\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:iron_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:8s,lvl:3s},1:{id:18s,lvl:4s}],display:{Name:\"Deadman's Dagger\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:iron_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:8s,lvl:3s},1:{id:16s,lvl:7s}],display:{Name:\"Kotetsu\"}}";
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 2;
              type = "WEAPONS";
              each = true;
              quantity = 4;
              loot = [
                {
                  data = {
                    name = "TConstruct:swordBlade";
                    meta = 6;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:swordBlade";
                    meta = 202;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:swordBlade";
                    meta = 1595;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:wideGuard";
                    meta = 6;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:wideGuard";
                    meta = 202;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:wideGuard";
                    meta = 1595;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:handGuard";
                    meta = 6;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:handGuard";
                    meta = 202;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:fletching";
                    meta = 1;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "TConstruct:handGuard";
                    meta = 1595;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:arrowhead";
                    meta = 6;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:arrowhead";
                    meta = 202;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:arrowhead";
                    meta = 1595;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:largeSwordBlade";
                    meta = 6;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:largeSwordBlade";
                    meta = 202;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:largeSwordBlade";
                    meta = 1595;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:BowLimbPart";
                    meta = 6;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:BowLimbPart";
                    meta = 202;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:BowLimbPart";
                    meta = 1595;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:CrossbowLimbPart";
                    meta = 6;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:CrossbowLimbPart";
                    meta = 202;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:CrossbowLimbPart";
                    meta = 1595;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 3;
              type = "WEAPONS";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "Thaumcraft:ItemBowBone";
                    meta = 0;
                  };
                  weight = 10;
                }
                {
                  data = {
                    name = "minecraft:bow";
                    meta = 0;
                  };
                  weight = 13;
                }
                {
                  data = {
                    name = "minecraft:diamond_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:46s,lvl:1s},1:{id:16s,lvl:3s}],display:{Name:\"Smith's Sword\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:diamond_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:98s,lvl:5s},1:{id:16s,lvl:3s}],display:{Name:\"Wise Wakizashi\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:diamond_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:10s,lvl:1s},1:{id:16s,lvl:3s}],display:{Name:\"Blighted Blade\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:diamond_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:45s,lvl:3s},1:{id:17s,lvl:2s}],RepairCost:1,display:{Name:\"Librarian's Liuyedao\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:diamond_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:20s,lvl:2s},1:{id:16s,lvl:3s}],display:{Name:\"Kindled Katana\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:diamond_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:21s,lvl:3s},1:{id:16s,lvl:2s},2:{id:45s,lvl:5s}],display:{Name:\"Sword of Victory\"}}";
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 3;
              type = "WEAPONS";
              each = true;
              quantity = 4;
              loot = [
                {
                  data = {
                    name = "TConstruct:swordBlade";
                    meta = 16;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:swordBlade";
                    meta = 15;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:swordBlade";
                    meta = 1647;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:fletching";
                    meta = 2;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "TConstruct:wideGuard";
                    meta = 16;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:wideGuard";
                    meta = 15;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:wideGuard";
                    meta = 1647;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:handGuard";
                    meta = 16;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:handGuard";
                    meta = 6;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:handGuard";
                    meta = 1647;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:arrowhead";
                    meta = 16;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:arrowhead";
                    meta = 15;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:arrowhead";
                    meta = 1647;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:largeSwordBlade";
                    meta = 16;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:largeSwordBlade";
                    meta = 15;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:largeSwordBlade";
                    meta = 1647;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:BowLimbPart";
                    meta = 16;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:BowLimbPart";
                    meta = 15;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:BowLimbPart";
                    meta = 1647;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:CrossbowLimbPart";
                    meta = 16;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:CrossbowLimbPart";
                    meta = 15;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:CrossbowLimbPart";
                    meta = 1647;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 4;
              type = "WEAPONS";
              each = true;
              quantity = 4;
              loot = [
                {
                  data = {
                    name = "TConstruct:swordBlade";
                    meta = 201;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:swordBlade";
                    meta = 11;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:swordBlade";
                    meta = 10;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:wideGuard";
                    meta = 201;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:wideGuard";
                    meta = 11;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:wideGuard";
                    meta = 10;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:handGuard";
                    meta = 201;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:handGuard";
                    meta = 11;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:handGuard";
                    meta = 10;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:arrowhead";
                    meta = 201;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:fletching";
                    meta = 4;
                  };
                  weight = 3;
                }
                {
                  data = {
                    name = "TConstruct:arrowhead";
                    meta = 11;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:arrowhead";
                    meta = 10;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:largeSwordBlade";
                    meta = 201;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:largeSwordBlade";
                    meta = 11;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:largeSwordBlade";
                    meta = 10;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:BowLimbPart";
                    meta = 201;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:BowLimbPart";
                    meta = 11;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:BowLimbPart";
                    meta = 10;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:CrossbowLimbPart";
                    meta = 201;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:CrossbowLimbPart";
                    meta = 11;
                  };
                  weight = 1;
                }
                {
                  data = {
                    name = "TConstruct:CrossbowLimbPart";
                    meta = 10;
                  };
                  weight = 1;
                }
              ];
            }
            {
              level = 4;
              type = "WEAPONS";
              each = true;
              quantity = 1;
              loot = [
                {
                  data = {
                    name = "GalaxySpace:item.QuantBow";
                    meta = 0;
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:diamond_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:180s,lvl:5s},1:{id:16s,lvl:2s}],display:{Name:\"Thanatos' Talwar\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:diamond_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:16s,lvl:5s}],display:{Name:\"Warrior's Warblade\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:diamond_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:45s,lvl:3s},1:{id:21s,lvl:3s}],display:{Name:\"Gambler's Grave\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:diamond_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:18s,lvl:6s},1:{id:46s,lvl:1s}],display:{Name:\"Pest Control Pestilence\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:diamond_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:34s,lvl:3s},1:{id:20s,lvl:2s},2{id:16s,lvl:2s}],display:{Name:\"Fireman's Fury\"}}";
                  };
                  weight = 7;
                }
                {
                  data = {
                    name = "minecraft:diamond_sword";
                    meta = 0;
                    nbt = "{ench:[0:{id:16s,lvl:7s},1:{id:20s,lvl:2s}],display:{Name:\"Excalibur\"}}";
                  };
                  weight = 1;
                }
              ];
            }
          ];
        };
      };
    };
  };
  settings_rooms_desert_json = lib.mkOption {
    description = "settings_rooms_desert_json configuration (./config/roguelike_dungeons/settings/rooms_desert.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/rooms_desert.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "rooms_desert";
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    rooms = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          mode = lib.mkOption {
                            type = lib.types.str;
                            default = "single";
                          };
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "PYRAMIDTOMB";
                          };
                          weight = lib.mkOption {
                            type = lib.types.int;
                            default = 5;
                          };
                        };
                      });
                      default = [
                        {
                          mode = "single";
                          type = "PYRAMIDTOMB";
                        }
                        {
                          mode = "random";
                          type = "PYRAMIDSPAWNER";
                          weight = 5;
                        }
                        {
                          mode = "random";
                          type = "PYRAMIDCORNER";
                          weight = 3;
                        }
                      ];
                    };
                    secrets = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "PYRAMIDTOMB";
                          };
                          num = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                        };
                      });
                      default = [
                        {
                          type = "PYRAMIDTOMB";
                          num = 1;
                        }
                      ];
                    };
                  };
                };
              };
              "1" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    rooms = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          mode = lib.mkOption {
                            type = lib.types.str;
                            default = "single";
                          };
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "PIT";
                          };
                          weight = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                          };
                        };
                      });
                      default = [
                        {
                          mode = "single";
                          type = "PIT";
                        }
                        {
                          mode = "random";
                          type = "PYRAMIDTOMB";
                          weight = 2;
                        }
                        {
                          mode = "random";
                          type = "PYRAMIDSPAWNER";
                          weight = 10;
                        }
                        {
                          mode = "random";
                          type = "PYRAMIDCORNER";
                          weight = 5;
                        }
                      ];
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_rooms_forest_json = lib.mkOption {
    description = "settings_rooms_forest_json configuration (./config/roguelike_dungeons/settings/rooms_forest.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/rooms_forest.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "rooms_forest";
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    rooms = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          mode = lib.mkOption {
                            type = lib.types.str;
                            default = "secret";
                          };
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "SMITH";
                          };
                          weight = lib.mkOption {
                            type = lib.types.int;
                            default = 4;
                          };
                        };
                      });
                      default = [
                        {
                          mode = "secret";
                          type = "SMITH";
                        }
                        {
                          mode = "single";
                          type = "CAKE";
                        }
                        {
                          mode = "single";
                          type = "FIRE";
                        }
                        {
                          mode = "secret";
                          type = "BEDROOM";
                        }
                        {
                          mode = "random";
                          type = "BRICK";
                          weight = 4;
                        }
                        {
                          mode = "random";
                          type = "CORNER";
                          weight = 2;
                        }
                      ];
                    };
                    secrets = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "BEDROOM";
                          };
                          num = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                        };
                      });
                      default = [
                        {
                          type = "BEDROOM";
                          num = 1;
                        }
                        {
                          type = "SMITH";
                          num = 1;
                        }
                      ];
                    };
                  };
                };
              };
              "1" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    rooms = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          mode = lib.mkOption {
                            type = lib.types.str;
                            default = "single";
                          };
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "MUSIC";
                          };
                          weight = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                        };
                      });
                      default = [
                        {
                          mode = "single";
                          type = "MUSIC";
                        }
                        {
                          mode = "single";
                          type = "PIT";
                        }
                        {
                          mode = "single";
                          type = "MESS";
                        }
                        {
                          mode = "single";
                          type = "LAB";
                        }
                        {
                          mode = "random";
                          type = "CORNER";
                          weight = 10;
                        }
                        {
                          mode = "random";
                          type = "BRICK";
                          weight = 3;
                        }
                      ];
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_rooms_mountain_json = lib.mkOption {
    description = "settings_rooms_mountain_json configuration (./config/roguelike_dungeons/settings/rooms_mountain.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/rooms_mountain.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "rooms_mountain";
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    rooms = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          mode = lib.mkOption {
                            type = lib.types.str;
                            default = "secret";
                          };
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "LIBRARY";
                          };
                          weight = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                        };
                      });
                      default = [
                        {
                          mode = "secret";
                          type = "LIBRARY";
                        }
                        {
                          mode = "single";
                          type = "CAKE";
                        }
                        {
                          mode = "single";
                          type = "FIRE";
                        }
                        {
                          mode = "random";
                          type = "ENIKO";
                          weight = 10;
                        }
                        {
                          mode = "random";
                          type = "CORNER";
                          weight = 3;
                        }
                      ];
                    };
                    secrets = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "BEDROOM";
                          };
                          num = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                          };
                        };
                      });
                      default = [
                        {
                          type = "BEDROOM";
                          num = 2;
                        }
                        {
                          type = "SMITH";
                          num = 1;
                        }
                      ];
                    };
                  };
                };
              };
              "1" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    rooms = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          mode = lib.mkOption {
                            type = lib.types.str;
                            default = "single";
                          };
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "FIRE";
                          };
                          weight = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                        };
                      });
                      default = [
                        {
                          mode = "single";
                          type = "FIRE";
                        }
                        {
                          mode = "single";
                          type = "PIT";
                        }
                        {
                          mode = "single";
                          type = "MESS";
                        }
                        {
                          mode = "single";
                          type = "LAB";
                        }
                        {
                          mode = "random";
                          type = "ENIKO";
                          weight = 10;
                        }
                        {
                          mode = "random";
                          type = "CORNER";
                          weight = 3;
                        }
                      ];
                    };
                    secrets = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "ENCHANT";
                          };
                          num = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                        };
                      });
                      default = [
                        {
                          type = "ENCHANT";
                          num = 1;
                        }
                      ];
                    };
                  };
                };
              };
              "2" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    rooms = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          mode = lib.mkOption {
                            type = lib.types.str;
                            default = "random";
                          };
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "BRICK";
                          };
                          weight = lib.mkOption {
                            type = lib.types.int;
                            default = 4;
                          };
                        };
                      });
                      default = [
                        {
                          mode = "random";
                          type = "BRICK";
                          weight = 4;
                        }
                        {
                          mode = "random";
                          type = "SLIME";
                          weight = 7;
                        }
                        {
                          mode = "random";
                          type = "CORNER";
                          weight = 3;
                        }
                        {
                          mode = "random";
                          type = "SPIDER";
                          weight = 2;
                        }
                        {
                          mode = "random";
                          type = "PIT";
                          weight = 2;
                        }
                        {
                          mode = "random";
                          type = "PRISON";
                          weight = 3;
                        }
                      ];
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_rooms_plains_json = lib.mkOption {
    description = "settings_rooms_plains_json configuration (./config/roguelike_dungeons/settings/rooms_plains.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/rooms_plains.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "rooms_plains";
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    rooms = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          mode = lib.mkOption {
                            type = lib.types.str;
                            default = "single";
                          };
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "CAKE";
                          };
                          weight = lib.mkOption {
                            type = lib.types.int;
                            default = 4;
                          };
                        };
                      });
                      default = [
                        {
                          mode = "single";
                          type = "CAKE";
                        }
                        {
                          mode = "single";
                          type = "FIRE";
                        }
                        {
                          mode = "random";
                          type = "BRICK";
                          weight = 4;
                        }
                        {
                          mode = "random";
                          type = "CORNER";
                          weight = 2;
                        }
                      ];
                    };
                    secrets = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "BEDROOM";
                          };
                          num = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                        };
                      });
                      default = [
                        {
                          type = "BEDROOM";
                          num = 1;
                        }
                        {
                          type = "FIREWORK";
                          num = 1;
                        }
                        {
                          type = "SMITH";
                          num = 1;
                        }
                      ];
                    };
                  };
                };
              };
              "1" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    rooms = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          mode = lib.mkOption {
                            type = lib.types.str;
                            default = "single";
                          };
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "MUSIC";
                          };
                          weight = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                        };
                      });
                      default = [
                        {
                          mode = "single";
                          type = "MUSIC";
                        }
                        {
                          mode = "single";
                          type = "LAB";
                        }
                        {
                          mode = "single";
                          type = "MESS";
                        }
                        {
                          mode = "single";
                          type = "PIT";
                        }
                        {
                          mode = "random";
                          type = "CORNER";
                          weight = 10;
                        }
                        {
                          mode = "random";
                          type = "BRICK";
                          weight = 3;
                        }
                      ];
                    };
                    secrets = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "BTEAM";
                          };
                          num = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                        };
                      });
                      default = [
                        {
                          type = "BTEAM";
                          num = 1;
                        }
                      ];
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_rooms_swamp_json = lib.mkOption {
    description = "settings_rooms_swamp_json configuration (./config/roguelike_dungeons/settings/rooms_swamp.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/rooms_swamp.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "rooms_swamp";
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    rooms = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          mode = lib.mkOption {
                            type = lib.types.str;
                            default = "single";
                          };
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "CAKE";
                          };
                          weight = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                        };
                      });
                      default = [
                        {
                          mode = "single";
                          type = "CAKE";
                        }
                        {
                          mode = "single";
                          type = "FIRE";
                        }
                        {
                          mode = "single";
                          type = "DARKHALL";
                        }
                        {
                          mode = "random";
                          type = "BRICK";
                          weight = 10;
                        }
                        {
                          mode = "random";
                          type = "CORNER";
                          weight = 3;
                        }
                      ];
                    };
                  };
                };
              };
              "1" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    rooms = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          mode = lib.mkOption {
                            type = lib.types.str;
                            default = "single";
                          };
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "CAKE";
                          };
                          weight = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                        };
                      });
                      default = [
                        {
                          mode = "single";
                          type = "CAKE";
                        }
                        {
                          mode = "single";
                          type = "LAB";
                        }
                        {
                          mode = "single";
                          type = "SPIDER";
                        }
                        {
                          mode = "single";
                          type = "PIT";
                        }
                        {
                          mode = "random";
                          type = "BRICK";
                          weight = 10;
                        }
                        {
                          mode = "random";
                          type = "CORNER";
                          weight = 3;
                        }
                      ];
                    };
                    secrets = lib.mkOption {
                      type = lib.types.listOf (lib.types.submodule {
                        options = {
                          type = lib.mkOption {
                            type = lib.types.str;
                            default = "PRISON";
                          };
                          num = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                        };
                      });
                      default = [
                        {
                          type = "PRISON";
                          num = 1;
                        }
                      ];
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_segment_desert_json = lib.mkOption {
    description = "settings_segment_desert_json configuration (./config/roguelike_dungeons/settings/segment_desert.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/segment_desert.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "segments_desert";
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    segments = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          segments = lib.mkOption {
                            type = lib.types.listOf (lib.types.submodule {
                              options = {
                                type = lib.mkOption {
                                  type = lib.types.str;
                                  default = "DOOR";
                                };
                                weight = lib.mkOption {
                                  type = lib.types.int;
                                  default = 10;
                                };
                              };
                            });
                            default = [
                              {
                                type = "DOOR";
                                weight = 10;
                              }
                              {
                                type = "ANKH";
                                weight = 5;
                              }
                              {
                                type = "SKULL";
                                weight = 2;
                              }
                              {
                                type = "TOMB";
                                weight = 1;
                              }
                            ];
                          };
                          arch = lib.mkOption {
                            type = lib.types.str;
                            default = "SQUAREARCH";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "1" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    segments = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          segments = lib.mkOption {
                            type = lib.types.listOf (lib.types.submodule {
                              options = {
                                type = lib.mkOption {
                                  type = lib.types.str;
                                  default = "DOOR";
                                };
                                weight = lib.mkOption {
                                  type = lib.types.int;
                                  default = 10;
                                };
                              };
                            });
                            default = [
                              {
                                type = "DOOR";
                                weight = 10;
                              }
                              {
                                type = "SPAWNER";
                                weight = 1;
                              }
                              {
                                type = "INSET";
                                weight = 5;
                              }
                              {
                                type = "CHEST";
                                weight = 1;
                              }
                              {
                                type = "ANKH";
                                weight = 1;
                              }
                              {
                                type = "SKULL";
                                weight = 2;
                              }
                              {
                                type = "TOMB";
                                weight = 1;
                              }
                              {
                                type = "SHELF";
                                weight = 5;
                              }
                            ];
                          };
                          arch = lib.mkOption {
                            type = lib.types.str;
                            default = "SQUAREARCH";
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_segment_jungle_json = lib.mkOption {
    description = "settings_segment_jungle_json configuration (./config/roguelike_dungeons/settings/segment_jungle.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/segment_jungle.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "segments_jungle";
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    segments = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          segments = lib.mkOption {
                            type = lib.types.listOf (lib.types.submodule {
                              options = {
                                type = lib.mkOption {
                                  type = lib.types.str;
                                  default = "SHELF";
                                };
                                weight = lib.mkOption {
                                  type = lib.types.int;
                                  default = 2;
                                };
                              };
                            });
                            default = [
                              {
                                type = "SHELF";
                                weight = 2;
                              }
                              {
                                type = "INSET";
                                weight = 2;
                              }
                              {
                                type = "JUNGLE";
                                weight = 5;
                              }
                              {
                                type = "SKULL";
                                weight = 1;
                              }
                              {
                                type = "ARROW";
                                weight = 1;
                              }
                              {
                                type = "CELL";
                                weight = 1;
                              }
                              {
                                type = "SILVERFISH";
                                weight = 1;
                              }
                              {
                                type = "CHEST";
                                weight = 1;
                              }
                              {
                                type = "SPAWNER";
                                weight = 2;
                              }
                            ];
                          };
                          arch = lib.mkOption {
                            type = lib.types.str;
                            default = "MOSSYARCH";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "1" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    segments = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          segments = lib.mkOption {
                            type = lib.types.listOf (lib.types.submodule {
                              options = {
                                type = lib.mkOption {
                                  type = lib.types.str;
                                  default = "SHELF";
                                };
                                weight = lib.mkOption {
                                  type = lib.types.int;
                                  default = 2;
                                };
                              };
                            });
                            default = [
                              {
                                type = "SHELF";
                                weight = 2;
                              }
                              {
                                type = "INSET";
                                weight = 2;
                              }
                              {
                                type = "JUNGLE";
                                weight = 5;
                              }
                              {
                                type = "SKULL";
                                weight = 1;
                              }
                              {
                                type = "ARROW";
                                weight = 1;
                              }
                              {
                                type = "CELL";
                                weight = 1;
                              }
                              {
                                type = "SILVERFISH";
                                weight = 1;
                              }
                              {
                                type = "CHEST";
                                weight = 1;
                              }
                              {
                                type = "SPAWNER";
                                weight = 2;
                              }
                            ];
                          };
                          arch = lib.mkOption {
                            type = lib.types.str;
                            default = "MOSSYARCH";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "2" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    segments = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          segments = lib.mkOption {
                            type = lib.types.listOf (lib.types.submodule {
                              options = {
                                type = lib.mkOption {
                                  type = lib.types.str;
                                  default = "SHELF";
                                };
                                weight = lib.mkOption {
                                  type = lib.types.int;
                                  default = 2;
                                };
                              };
                            });
                            default = [
                              {
                                type = "SHELF";
                                weight = 2;
                              }
                              {
                                type = "INSET";
                                weight = 2;
                              }
                              {
                                type = "JUNGLE";
                                weight = 5;
                              }
                              {
                                type = "SKULL";
                                weight = 1;
                              }
                              {
                                type = "ARROW";
                                weight = 1;
                              }
                              {
                                type = "CELL";
                                weight = 1;
                              }
                              {
                                type = "SILVERFISH";
                                weight = 1;
                              }
                              {
                                type = "CHEST";
                                weight = 1;
                              }
                              {
                                type = "SPAWNER";
                                weight = 2;
                              }
                            ];
                          };
                          arch = lib.mkOption {
                            type = lib.types.str;
                            default = "MOSSYARCH";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "3" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    segments = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          segments = lib.mkOption {
                            type = lib.types.listOf (lib.types.submodule {
                              options = {
                                type = lib.mkOption {
                                  type = lib.types.str;
                                  default = "SHELF";
                                };
                                weight = lib.mkOption {
                                  type = lib.types.int;
                                  default = 2;
                                };
                              };
                            });
                            default = [
                              {
                                type = "SHELF";
                                weight = 2;
                              }
                              {
                                type = "INSET";
                                weight = 2;
                              }
                              {
                                type = "JUNGLE";
                                weight = 5;
                              }
                              {
                                type = "SKULL";
                                weight = 1;
                              }
                              {
                                type = "ARROW";
                                weight = 1;
                              }
                              {
                                type = "CELL";
                                weight = 1;
                              }
                              {
                                type = "SILVERFISH";
                                weight = 1;
                              }
                              {
                                type = "CHEST";
                                weight = 1;
                              }
                              {
                                type = "SPAWNER";
                                weight = 2;
                              }
                            ];
                          };
                          arch = lib.mkOption {
                            type = lib.types.str;
                            default = "MOSSYARCH";
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_segment_mountain_json = lib.mkOption {
    description = "settings_segment_mountain_json configuration (./config/roguelike_dungeons/settings/segment_mountain.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/segment_mountain.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "segments_mountain";
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    segments = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          segments = lib.mkOption {
                            type = lib.types.listOf (lib.types.submodule {
                              options = {
                                type = lib.mkOption {
                                  type = lib.types.str;
                                  default = "DOOR";
                                };
                                weight = lib.mkOption {
                                  type = lib.types.int;
                                  default = 7;
                                };
                              };
                            });
                            default = [
                              {
                                type = "DOOR";
                                weight = 7;
                              }
                              {
                                type = "ANKH";
                                weight = 2;
                              }
                              {
                                type = "PLANT";
                                weight = 3;
                              }
                              {
                                type = "LAMP";
                                weight = 1;
                              }
                              {
                                type = "FLOWERS";
                                weight = 1;
                              }
                            ];
                          };
                          arch = lib.mkOption {
                            type = lib.types.str;
                            default = "ARCH";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "2" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    segments = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          segments = lib.mkOption {
                            type = lib.types.listOf (lib.types.submodule {
                              options = {
                                type = lib.mkOption {
                                  type = lib.types.str;
                                  default = "SEWER";
                                };
                                weight = lib.mkOption {
                                  type = lib.types.int;
                                  default = 7;
                                };
                              };
                            });
                            default = [
                              {
                                type = "SEWER";
                                weight = 7;
                              }
                              {
                                type = "SEWERDRAIN";
                                weight = 4;
                              }
                              {
                                type = "SEWERDOOR";
                                weight = 2;
                              }
                            ];
                          };
                          arch = lib.mkOption {
                            type = lib.types.str;
                            default = "SEWERARCH";
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_segment_swamp_json = lib.mkOption {
    description = "settings_segment_swamp_json configuration (./config/roguelike_dungeons/settings/segment_swamp.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/segment_swamp.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "segments_swamp";
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    segments = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          segments = lib.mkOption {
                            type = lib.types.listOf (lib.types.submodule {
                              options = {
                                type = lib.mkOption {
                                  type = lib.types.str;
                                  default = "DOOR";
                                };
                                weight = lib.mkOption {
                                  type = lib.types.int;
                                  default = 8;
                                };
                              };
                            });
                            default = [
                              {
                                type = "DOOR";
                                weight = 8;
                              }
                              {
                                type = "LAMP";
                                weight = 2;
                              }
                              {
                                type = "FLOWERS";
                                weight = 1;
                              }
                              {
                                type = "MUSHROOM";
                                weight = 2;
                              }
                            ];
                          };
                          arch = lib.mkOption {
                            type = lib.types.str;
                            default = "ARCH";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "1" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    segments = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          segments = lib.mkOption {
                            type = lib.types.listOf (lib.types.submodule {
                              options = {
                                type = lib.mkOption {
                                  type = lib.types.str;
                                  default = "DOOR";
                                };
                                weight = lib.mkOption {
                                  type = lib.types.int;
                                  default = 10;
                                };
                              };
                            });
                            default = [
                              {
                                type = "DOOR";
                                weight = 10;
                              }
                              {
                                type = "SHELF";
                                weight = 4;
                              }
                              {
                                type = "INSET";
                                weight = 4;
                              }
                              {
                                type = "MUSHROOM";
                                weight = 3;
                              }
                            ];
                          };
                          arch = lib.mkOption {
                            type = lib.types.str;
                            default = "ARCH";
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_theme_desert_json = lib.mkOption {
    description = "settings_theme_desert_json configuration (./config/roguelike_dungeons/settings/theme_desert.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/theme_desert.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "theme_desert";
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "PYRAMID";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "1" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "SANDSTONE";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "2" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "SANDSTONERED";
                          };
                          primary = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                walls = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      type = lib.mkOption {
                                        type = lib.types.str;
                                        default = "WEIGHTED";
                                      };
                                      data = lib.mkOption {
                                        type = lib.types.listOf (lib.types.submodule {
                                          options = {
                                            type = lib.mkOption {
                                              type = lib.types.str;
                                              default = "METABLOCK";
                                            };
                                            data = lib.mkOption {
                                              default = {};
                                              type = lib.types.submodule {
                                                options = {
                                                  name = lib.mkOption {
                                                    type = lib.types.str;
                                                    default = "etfuturum:red_sandstone";
                                                  };
                                                };
                                              };
                                            };
                                            weight = lib.mkOption {
                                              type = lib.types.int;
                                              default = 94;
                                            };
                                          };
                                        });
                                        default = [
                                          {
                                            type = "METABLOCK";
                                            data = {
                                              name = "etfuturum:red_sandstone";
                                            };
                                            weight = 94;
                                          }
                                          {
                                            type = "METABLOCK";
                                            data = {
                                              name = "minecraft:sand";
                                              meta = 1;
                                            };
                                            weight = 5;
                                          }
                                          {
                                            type = "METABLOCK";
                                            data = {
                                              name = "etfuturum:red_sandstone";
                                              meta = 1;
                                            };
                                            weight = 3;
                                          }
                                          {
                                            type = "METABLOCK";
                                            data = {
                                              name = "etfuturum:red_sandstone";
                                              meta = 2;
                                            };
                                            weight = 3;
                                          }
                                        ];
                                      };
                                    };
                                  };
                                };
                                pillar = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      type = lib.mkOption {
                                        type = lib.types.str;
                                        default = "METABLOCK";
                                      };
                                      data = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            name = lib.mkOption {
                                              type = lib.types.str;
                                              default = "etfuturum:smooth_red_sandstone";
                                            };
                                            meta = lib.mkOption {
                                              type = lib.types.str;
                                              default = "0";
                                            };
                                          };
                                        };
                                      };
                                    };
                                  };
                                };
                                stair = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      type = lib.mkOption {
                                        type = lib.types.str;
                                        default = "METABLOCK";
                                      };
                                      data = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            name = lib.mkOption {
                                              type = lib.types.str;
                                              default = "etfuturum:red_sandstone_stairs";
                                            };
                                          };
                                        };
                                      };
                                    };
                                  };
                                };
                              };
                            };
                          };
                          secondary = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                walls = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      type = lib.mkOption {
                                        type = lib.types.str;
                                        default = "METABLOCK";
                                      };
                                      data = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            name = lib.mkOption {
                                              type = lib.types.str;
                                              default = "etfuturum:red_sandstone";
                                            };
                                            meta = lib.mkOption {
                                              type = lib.types.str;
                                              default = "1";
                                            };
                                          };
                                        };
                                      };
                                    };
                                  };
                                };
                                pillar = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      type = lib.mkOption {
                                        type = lib.types.str;
                                        default = "METABLOCK";
                                      };
                                      data = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            name = lib.mkOption {
                                              type = lib.types.str;
                                              default = "etfuturum:smooth_red_sandstone";
                                            };
                                            meta = lib.mkOption {
                                              type = lib.types.str;
                                              default = "0";
                                            };
                                          };
                                        };
                                      };
                                    };
                                  };
                                };
                                stair = lib.mkOption {
                                  default = {};
                                  type = lib.types.submodule {
                                    options = {
                                      type = lib.mkOption {
                                        type = lib.types.str;
                                        default = "METABLOCK";
                                      };
                                      data = lib.mkOption {
                                        default = {};
                                        type = lib.types.submodule {
                                          options = {
                                            name = lib.mkOption {
                                              type = lib.types.str;
                                              default = "etfuturum:red_sandstone_stairs";
                                            };
                                          };
                                        };
                                      };
                                    };
                                  };
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                    "3" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          theme = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                base = lib.mkOption {
                                  type = lib.types.str;
                                  default = "CRYPT";
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                    "4" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          theme = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                base = lib.mkOption {
                                  type = lib.types.str;
                                  default = "NETHER";
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_theme_jungle_json = lib.mkOption {
    description = "settings_theme_jungle_json configuration (./config/roguelike_dungeons/settings/theme_jungle.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/theme_jungle.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "theme_jungle";
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "JUNGLE";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "1" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "JUNGLE";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "2" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "MOSSY";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "3" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "MOSSY";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "4" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "NETHER";
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_theme_mesa_json = lib.mkOption {
    description = "settings_theme_mesa_json configuration (./config/roguelike_dungeons/settings/theme_mesa.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/theme_mesa.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "theme_mesa";
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "ETHOTOWER";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "1" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "ETHOTOWER";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "2" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "CRYPT";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "3" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "CRYPT";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "4" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "NETHER";
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_theme_mountain_json = lib.mkOption {
    description = "settings_theme_mountain_json configuration (./config/roguelike_dungeons/settings/theme_mountain.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/theme_mountain.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "theme_mountain";
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "ENIKO";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "1" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "ENIKO2";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "2" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "SEWER";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "3" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "MOSSY";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "4" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "NETHER";
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_theme_swamp_json = lib.mkOption {
    description = "settings_theme_swamp_json configuration (./config/roguelike_dungeons/settings/theme_swamp.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/theme_swamp.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "theme_swamp";
        };
        levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "0" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "DARKHALL";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "1" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "DARKHALL";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "2" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "MUDDY";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "3" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "MOSSY";
                          };
                        };
                      };
                    };
                  };
                };
              };
              "4" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    theme = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          base = lib.mkOption {
                            type = lib.types.str;
                            default = "NETHER";
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_tower_desert_json = lib.mkOption {
    description = "settings_tower_desert_json configuration (./config/roguelike_dungeons/settings/tower_desert.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/tower_desert.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "tower_desert";
        };
        tower = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "PYRAMID";
              };
              theme = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    base = lib.mkOption {
                      type = lib.types.str;
                      default = "PYRAMID";
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_tower_forest_json = lib.mkOption {
    description = "settings_tower_forest_json configuration (./config/roguelike_dungeons/settings/tower_forest.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/tower_forest.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "tower_forest";
        };
        tower = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "HOUSE";
              };
              theme = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    base = lib.mkOption {
                      type = lib.types.str;
                      default = "HOUSE";
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_tower_ice_json = lib.mkOption {
    description = "settings_tower_ice_json configuration (./config/roguelike_dungeons/settings/tower_ice.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/tower_ice.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "tower_ice";
        };
        tower = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "BUNKER";
              };
              theme = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    base = lib.mkOption {
                      type = lib.types.str;
                      default = "GREY";
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_tower_jungle_json = lib.mkOption {
    description = "settings_tower_jungle_json configuration (./config/roguelike_dungeons/settings/tower_jungle.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/tower_jungle.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "tower_jungle";
        };
        tower = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "JUNGLE";
              };
              theme = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    base = lib.mkOption {
                      type = lib.types.str;
                      default = "JUNGLE";
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_tower_mesa_json = lib.mkOption {
    description = "settings_tower_mesa_json configuration (./config/roguelike_dungeons/settings/tower_mesa.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/tower_mesa.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "tower_mesa";
        };
        tower = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "ETHO";
              };
              theme = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    base = lib.mkOption {
                      type = lib.types.str;
                      default = "ETHOTOWER";
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_tower_mountain_json = lib.mkOption {
    description = "settings_tower_mountain_json configuration (./config/roguelike_dungeons/settings/tower_mountain.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/tower_mountain.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "tower_mountain";
        };
        tower = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "ENIKO";
              };
              theme = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    base = lib.mkOption {
                      type = lib.types.str;
                      default = "DARKHALL";
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
  settings_tower_swamp_json = lib.mkOption {
    description = "settings_tower_swamp_json configuration (./config/roguelike_dungeons/settings/tower_swamp.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/roguelike_dungeons/settings/tower_swamp.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        name = lib.mkOption {
          type = lib.types.str;
          default = "tower_swamp";
        };
        tower = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "WITCH";
              };
              theme = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    base = lib.mkOption {
                      type = lib.types.str;
                      default = "DARKOAK";
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
}
