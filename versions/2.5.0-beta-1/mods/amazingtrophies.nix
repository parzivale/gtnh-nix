{lib, ...}: {
  achievements_100_hearts_json = lib.mkOption {
    description = "achievements_100_hearts_json configuration (./config/amazingtrophies/achievements/100_hearts.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/100_hearts.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "100_hearts";
        };
        _condition = lib.mkOption {
          type = lib.types.str;
          default = "Handled via code (NHCore)";
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 7;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:heartCanister";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
            };
          };
        };
      };
    };
  };
  achievements_10k_damage_json = lib.mkOption {
    description = "achievements_10k_damage_json configuration (./config/amazingtrophies/achievements/10k_damage.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/10k_damage.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "10k_damage";
        };
        _condition = lib.mkOption {
          type = lib.types.str;
          default = "Handled via code (NHCore)";
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 5;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "battlegear2:shield.diamond";
              };
            };
          };
        };
      };
    };
  };
  achievements_all_effects_json = lib.mkOption {
    description = "achievements_all_effects_json configuration (./config/amazingtrophies/achievements/all_effects.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/all_effects.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "all_effects";
        };
        _condition = lib.mkOption {
          type = lib.types.str;
          default = "Handled via code (NHCore)";
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 9;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:potion";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 8197;
              };
            };
          };
        };
      };
    };
  };
  achievements_bedrock_json = lib.mkOption {
    description = "achievements_bedrock_json configuration (./config/amazingtrophies/achievements/bedrock.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/bedrock.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "bedrock";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:bedrock";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 9;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 6;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:bedrock";
              };
            };
          };
        };
      };
    };
  };
  achievements_deep_dark_json = lib.mkOption {
    description = "achievements_deep_dark_json configuration (./config/amazingtrophies/achievements/deep_dark.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/deep_dark.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "deep_dark";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "dimension.join";
              };
              id = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 11;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "ExtraUtilities:dark_portal";
              };
            };
          };
        };
      };
    };
  };
  achievements_dezils_marshmallow_json = lib.mkOption {
    description = "achievements_dezils_marshmallow_json configuration (./config/amazingtrophies/achievements/dezils_marshmallow.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/dezils_marshmallow.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "dezils_marshmallow";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.use.finish";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "DraconicEvolution:dezilsMarshmallow";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 5;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "DraconicEvolution:dezilsMarshmallow";
              };
            };
          };
        };
      };
    };
  };
  achievements_enhanced_charm_of_dislocation_json = lib.mkOption {
    description = "achievements_enhanced_charm_of_dislocation_json configuration (./config/amazingtrophies/achievements/enhanced_charm_of_dislocation.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/enhanced_charm_of_dislocation.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "enhanced_charm_of_dislocation";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "DraconicEvolution:teleporterMKII";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 7;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "DraconicEvolution:teleporterMKII";
              };
            };
          };
        };
      };
    };
  };
  achievements_eternity_beacon_json = lib.mkOption {
    description = "achievements_eternity_beacon_json configuration (./config/amazingtrophies/achievements/eternity_beacon.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/eternity_beacon.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "eternity_beacon";
        };
        _condition = lib.mkOption {
          type = lib.types.str;
          default = "Handled via code (NHCore)";
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 9;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmetal9";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
            };
          };
        };
      };
    };
  };
  achievements_infinity_armor_json = lib.mkOption {
    description = "achievements_infinity_armor_json configuration (./config/amazingtrophies/achievements/infinity_armor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/infinity_armor.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "infinity_armor";
        };
        _condition = lib.mkOption {
          type = lib.types.str;
          default = "Handled via code (NHCore)";
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 11;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Avaritia:Infinity_Chest";
              };
            };
          };
        };
      };
    };
  };
  achievements_magic_bloodmagic_01_sacrificial_knife_json = lib.mkOption {
    description = "achievements_magic_bloodmagic_01_sacrificial_knife_json configuration (./config/amazingtrophies/achievements/magic/bloodmagic/01_sacrificial_knife.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/magic/bloodmagic/01_sacrificial_knife.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "sacrificial_knife";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:sacrificialKnife";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = -6;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:sacrificialKnife";
              };
            };
          };
        };
      };
    };
  };
  achievements_magic_bloodmagic_02_weak_blood_orb_json = lib.mkOption {
    description = "achievements_magic_bloodmagic_02_weak_blood_orb_json configuration (./config/amazingtrophies/achievements/magic/bloodmagic/02_weak_blood_orb.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/magic/bloodmagic/02_weak_blood_orb.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "weak_blood_orb";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:weakBloodOrb";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = -4;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:weakBloodOrb";
              };
            };
          };
        };
      };
    };
  };
  achievements_magic_bloodmagic_03_blood_altar_json = lib.mkOption {
    description = "achievements_magic_bloodmagic_03_blood_altar_json configuration (./config/amazingtrophies/achievements/magic/bloodmagic/03_blood_altar.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/magic/bloodmagic/03_blood_altar.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "blood_altar";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:Altar";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = -2;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:Altar";
              };
            };
          };
        };
      };
    };
  };
  achievements_magic_bloodmagic_04_bound_pickaxe_json = lib.mkOption {
    description = "achievements_magic_bloodmagic_04_bound_pickaxe_json configuration (./config/amazingtrophies/achievements/magic/bloodmagic/04_bound_pickaxe.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/magic/bloodmagic/04_bound_pickaxe.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "bound_pickaxe";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:boundPickaxe";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:boundPickaxe";
              };
            };
          };
        };
      };
    };
  };
  achievements_magic_bloodmagic_05_minor_demon_grunt_json = lib.mkOption {
    description = "achievements_magic_bloodmagic_05_minor_demon_grunt_json configuration (./config/amazingtrophies/achievements/magic/bloodmagic/05_minor_demon_grunt.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/magic/bloodmagic/05_minor_demon_grunt.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "minor_demon_grunt";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "kill";
              };
              targets = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGrunt" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntFire" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntWind" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntIce" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntEarth" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntGuardian" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntGuardianFire" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntGuardianWind" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntGuardianIce" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntGuardianEarth" ];
              };
              isTargetsAllowList = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        isSpecial = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:demonPlacer";
              };
            };
          };
        };
      };
    };
  };
  achievements_magic_botania_01_mana_pool_json = lib.mkOption {
    description = "achievements_magic_botania_01_mana_pool_json configuration (./config/amazingtrophies/achievements/magic/botania/01_mana_pool.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/magic/botania/01_mana_pool.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "mana_pool";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "Botania:pool";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = -6;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Botania:pool";
              };
            };
          };
        };
      };
    };
  };
  achievements_magic_botania_02_runic_altar_json = lib.mkOption {
    description = "achievements_magic_botania_02_runic_altar_json configuration (./config/amazingtrophies/achievements/magic/botania/02_runic_altar.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/magic/botania/02_runic_altar.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "runic_altar";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "Botania:runeAltar";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = -4;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Botania:runeAltar";
              };
            };
          };
        };
      };
    };
  };
  achievements_magic_botania_03_terrasteel_ingot_json = lib.mkOption {
    description = "achievements_magic_botania_03_terrasteel_ingot_json configuration (./config/amazingtrophies/achievements/magic/botania/03_terrasteel_ingot.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/magic/botania/03_terrasteel_ingot.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "terrasteel_ingot";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "Botania:manaResource";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = -2;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Botania:manaResource";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
      };
    };
  };
  achievements_magic_botania_04_elven_gateway_json = lib.mkOption {
    description = "achievements_magic_botania_04_elven_gateway_json configuration (./config/amazingtrophies/achievements/magic/botania/04_elven_gateway.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/magic/botania/04_elven_gateway.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "elven_gateway";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "Botania:alfheimPortal";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Botania:alfheimPortal";
              };
            };
          };
        };
      };
    };
  };
  achievements_magic_botania_05_gaia_guardian_json = lib.mkOption {
    description = "achievements_magic_botania_05_gaia_guardian_json configuration (./config/amazingtrophies/achievements/magic/botania/05_gaia_guardian.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/magic/botania/05_gaia_guardian.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "gaia_guardian";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "kill";
              };
              targets = lib.mkOption {
                type = lib.types.str;
                default = "Botania.botania:doppleganger";
              };
              isTargetsAllowList = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        isSpecial = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Botania:gaiaHead";
              };
            };
          };
        };
      };
    };
  };
  achievements_magic_thaumcraft_01_wand_json = lib.mkOption {
    description = "achievements_magic_thaumcraft_01_wand_json configuration (./config/amazingtrophies/achievements/magic/thaumcraft/01_wand.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/magic/thaumcraft/01_wand.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "wand";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:WandCasting";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = -6;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 4;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:WandCasting";
              };
            };
          };
        };
      };
    };
  };
  achievements_magic_thaumcraft_02_thaumatorium_json = lib.mkOption {
    description = "achievements_magic_thaumcraft_02_thaumatorium_json configuration (./config/amazingtrophies/achievements/magic/thaumcraft/02_thaumatorium.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/magic/thaumcraft/02_thaumatorium.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "thaumatorium";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "container.open";
              };
              containers = lib.mkOption {
                type = lib.types.str;
                default = "thaumcraft.common.container.ContainerThaumatorium";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = -4;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 4;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:blockMetalDevice";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
            };
          };
        };
      };
    };
  };
  achievements_magic_thaumcraft_03_infusion_json = lib.mkOption {
    description = "achievements_magic_thaumcraft_03_infusion_json configuration (./config/amazingtrophies/achievements/magic/thaumcraft/03_infusion.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/magic/thaumcraft/03_infusion.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "infusion";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:blockStoneDevice";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = -2;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 4;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:blockStoneDevice";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
      };
    };
  };
  achievements_magic_thaumcraft_04_eldritch_eye_json = lib.mkOption {
    description = "achievements_magic_thaumcraft_04_eldritch_eye_json configuration (./config/amazingtrophies/achievements/magic/thaumcraft/04_eldritch_eye.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/magic/thaumcraft/04_eldritch_eye.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "eldritch_eye";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemEldritchObject";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 4;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemEldritchObject";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
            };
          };
        };
      };
    };
  };
  achievements_magic_thaumcraft_05_primordial_pearl_json = lib.mkOption {
    description = "achievements_magic_thaumcraft_05_primordial_pearl_json configuration (./config/amazingtrophies/achievements/magic/thaumcraft/05_primordial_pearl.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/magic/thaumcraft/05_primordial_pearl.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "primordial_pearl";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemEldritchObject";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 4;
        };
        isSpecial = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemEldritchObject";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
      };
    };
  };
  achievements_mega_ultimate_battery_json = lib.mkOption {
    description = "achievements_mega_ultimate_battery_json configuration (./config/amazingtrophies/achievements/mega_ultimate_battery.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/mega_ultimate_battery.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "mega_ultimate_battery";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 32146;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{GT.ItemCharge: 9223372036854775807L}";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 5;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 4;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 32146;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{GT.ItemCharge: 9223372036854775807L}";
              };
            };
          };
        };
      };
    };
  };
  achievements_naquadah_fuel_mkvi_json = lib.mkOption {
    description = "achievements_naquadah_fuel_mkvi_json configuration (./config/amazingtrophies/achievements/naquadah_fuel_mkvi.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/naquadah_fuel_mkvi.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "naquadah_fuel_mkvi";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "bartworks:gt.bwMetaGeneratedcell";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 10116;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 11;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 6;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "bartworks:gt.bwMetaGeneratedcell";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 10116;
              };
            };
          };
        };
      };
    };
  };
  achievements_nuclear_reactor_json = lib.mkOption {
    description = "achievements_nuclear_reactor_json configuration (./config/amazingtrophies/achievements/nuclear_reactor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/nuclear_reactor.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "nuclear_reactor";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "container.open";
              };
              containers = lib.mkOption {
                type = lib.types.str;
                default = "ic2.core.block.reactor.container.ContainerNuclearReactor";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 7;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 4;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "IC2:blockGenerator";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
            };
          };
        };
      };
    };
  };
  achievements_octuple_solar_panel_json = lib.mkOption {
    description = "achievements_octuple_solar_panel_json configuration (./config/amazingtrophies/achievements/octuple_solar_panel.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/octuple_solar_panel.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "octuple_solar_panel";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "EMT:EMTSolars4";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 9;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 4;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "EMT:EMTSolars4";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
            };
          };
        };
      };
    };
  };
  achievements_omega_armor_json = lib.mkOption {
    description = "achievements_omega_armor_json configuration (./config/amazingtrophies/achievements/omega_armor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/omega_armor.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "omega_armor";
        };
        _condition = lib.mkOption {
          type = lib.types.str;
          default = "Handled via code (NHCore)";
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 11;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 4;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:boundPlateEarth";
              };
            };
          };
        };
      };
    };
  };
  achievements_real_bottled_jaegermeister_json = lib.mkOption {
    description = "achievements_real_bottled_jaegermeister_json configuration (./config/amazingtrophies/achievements/real_bottled_jaegermeister.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/real_bottled_jaegermeister.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "real_bottled_jaegermeister";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.use.finish";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "berriespp:BppPotions";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 5;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 6;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "berriespp:BppPotions";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
      };
    };
  };
  achievements_tech_01_coke_oven_json = lib.mkOption {
    description = "achievements_tech_01_coke_oven_json configuration (./config/amazingtrophies/achievements/tech/01_coke_oven.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/tech/01_coke_oven.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "coke_oven";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:machine.alpha";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = -6;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = -5;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:machine.alpha";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
            };
          };
        };
      };
    };
  };
  achievements_tech_02_small_coal_boiler_json = lib.mkOption {
    description = "achievements_tech_02_small_coal_boiler_json configuration (./config/amazingtrophies/achievements/tech/02_small_coal_boiler.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/tech/02_small_coal_boiler.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "small_coal_boiler";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = -4;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = -5;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
            };
          };
        };
      };
    };
  };
  achievements_tech_03_basic_steam_turbine_json = lib.mkOption {
    description = "achievements_tech_03_basic_steam_turbine_json configuration (./config/amazingtrophies/achievements/tech/03_basic_steam_turbine.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/tech/03_basic_steam_turbine.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
      };
    };
  };
  achievements_tech_04_electric_blast_furnace_json = lib.mkOption {
    description = "achievements_tech_04_electric_blast_furnace_json configuration (./config/amazingtrophies/achievements/tech/04_electric_blast_furnace.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/tech/04_electric_blast_furnace.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "electric_blast_furnace";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = -5;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
            };
          };
        };
      };
    };
  };
  achievements_tech_05_tier_1_rocket_json = lib.mkOption {
    description = "achievements_tech_05_tier_1_rocket_json configuration (./config/amazingtrophies/achievements/tech/05_tier_1_rocket.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/tech/05_tier_1_rocket.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "tier_1_rocket";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "GalacticraftCore:item.spaceship";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = -5;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "GalacticraftCore:item.spaceship";
              };
            };
          };
        };
      };
    };
  };
  achievements_tech_06_cleanroom_json = lib.mkOption {
    description = "achievements_tech_06_cleanroom_json configuration (./config/amazingtrophies/achievements/tech/06_cleanroom.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/tech/06_cleanroom.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "cleanroom";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 1172;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 4;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = -5;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 1172;
              };
            };
          };
        };
      };
    };
  };
  achievements_tech_07_me_controller_json = lib.mkOption {
    description = "achievements_tech_07_me_controller_json configuration (./config/amazingtrophies/achievements/tech/07_me_controller.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/tech/07_me_controller.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "me_controller";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "appliedenergistics2:tile.BlockController";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 6;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = -5;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "chisel:futura";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
      };
    };
  };
  achievements_tech_08_platinum_ingot_json = lib.mkOption {
    description = "achievements_tech_08_platinum_ingot_json configuration (./config/amazingtrophies/achievements/tech/08_platinum_ingot.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/tech/08_platinum_ingot.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "platinum_ingot";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 11085;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 8;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = -5;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 11085;
              };
            };
          };
        };
      };
    };
  };
  achievements_tech_09_assembling_line_json = lib.mkOption {
    description = "achievements_tech_09_assembling_line_json configuration (./config/amazingtrophies/achievements/tech/09_assembling_line.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/tech/09_assembling_line.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "assembling_line";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 1170;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = -6;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = -3;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 1170;
              };
            };
          };
        };
      };
    };
  };
  achievements_tech_10_fusion_reactor_mk1_json = lib.mkOption {
    description = "achievements_tech_10_fusion_reactor_mk1_json configuration (./config/amazingtrophies/achievements/tech/10_fusion_reactor_mk1.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/tech/10_fusion_reactor_mk1.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "fusion_reactor_mk1";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 1193;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = -4;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = -3;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 1193;
              };
            };
          };
        };
      };
    };
  };
  achievements_tech_11_research_station_json = lib.mkOption {
    description = "achievements_tech_11_research_station_json configuration (./config/amazingtrophies/achievements/tech/11_research_station.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/tech/11_research_station.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "research_station";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 15331;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = -2;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = -3;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 15331;
              };
            };
          };
        };
      };
    };
  };
  achievements_tech_12_nano_forge_json = lib.mkOption {
    description = "achievements_tech_12_nano_forge_json configuration (./config/amazingtrophies/achievements/tech/12_nano_forge.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/tech/12_nano_forge.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "nano_forge";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 357;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 0;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = -3;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 357;
              };
            };
          };
        };
      };
    };
  };
  achievements_tech_13_mothership_json = lib.mkOption {
    description = "achievements_tech_13_mothership_json configuration (./config/amazingtrophies/achievements/tech/13_mothership.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/tech/13_mothership.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "mothership";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "dimension.join";
              };
              provider = lib.mkOption {
                type = lib.types.str;
                default = "de.katzenpapst.amunra.mothership.MothershipWorldProvider";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = -3;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "GalacticraftAmunRa:tile.machines1";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
      };
    };
  };
  achievements_tech_14_dyson_swarm_json = lib.mkOption {
    description = "achievements_tech_14_dyson_swarm_json configuration (./config/amazingtrophies/achievements/tech/14_dyson_swarm.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/tech/14_dyson_swarm.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "dyson_swarm";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 14001;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 4;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = -3;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 14001;
              };
            };
          };
        };
      };
    };
  };
  achievements_tech_15_dimensionally_transcendent_plasma_forge_json = lib.mkOption {
    description = "achievements_tech_15_dimensionally_transcendent_plasma_forge_json configuration (./config/amazingtrophies/achievements/tech/15_dimensionally_transcendent_plasma_forge.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/tech/15_dimensionally_transcendent_plasma_forge.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "dimensionally_transcendent_plasma_forge";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 1004;
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 6;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = -3;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 1004;
              };
            };
          };
        };
      };
    };
  };
  achievements_tech_16_stargate_json = lib.mkOption {
    description = "achievements_tech_16_stargate_json configuration (./config/amazingtrophies/achievements/tech/16_stargate.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/tech/16_stargate.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "stargate";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "SGCraft:stargateBase";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 8;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = -3;
        };
        isSpecial = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "SGCraft:stargateBase";
              };
            };
          };
        };
      };
    };
  };
  achievements_unbreakable_tconstruct_tool_json = lib.mkOption {
    description = "achievements_unbreakable_tconstruct_tool_json configuration (./config/amazingtrophies/achievements/unbreakable_tconstruct_tool.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/unbreakable_tconstruct_tool.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "unbreakable_tconstruct_tool";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item.pickup";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:hammer";
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{InfiTool: {Unbreaking: 10}}";
              };
            };
          };
        };
        page = lib.mkOption {
          type = lib.types.str;
          default = "GT New Horizons";
        };
        x = lib.mkOption {
          type = lib.types.int;
          default = 7;
        };
        y = lib.mkOption {
          type = lib.types.int;
          default = 6;
        };
        icon = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:hammer";
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{InfiTool: {RenderExtra: 11, RenderHead: 10, RenderHandle: 8, RenderAccessory: 11}}";
              };
            };
          };
        };
      };
    };
  };
  trophies_100_hearts_json = lib.mkOption {
    description = "trophies_100_hearts_json configuration (./config/amazingtrophies/trophies/100_hearts.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/100_hearts.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "100_hearts";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "100_hearts";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:heartCanister";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
            };
          };
        };
      };
    };
  };
  trophies_10k_damage_json = lib.mkOption {
    description = "trophies_10k_damage_json configuration (./config/amazingtrophies/trophies/10k_damage.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/10k_damage.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "10k_damage";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "10k_damage";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "battlegear2:shield.diamond";
              };
              yawOffset = lib.mkOption {
                type = lib.types.float;
                default = 180.0;
              };
            };
          };
        };
      };
    };
  };
  trophies_all_effects_json = lib.mkOption {
    description = "trophies_all_effects_json configuration (./config/amazingtrophies/trophies/all_effects.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/all_effects.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "all_effects";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "all_effects";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:potion";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 8197;
              };
            };
          };
        };
      };
    };
  };
  trophies_bedrock_json = lib.mkOption {
    description = "trophies_bedrock_json configuration (./config/amazingtrophies/trophies/bedrock.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/bedrock.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "bedrock";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "bedrock";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:bedrock";
              };
            };
          };
        };
      };
    };
  };
  trophies_deep_dark_json = lib.mkOption {
    description = "trophies_deep_dark_json configuration (./config/amazingtrophies/trophies/deep_dark.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/deep_dark.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "deep_dark";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "deep_dark";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "ExtraUtilities:dark_portal";
              };
            };
          };
        };
      };
    };
  };
  trophies_dezils_marshmallow_json = lib.mkOption {
    description = "trophies_dezils_marshmallow_json configuration (./config/amazingtrophies/trophies/dezils_marshmallow.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/dezils_marshmallow.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "dezils_marshmallow";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "dezils_marshmallow";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "DraconicEvolution:dezilsMarshmallow";
              };
            };
          };
        };
      };
    };
  };
  trophies_enhanced_charm_of_dislocation_json = lib.mkOption {
    description = "trophies_enhanced_charm_of_dislocation_json configuration (./config/amazingtrophies/trophies/enhanced_charm_of_dislocation.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/enhanced_charm_of_dislocation.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "enhanced_charm_of_dislocation";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "enhanced_charm_of_dislocation";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "DraconicEvolution:teleporterMKII";
              };
            };
          };
        };
      };
    };
  };
  trophies_eternity_beacon_json = lib.mkOption {
    description = "trophies_eternity_beacon_json configuration (./config/amazingtrophies/trophies/eternity_beacon.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/eternity_beacon.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "eternity_beacon";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "eternity_beacon";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "complex";
              };
              keys = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    A = lib.mkOption {
                      type = lib.types.str;
                      default = "minecraft:beacon";
                    };
                    B = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockmetal9";
                    };
                  };
                };
              };
              metadata = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    A = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    B = lib.mkOption {
                      type = lib.types.int;
                      default = 9;
                    };
                  };
                };
              };
              transpose = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              structure = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "0" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "    A    ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                        };
                      };
                    };
                    "1" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BBB   ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BBB   ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BBB   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                        };
                      };
                    };
                    "2" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBBB  ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBBB  ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBBB  ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBBB  ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBBB  ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                        };
                      };
                    };
                    "3" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = " BBBBBBB ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = " BBBBBBB ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = " BBBBBBB ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = " BBBBBBB ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = " BBBBBBB ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = " BBBBBBB ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = " BBBBBBB ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ";
                          };
                        };
                      };
                    };
                    "4" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBBBBBBBB";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBBBBBBBB";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBBBBBBBB";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBBBBBBBB";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBBBBBBBB";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBBBBBBBB";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBBBBBBBB";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBBBBBBBB";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBBBBBBBB";
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
  trophies_infinity_armor_json = lib.mkOption {
    description = "trophies_infinity_armor_json configuration (./config/amazingtrophies/trophies/infinity_armor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/infinity_armor.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "infinity_armor";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "infinity_armor";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Avaritia:Infinity_Chest";
              };
            };
          };
        };
      };
    };
  };
  trophies_magic_bloodmagic_01_sacrificial_knife_json = lib.mkOption {
    description = "trophies_magic_bloodmagic_01_sacrificial_knife_json configuration (./config/amazingtrophies/trophies/magic/bloodmagic/01_sacrificial_knife.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/magic/bloodmagic/01_sacrificial_knife.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "sacrificial_knife";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "sacrificial_knife";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:sacrificialKnife";
              };
            };
          };
        };
      };
    };
  };
  trophies_magic_bloodmagic_02_weak_blood_orb_json = lib.mkOption {
    description = "trophies_magic_bloodmagic_02_weak_blood_orb_json configuration (./config/amazingtrophies/trophies/magic/bloodmagic/02_weak_blood_orb.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/magic/bloodmagic/02_weak_blood_orb.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "weak_blood_orb";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "weak_blood_orb";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:weakBloodOrb";
              };
            };
          };
        };
      };
    };
  };
  trophies_magic_bloodmagic_03_blood_altar_json = lib.mkOption {
    description = "trophies_magic_bloodmagic_03_blood_altar_json configuration (./config/amazingtrophies/trophies/magic/bloodmagic/03_blood_altar.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/magic/bloodmagic/03_blood_altar.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "blood_altar";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "blood_altar";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:Altar";
              };
              yOffset = lib.mkOption {
                type = lib.types.float;
                default = -0.1875;
              };
            };
          };
        };
      };
    };
  };
  trophies_magic_bloodmagic_04_bound_pickaxe_json = lib.mkOption {
    description = "trophies_magic_bloodmagic_04_bound_pickaxe_json configuration (./config/amazingtrophies/trophies/magic/bloodmagic/04_bound_pickaxe.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/magic/bloodmagic/04_bound_pickaxe.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "bound_pickaxe";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "bound_pickaxe";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:boundPickaxe";
              };
            };
          };
        };
      };
    };
  };
  trophies_magic_bloodmagic_05_minor_demon_grunt_json = lib.mkOption {
    description = "trophies_magic_bloodmagic_05_minor_demon_grunt_json configuration (./config/amazingtrophies/trophies/magic/bloodmagic/05_minor_demon_grunt.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/magic/bloodmagic/05_minor_demon_grunt.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "minor_demon_grunt";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "minor_demon_grunt";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:demonPortalMain";
              };
            };
          };
        };
      };
    };
  };
  trophies_magic_botania_01_mana_pool_json = lib.mkOption {
    description = "trophies_magic_botania_01_mana_pool_json configuration (./config/amazingtrophies/trophies/magic/botania/01_mana_pool.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/magic/botania/01_mana_pool.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "mana_pool";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "mana_pool";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Botania:pool";
              };
            };
          };
        };
      };
    };
  };
  trophies_magic_botania_02_runic_altar_json = lib.mkOption {
    description = "trophies_magic_botania_02_runic_altar_json configuration (./config/amazingtrophies/trophies/magic/botania/02_runic_altar.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/magic/botania/02_runic_altar.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "runic_altar";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "runic_altar";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Botania:runeAltar";
              };
            };
          };
        };
      };
    };
  };
  trophies_magic_botania_03_terrasteel_ingot_json = lib.mkOption {
    description = "trophies_magic_botania_03_terrasteel_ingot_json configuration (./config/amazingtrophies/trophies/magic/botania/03_terrasteel_ingot.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/magic/botania/03_terrasteel_ingot.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "terrasteel_ingot";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "terrasteel_ingot";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Botania:manaResource";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 4;
              };
            };
          };
        };
      };
    };
  };
  trophies_magic_botania_04_elven_gateway_json = lib.mkOption {
    description = "trophies_magic_botania_04_elven_gateway_json configuration (./config/amazingtrophies/trophies/magic/botania/04_elven_gateway.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/magic/botania/04_elven_gateway.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "elven_gateway";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "elven_gateway";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "complex";
              };
              keys = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    A = lib.mkOption {
                      type = lib.types.str;
                      default = "Botania:pool";
                    };
                    B = lib.mkOption {
                      type = lib.types.str;
                      default = "Botania:livingwood";
                    };
                    C = lib.mkOption {
                      type = lib.types.str;
                      default = "Botania:pylon";
                    };
                    D = lib.mkOption {
                      type = lib.types.str;
                      default = "Botania:livingwood";
                    };
                    "~" = lib.mkOption {
                      type = lib.types.str;
                      default = "Botania:alfheimPortal";
                    };
                  };
                };
              };
              metadata = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    A = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    B = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    C = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    D = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                    "~" = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                  };
                };
              };
              transpose = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              structure = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "0" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "       ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "       ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "       ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BDB  ";
                          };
                        };
                      };
                    };
                    "1" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "       ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "       ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "       ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = " B   B ";
                          };
                        };
                      };
                    };
                    "2" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "       ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "       ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "       ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = " D   D ";
                          };
                        };
                      };
                    };
                    "3" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "C     C";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "       ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "       ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = " B   B ";
                          };
                        };
                      };
                    };
                    "4" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "A     A";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "       ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "       ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "  B~B  ";
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
  trophies_magic_botania_05_gaia_guardian_json = lib.mkOption {
    description = "trophies_magic_botania_05_gaia_guardian_json configuration (./config/amazingtrophies/trophies/magic/botania/05_gaia_guardian.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/magic/botania/05_gaia_guardian.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "gaia_guardian";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "gaia_guardian";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Botania:manaResource";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
            };
          };
        };
      };
    };
  };
  trophies_magic_thaumcraft_01_wand_json = lib.mkOption {
    description = "trophies_magic_thaumcraft_01_wand_json configuration (./config/amazingtrophies/trophies/magic/thaumcraft/01_wand.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/magic/thaumcraft/01_wand.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "wand";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "wand";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:WandCasting";
              };
            };
          };
        };
      };
    };
  };
  trophies_magic_thaumcraft_02_thaumatorium_json = lib.mkOption {
    description = "trophies_magic_thaumcraft_02_thaumatorium_json configuration (./config/amazingtrophies/trophies/magic/thaumcraft/02_thaumatorium.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/magic/thaumcraft/02_thaumatorium.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "thaumatorium";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "thaumatorium";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:blockMetalDevice";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 9;
              };
            };
          };
        };
      };
    };
  };
  trophies_magic_thaumcraft_03_infusion_json = lib.mkOption {
    description = "trophies_magic_thaumcraft_03_infusion_json configuration (./config/amazingtrophies/trophies/magic/thaumcraft/03_infusion.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/magic/thaumcraft/03_infusion.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "infusion";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "infusion";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:blockStoneDevice";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
      };
    };
  };
  trophies_magic_thaumcraft_04_eldritch_eye_json = lib.mkOption {
    description = "trophies_magic_thaumcraft_04_eldritch_eye_json configuration (./config/amazingtrophies/trophies/magic/thaumcraft/04_eldritch_eye.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/magic/thaumcraft/04_eldritch_eye.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "eldritch_eye";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "eldritch_eye";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemEldritchObject";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
            };
          };
        };
      };
    };
  };
  trophies_magic_thaumcraft_05_primordial_pearl_json = lib.mkOption {
    description = "trophies_magic_thaumcraft_05_primordial_pearl_json configuration (./config/amazingtrophies/trophies/magic/thaumcraft/05_primordial_pearl.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/magic/thaumcraft/05_primordial_pearl.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "primordial_pearl";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "primordial_pearl";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Thaumcraft:ItemEldritchObject";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
            };
          };
        };
      };
    };
  };
  trophies_mega_ultimate_battery_json = lib.mkOption {
    description = "trophies_mega_ultimate_battery_json configuration (./config/amazingtrophies/trophies/mega_ultimate_battery.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/mega_ultimate_battery.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "mega_ultimate_battery";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "mega_ultimate_battery";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 32146;
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{GT.ItemCharge: 9223372036854775807L}";
              };
              yOffset = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
              };
            };
          };
        };
      };
    };
  };
  trophies_naquadah_fuel_mkvi_json = lib.mkOption {
    description = "trophies_naquadah_fuel_mkvi_json configuration (./config/amazingtrophies/trophies/naquadah_fuel_mkvi.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/naquadah_fuel_mkvi.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "naquadah_fuel_mkvi";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "naquadah_fuel_mkvi";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "bartworks:gt.bwMetaGeneratedcell";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 10116;
              };
            };
          };
        };
      };
    };
  };
  trophies_nuclear_reactor_json = lib.mkOption {
    description = "trophies_nuclear_reactor_json configuration (./config/amazingtrophies/trophies/nuclear_reactor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/nuclear_reactor.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "nuclear_reactor";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "nuclear_reactor";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "complex";
              };
              keys = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    A = lib.mkOption {
                      type = lib.types.str;
                      default = "IC2:blockReactorChamber";
                    };
                    B = lib.mkOption {
                      type = lib.types.str;
                      default = "IC2:blockGenerator";
                    };
                  };
                };
              };
              metadata = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    A = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    B = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                  };
                };
              };
              structure = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "0" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "   ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = " A ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "   ";
                          };
                        };
                      };
                    };
                    "1" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = " A ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "ABA";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = " A ";
                          };
                        };
                      };
                    };
                    "2" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "   ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = " A ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "   ";
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
  trophies_octuple_solar_panel_json = lib.mkOption {
    description = "trophies_octuple_solar_panel_json configuration (./config/amazingtrophies/trophies/octuple_solar_panel.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/octuple_solar_panel.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "octuple_solar_panel";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "octuple_solar_panel";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "EMT:EMTSolars4";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
            };
          };
        };
      };
    };
  };
  trophies_omega_armor_json = lib.mkOption {
    description = "trophies_omega_armor_json configuration (./config/amazingtrophies/trophies/omega_armor.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/omega_armor.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "omega_armor";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "omega_armor";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "AWWayofTime:boundPlateEarth";
              };
            };
          };
        };
      };
    };
  };
  trophies_real_bottled_jaegermeister_json = lib.mkOption {
    description = "trophies_real_bottled_jaegermeister_json configuration (./config/amazingtrophies/trophies/real_bottled_jaegermeister.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/real_bottled_jaegermeister.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "real_bottled_jaegermeister";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "real_bottled_jaegermeister";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "berriespp:BppPotions";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
            };
          };
        };
      };
    };
  };
  trophies_tech_01_coke_oven_json = lib.mkOption {
    description = "trophies_tech_01_coke_oven_json configuration (./config/amazingtrophies/trophies/tech/01_coke_oven.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/tech/01_coke_oven.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "coke_oven";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "coke_oven";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "Railcraft:machine.alpha";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 7;
              };
              yawOffset = lib.mkOption {
                type = lib.types.float;
                default = 180.0;
              };
            };
          };
        };
      };
    };
  };
  trophies_tech_02_small_coal_boiler_json = lib.mkOption {
    description = "trophies_tech_02_small_coal_boiler_json configuration (./config/amazingtrophies/trophies/tech/02_small_coal_boiler.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/tech/02_small_coal_boiler.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "small_coal_boiler";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "small_coal_boiler";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              yawOffset = lib.mkOption {
                type = lib.types.float;
                default = 180.0;
              };
            };
          };
        };
      };
    };
  };
  trophies_tech_03_basic_steam_turbine_json = lib.mkOption {
    description = "trophies_tech_03_basic_steam_turbine_json configuration (./config/amazingtrophies/trophies/tech/03_basic_steam_turbine.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/tech/03_basic_steam_turbine.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "basic_steam_turbine";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "basic_steam_turbine";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockmachines";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 1120;
              };
              yawOffset = lib.mkOption {
                type = lib.types.float;
                default = 180.0;
              };
            };
          };
        };
      };
    };
  };
  trophies_tech_04_electric_blast_furnace_json = lib.mkOption {
    description = "trophies_tech_04_electric_blast_furnace_json configuration (./config/amazingtrophies/trophies/tech/04_electric_blast_furnace.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/tech/04_electric_blast_furnace.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "electric_blast_furnace";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "electric_blast_furnace";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "complex";
              };
              keys = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    t = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings";
                    };
                    C = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings5";
                    };
                    "~" = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockmachines";
                    };
                  };
                };
              };
              metadata = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    t = lib.mkOption {
                      type = lib.types.int;
                      default = 11;
                    };
                    C = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    "~" = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                  };
                };
              };
              transpose = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              structure = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "0" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "ttt";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "ttt";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "ttt";
                          };
                        };
                      };
                    };
                    "1" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCC";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "C C";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCC";
                          };
                        };
                      };
                    };
                    "2" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCC";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "C C";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCC";
                          };
                        };
                      };
                    };
                    "3" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "t~t";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "ttt";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "ttt";
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
  trophies_tech_05_tier_1_rocket_json = lib.mkOption {
    description = "trophies_tech_05_tier_1_rocket_json configuration (./config/amazingtrophies/trophies/tech/05_tier_1_rocket.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/tech/05_tier_1_rocket.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "tier_1_rocket";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "tier_1_rocket";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "GalacticraftCore:item.spaceship";
              };
              scale = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              yOffset = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
              };
            };
          };
        };
      };
    };
  };
  trophies_tech_06_cleanroom_json = lib.mkOption {
    description = "trophies_tech_06_cleanroom_json configuration (./config/amazingtrophies/trophies/tech/06_cleanroom.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/tech/06_cleanroom.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "cleanroom";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "cleanroom";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "complex";
              };
              keys = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    A = lib.mkOption {
                      type = lib.types.str;
                      default = "IC2:blockAlloyGlass";
                    };
                    B = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings3";
                    };
                    C = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockreinforced";
                    };
                    D = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockmachines";
                    };
                    E = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockmachines";
                    };
                    "~" = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockmachines";
                    };
                  };
                };
              };
              metadata = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    A = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    B = lib.mkOption {
                      type = lib.types.int;
                      default = 11;
                    };
                    C = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                    D = lib.mkOption {
                      type = lib.types.int;
                      default = 4127;
                    };
                    E = lib.mkOption {
                      type = lib.types.int;
                      default = 1182;
                    };
                    "~" = lib.mkOption {
                      type = lib.types.int;
                      default = 1172;
                    };
                  };
                };
              };
              structure = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "0" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCCCC";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "CAAAC";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "CAAAC";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "CAAAC";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCCCC";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "D   D";
                          };
                        };
                      };
                    };
                    "1" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "CBBBC";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "C   C";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "C   C";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "C   C";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCCCC";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "     ";
                          };
                        };
                      };
                    };
                    "2" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "CB~BC";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "C   C";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "C   C";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "C   C";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCCCC";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "     ";
                          };
                        };
                      };
                    };
                    "3" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "CBBBC";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "C   C";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "C   C";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "C E C";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCCCC";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "     ";
                          };
                        };
                      };
                    };
                    "4" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCCCC";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCCCC";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCCCC";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCCCC";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCCCC";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "D   D";
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
  trophies_tech_07_me_controller_json = lib.mkOption {
    description = "trophies_tech_07_me_controller_json configuration (./config/amazingtrophies/trophies/tech/07_me_controller.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/tech/07_me_controller.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "me_controller";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "me_controller";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "chisel:futura";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
            };
          };
        };
      };
    };
  };
  trophies_tech_08_platinum_ingot_json = lib.mkOption {
    description = "trophies_tech_08_platinum_ingot_json configuration (./config/amazingtrophies/trophies/tech/08_platinum_ingot.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/tech/08_platinum_ingot.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "platinum_ingot";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "platinum_ingot";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.metaitem.01";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 11085;
              };
            };
          };
        };
      };
    };
  };
  trophies_tech_09_assembling_line_json = lib.mkOption {
    description = "trophies_tech_09_assembling_line_json configuration (./config/amazingtrophies/trophies/tech/09_assembling_line.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/tech/09_assembling_line.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "assembling_line";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "assembling_line";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "complex";
              };
              keys = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    A = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings2";
                    };
                    B = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings3";
                    };
                    C = lib.mkOption {
                      type = lib.types.str;
                      default = "IC2:blockAlloyGlass";
                    };
                    D = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings2";
                    };
                    "~" = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockmachines";
                    };
                  };
                };
              };
              metadata = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    A = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    B = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                    C = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    D = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                    "~" = lib.mkOption {
                      type = lib.types.int;
                      default = 1170;
                    };
                  };
                };
              };
              transpose = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              structure = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "0" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "AAAAAAAAAAAAAAAA";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "1" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "~BBBBBBBBBBBBBBB";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "AAAAAAAAAAAAAAAA";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBBBBBBBBBBBBBBB";
                          };
                        };
                      };
                    };
                    "2" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCCCCCCCCCCCCCCC";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "DDDDDDDDDDDDDDDD";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCCCCCCCCCCCCCCC";
                          };
                        };
                      };
                    };
                    "3" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "AAAAAAAAAAAAAAAA";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "AAAAAAAAAAAAAAAA";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "AAAAAAAAAAAAAAAA";
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
  trophies_tech_10_fusion_reactor_mk1_json = lib.mkOption {
    description = "trophies_tech_10_fusion_reactor_mk1_json configuration (./config/amazingtrophies/trophies/tech/10_fusion_reactor_mk1.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/tech/10_fusion_reactor_mk1.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "fusion_reactor_mk1";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "fusion_reactor_mk1";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "complex";
              };
              keys = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    i = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings";
                    };
                    h = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings";
                    };
                    e = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings";
                    };
                    x = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings";
                    };
                    c = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings";
                    };
                    "~" = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockmachines";
                    };
                  };
                };
              };
              metadata = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    i = lib.mkOption {
                      type = lib.types.int;
                      default = 6;
                    };
                    h = lib.mkOption {
                      type = lib.types.int;
                      default = 6;
                    };
                    e = lib.mkOption {
                      type = lib.types.int;
                      default = 6;
                    };
                    x = lib.mkOption {
                      type = lib.types.int;
                      default = 6;
                    };
                    c = lib.mkOption {
                      type = lib.types.int;
                      default = 15;
                    };
                    "~" = lib.mkOption {
                      type = lib.types.int;
                      default = 1193;
                    };
                  };
                };
              };
              transpose = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              structure = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "0" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "               ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "      ihi      ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "    hh   hh    ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "   h       h   ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "  h         h  ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "  h         h  ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = " i           i ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = " h           h ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = " i           i ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "  h         h  ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "  h         h  ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "   h       h   ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "    hh   hh    ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "      ihi      ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "               ";
                          };
                        };
                      };
                    };
                    "1" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "      xhx      ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "    hhccchh    ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "   eccxhxcce   ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "  eceh   hece  ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = " hce       ech ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = " hch       hch ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "xcx         xcx";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "hch         hch";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "xcx         xcx";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = " hch       hch ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = " hce       ech ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "  eceh   hece  ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "   eccx~xcce   ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "    hhccchh    ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "      xhx      ";
                          };
                        };
                      };
                    };
                    "2" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "               ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "      ihi      ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "    hh   hh    ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "   h       h   ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "  h         h  ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "  h         h  ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = " i           i ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = " h           h ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = " i           i ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "  h         h  ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "  h         h  ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "   h       h   ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "    hh   hh    ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "      ihi      ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "               ";
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
  trophies_tech_11_research_station_json = lib.mkOption {
    description = "trophies_tech_11_research_station_json configuration (./config/amazingtrophies/trophies/tech/11_research_station.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/tech/11_research_station.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "research_station";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "research_station";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "complex";
              };
              keys = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    A = lib.mkOption {
                      type = lib.types.str;
                      default = "tectech:gt.blockcasingsTT";
                    };
                    B = lib.mkOption {
                      type = lib.types.str;
                      default = "tectech:gt.blockcasingsTT";
                    };
                    C = lib.mkOption {
                      type = lib.types.str;
                      default = "tectech:gt.blockcasingsTT";
                    };
                    D = lib.mkOption {
                      type = lib.types.str;
                      default = "tectech:gt.blockcasingsTT";
                    };
                    E = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockmachines";
                    };
                    "~" = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockmachines";
                    };
                  };
                };
              };
              metadata = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    A = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    B = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                    C = lib.mkOption {
                      type = lib.types.int;
                      default = 3;
                    };
                    D = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    E = lib.mkOption {
                      type = lib.types.int;
                      default = 15451;
                    };
                    "~" = lib.mkOption {
                      type = lib.types.int;
                      default = 15331;
                    };
                  };
                };
              };
              transpose = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              structure = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "0" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "   ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = " A ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = " A ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "AAA";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "AAA";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "AAA";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "AAA";
                          };
                        };
                      };
                    };
                    "1" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "AAA";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "ACA";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "ACA";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "ACA";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "BCB";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "BCB";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBB";
                          };
                        };
                      };
                    };
                    "2" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "   ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = " C ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "   ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "   ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "ACA";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCC";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "DDD";
                          };
                        };
                      };
                    };
                    "3" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "   ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = " E ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "   ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "   ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "A~A";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCC";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "DDD";
                          };
                        };
                      };
                    };
                    "4" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "   ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = " C ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "   ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "   ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "ACA";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "CCC";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "DDD";
                          };
                        };
                      };
                    };
                    "5" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "AAA";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "ACA";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "ACA";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "ACA";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "BCB";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "BCB";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBB";
                          };
                        };
                      };
                    };
                    "6" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "   ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = " A ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = " A ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "AAA";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "AAA";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "AAA";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "AAA";
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
  trophies_tech_12_nano_forge_json = lib.mkOption {
    description = "trophies_tech_12_nano_forge_json configuration (./config/amazingtrophies/trophies/tech/12_nano_forge.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/tech/12_nano_forge.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "nano_forge";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "nano_forge";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "complex";
              };
              keys = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    A = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings2";
                    };
                    B = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings8";
                    };
                    C = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockmachines";
                    };
                  };
                };
              };
              metadata = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    A = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                    B = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                    C = lib.mkOption {
                      type = lib.types.int;
                      default = 4501;
                    };
                  };
                };
              };
              structure = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "0" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "    CC                       ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "  CC                         ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "    CC                       ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "  CC                         ";
                          };
                          "24" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "25" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "26" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "27" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "28" = lib.mkOption {
                            type = lib.types.str;
                            default = "    CC                       ";
                          };
                          "29" = lib.mkOption {
                            type = lib.types.str;
                            default = "  CC                         ";
                          };
                          "30" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "31" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "32" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "33" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "34" = lib.mkOption {
                            type = lib.types.str;
                            default = "    CC                       ";
                          };
                          "35" = lib.mkOption {
                            type = lib.types.str;
                            default = "  CC                         ";
                          };
                          "36" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "37" = lib.mkOption {
                            type = lib.types.str;
                            default = " BBBBBB               BBBBBB ";
                          };
                        };
                      };
                    };
                    "1" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "      C                      ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = " C                           ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "      C                      ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "24" = lib.mkOption {
                            type = lib.types.str;
                            default = " C                           ";
                          };
                          "25" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "26" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "27" = lib.mkOption {
                            type = lib.types.str;
                            default = "      C                      ";
                          };
                          "28" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "29" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "30" = lib.mkOption {
                            type = lib.types.str;
                            default = " C                           ";
                          };
                          "31" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "32" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "33" = lib.mkOption {
                            type = lib.types.str;
                            default = "      C                      ";
                          };
                          "34" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "35" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "36" = lib.mkOption {
                            type = lib.types.str;
                            default = " C                           ";
                          };
                          "37" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBBBBBBB             BBBBBBBB";
                          };
                        };
                      };
                    };
                    "2" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                        ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCAA                        ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "C  BB                        ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "       C                     ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "C                            ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB  C                     ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                        ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                        ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                   BB   ";
                          };
                          "24" = lib.mkOption {
                            type = lib.types.str;
                            default = "                        AA   ";
                          };
                          "25" = lib.mkOption {
                            type = lib.types.str;
                            default = "C                       BB   ";
                          };
                          "26" = lib.mkOption {
                            type = lib.types.str;
                            default = "       C                     ";
                          };
                          "27" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "28" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "29" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "30" = lib.mkOption {
                            type = lib.types.str;
                            default = "                        BB   ";
                          };
                          "31" = lib.mkOption {
                            type = lib.types.str;
                            default = "C  BB                   AA   ";
                          };
                          "32" = lib.mkOption {
                            type = lib.types.str;
                            default = "   AA  C                BB   ";
                          };
                          "33" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                        ";
                          };
                          "34" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "35" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "36" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "37" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBBBBBBB             BBBBBBBB";
                          };
                        };
                      };
                    };
                    "3" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBB                       ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ABBA                       ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "C BBBB                       ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB  C                     ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                        ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                        ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                        ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB         B              ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "C  BB         B              ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBB C      B              ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBB        B              ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBB        B              ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBB        B        BBBB  ";
                          };
                          "24" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB         B        ABBA  ";
                          };
                          "25" = lib.mkOption {
                            type = lib.types.str;
                            default = "C  BB         B        BBBB  ";
                          };
                          "26" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB  C                BB   ";
                          };
                          "27" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                   BB   ";
                          };
                          "28" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                   BB   ";
                          };
                          "29" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                   BB   ";
                          };
                          "30" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                  BBBB  ";
                          };
                          "31" = lib.mkOption {
                            type = lib.types.str;
                            default = "C BBBB                 ABBA  ";
                          };
                          "32" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ABBA C               BBBB  ";
                          };
                          "33" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBB                  BB   ";
                          };
                          "34" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                   BB   ";
                          };
                          "35" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                   BB   ";
                          };
                          "36" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                   BB   ";
                          };
                          "37" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBBBBBBB             BBBBBBBB";
                          };
                        };
                      };
                    };
                    "4" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBB                       ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ABBA                       ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBB C                     ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "C  BB        CBC             ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB        CBC             ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB        CBC             ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB        CBC             ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB        CBC             ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB  C     CBC             ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "C BBBB       CBC             ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBB       CBC             ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBB       CBC             ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBB       CBC       BBBB  ";
                          };
                          "24" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB        CBC       ABBA  ";
                          };
                          "25" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB  C     CBC       BBBB  ";
                          };
                          "26" = lib.mkOption {
                            type = lib.types.str;
                            default = "C  BB        CBC        BB   ";
                          };
                          "27" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB        CBC        BB   ";
                          };
                          "28" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB        CBC        BB   ";
                          };
                          "29" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB        CBC        BB   ";
                          };
                          "30" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                  BBBB  ";
                          };
                          "31" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBB C               ABBA  ";
                          };
                          "32" = lib.mkOption {
                            type = lib.types.str;
                            default = "C ABBA                 BBBB  ";
                          };
                          "33" = lib.mkOption {
                            type = lib.types.str;
                            default = "  BBBB                  BB   ";
                          };
                          "34" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                   BB   ";
                          };
                          "35" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                   BB   ";
                          };
                          "36" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB                   BB   ";
                          };
                          "37" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBBBBBBB    BBBBB    BBBBBBBB";
                          };
                        };
                      };
                    };
                    "5" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "              C              ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "              C              ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "              C              ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "              C              ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "              C              ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB        CBC             ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "   AACC      CBC             ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB  C     CBC             ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "C           CB BC            ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "            CB BC            ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "            CB BC            ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "            CB BC            ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "            BB BB            ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "       C    BB BB            ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "C  BB       BB BB            ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB       BB BB            ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB       BB BB            ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB       BB BB       BB   ";
                          };
                          "24" = lib.mkOption {
                            type = lib.types.str;
                            default = "            BB BB       AA   ";
                          };
                          "25" = lib.mkOption {
                            type = lib.types.str;
                            default = "       C    BB BB       BB   ";
                          };
                          "26" = lib.mkOption {
                            type = lib.types.str;
                            default = "C           CB BC            ";
                          };
                          "27" = lib.mkOption {
                            type = lib.types.str;
                            default = "            CB BC            ";
                          };
                          "28" = lib.mkOption {
                            type = lib.types.str;
                            default = "            CB BC            ";
                          };
                          "29" = lib.mkOption {
                            type = lib.types.str;
                            default = "            CB BC            ";
                          };
                          "30" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC        BB   ";
                          };
                          "31" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB  C     CBC        AA   ";
                          };
                          "32" = lib.mkOption {
                            type = lib.types.str;
                            default = "C  AA        CBC        BB   ";
                          };
                          "33" = lib.mkOption {
                            type = lib.types.str;
                            default = "   BB        CBC             ";
                          };
                          "34" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "35" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "36" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "37" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBBBBBBB   BBBBBBB   BBBBBBBB";
                          };
                        };
                      };
                    };
                    "6" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = " C           B B             ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "      C     B   B            ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = " C         BB   BB           ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "           BB   BB           ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "24" = lib.mkOption {
                            type = lib.types.str;
                            default = "      C     B   B            ";
                          };
                          "25" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "26" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "27" = lib.mkOption {
                            type = lib.types.str;
                            default = " C          B   B            ";
                          };
                          "28" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "29" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "30" = lib.mkOption {
                            type = lib.types.str;
                            default = "      C      B B             ";
                          };
                          "31" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "32" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "33" = lib.mkOption {
                            type = lib.types.str;
                            default = " C           B B             ";
                          };
                          "34" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "35" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "36" = lib.mkOption {
                            type = lib.types.str;
                            default = "      C      B B             ";
                          };
                          "37" = lib.mkOption {
                            type = lib.types.str;
                            default = "BBBBBBBB  BBBBBBBBB  BBBBBBBB";
                          };
                        };
                      };
                    };
                    "7" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "  CC        B   B            ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "    CC      B   B            ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "           BB   BB           ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "  CC       BB   BB           ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "    CC      B   B            ";
                          };
                          "24" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "25" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "26" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "27" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "28" = lib.mkOption {
                            type = lib.types.str;
                            default = "  CC         B B             ";
                          };
                          "29" = lib.mkOption {
                            type = lib.types.str;
                            default = "    CC       B B             ";
                          };
                          "30" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "31" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "32" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "33" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "34" = lib.mkOption {
                            type = lib.types.str;
                            default = "  CC         B B             ";
                          };
                          "35" = lib.mkOption {
                            type = lib.types.str;
                            default = "    CC       B B             ";
                          };
                          "36" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "37" = lib.mkOption {
                            type = lib.types.str;
                            default = " BBBBBB   BBBBBBBBB   BBBBBB ";
                          };
                        };
                      };
                    };
                    "8" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "           BB   BB           ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "           BB   BB           ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "24" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "25" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "26" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "27" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "28" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "29" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "30" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "31" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "32" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "33" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "34" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "35" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "36" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "37" = lib.mkOption {
                            type = lib.types.str;
                            default = "          BBBBBBBBB          ";
                          };
                        };
                      };
                    };
                    "9" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "              B              ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "           BB   BB           ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "           BB   BB           ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "24" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "25" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "26" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "27" = lib.mkOption {
                            type = lib.types.str;
                            default = "            B   B            ";
                          };
                          "28" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "29" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "30" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "31" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "32" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "33" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "34" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "35" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "36" = lib.mkOption {
                            type = lib.types.str;
                            default = "             B B             ";
                          };
                          "37" = lib.mkOption {
                            type = lib.types.str;
                            default = "          BBBBBBBBB          ";
                          };
                        };
                      };
                    };
                    "10" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "              C              ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "              C              ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "              C              ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "              C              ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "              C              ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "            CB BC            ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "            CB BC            ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "            CB BC            ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "            CB BC            ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "            BB BB            ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "            BB BB            ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "            BB BB            ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "            BB BB            ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "            BB BB            ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "            BB BB            ";
                          };
                          "24" = lib.mkOption {
                            type = lib.types.str;
                            default = "            BB BB            ";
                          };
                          "25" = lib.mkOption {
                            type = lib.types.str;
                            default = "            BB BB            ";
                          };
                          "26" = lib.mkOption {
                            type = lib.types.str;
                            default = "            CB BC            ";
                          };
                          "27" = lib.mkOption {
                            type = lib.types.str;
                            default = "            CB BC            ";
                          };
                          "28" = lib.mkOption {
                            type = lib.types.str;
                            default = "            CB BC            ";
                          };
                          "29" = lib.mkOption {
                            type = lib.types.str;
                            default = "            CB BC            ";
                          };
                          "30" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "31" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "32" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "33" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "34" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "35" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "36" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "37" = lib.mkOption {
                            type = lib.types.str;
                            default = "           BBBBBBB           ";
                          };
                        };
                      };
                    };
                    "11" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "24" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "25" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "26" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "27" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "28" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "29" = lib.mkOption {
                            type = lib.types.str;
                            default = "             CBC             ";
                          };
                          "30" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "31" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "32" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "33" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "34" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "35" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "36" = lib.mkOption {
                            type = lib.types.str;
                            default = "                             ";
                          };
                          "37" = lib.mkOption {
                            type = lib.types.str;
                            default = "            BBBBB            ";
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
  trophies_tech_13_mothership_json = lib.mkOption {
    description = "trophies_tech_13_mothership_json configuration (./config/amazingtrophies/trophies/tech/13_mothership.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/tech/13_mothership.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "mothership";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "mothership";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "GalacticraftAmunRa:tile.machines1";
              };
              meta = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              yawOffset = lib.mkOption {
                type = lib.types.float;
                default = 90.0;
              };
            };
          };
        };
      };
    };
  };
  trophies_tech_14_dyson_swarm_json = lib.mkOption {
    description = "trophies_tech_14_dyson_swarm_json configuration (./config/amazingtrophies/trophies/tech/14_dyson_swarm.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/tech/14_dyson_swarm.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "dyson_swarm";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "dyson_swarm";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "complex";
              };
              keys = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    b = lib.mkOption {
                      type = lib.types.str;
                      default = "GalaxySpace:dysonswarmparts";
                    };
                    c = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings5";
                    };
                    d = lib.mkOption {
                      type = lib.types.str;
                      default = "GalaxySpace:dysonswarmparts";
                    };
                    e = lib.mkOption {
                      type = lib.types.str;
                      default = "GalaxySpace:dysonswarmparts";
                    };
                    f = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockmachines";
                    };
                    g = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockmachines";
                    };
                    h = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings6";
                    };
                    i = lib.mkOption {
                      type = lib.types.str;
                      default = "GalaxySpace:dysonswarmparts";
                    };
                    j = lib.mkOption {
                      type = lib.types.str;
                      default = "GalaxySpace:dysonswarmparts";
                    };
                    k = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockmachines";
                    };
                    m = lib.mkOption {
                      type = lib.types.str;
                      default = "GalaxySpace:dysonswarmparts";
                    };
                    n = lib.mkOption {
                      type = lib.types.str;
                      default = "GalaxySpace:dysonswarmparts";
                    };
                    o = lib.mkOption {
                      type = lib.types.str;
                      default = "GalaxySpace:dysonswarmparts";
                    };
                    p = lib.mkOption {
                      type = lib.types.str;
                      default = "GalaxySpace:dysonswarmparts";
                    };
                    s = lib.mkOption {
                      type = lib.types.str;
                      default = "GalaxySpace:dysonswarmparts";
                    };
                    t = lib.mkOption {
                      type = lib.types.str;
                      default = "GalaxySpace:dysonswarmparts";
                    };
                    x = lib.mkOption {
                      type = lib.types.str;
                      default = "GalaxySpace:dysonswarmparts";
                    };
                    y = lib.mkOption {
                      type = lib.types.str;
                      default = "GalaxySpace:dysonswarmparts";
                    };
                    z = lib.mkOption {
                      type = lib.types.str;
                      default = "GalaxySpace:dysonswarmparts";
                    };
                    "~" = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockmachines";
                    };
                  };
                };
              };
              metadata = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    b = lib.mkOption {
                      type = lib.types.int;
                      default = 9;
                    };
                    c = lib.mkOption {
                      type = lib.types.int;
                      default = 8;
                    };
                    d = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    e = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    f = lib.mkOption {
                      type = lib.types.int;
                      default = 4470;
                    };
                    g = lib.mkOption {
                      type = lib.types.int;
                      default = 4124;
                    };
                    h = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                    i = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                    j = lib.mkOption {
                      type = lib.types.int;
                      default = 3;
                    };
                    k = lib.mkOption {
                      type = lib.types.int;
                      default = 5081;
                    };
                    m = lib.mkOption {
                      type = lib.types.int;
                      default = 4;
                    };
                    n = lib.mkOption {
                      type = lib.types.int;
                      default = 9;
                    };
                    o = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                    p = lib.mkOption {
                      type = lib.types.int;
                      default = 6;
                    };
                    s = lib.mkOption {
                      type = lib.types.int;
                      default = 7;
                    };
                    t = lib.mkOption {
                      type = lib.types.int;
                      default = 8;
                    };
                    x = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    y = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                    z = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                    "~" = lib.mkOption {
                      type = lib.types.int;
                      default = 14001;
                    };
                  };
                };
              };
              transpose = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              structure = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "0" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt           ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt        k  ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt       k k ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "             k  ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "1" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt           ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " ttttt          ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " ttttt       k  ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = " ttttt      k k ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt        k  ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "2" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt           ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " ttttt          ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " ttttt       k  ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = " ttttt      k k ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt        k  ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "3" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt           ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " ttttt          ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " ttttt       k  ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = " ttttt      k k ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt        k  ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "4" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt           ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "  tst        k  ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt       k k ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "             k  ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "5" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "   s         k  ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "            k k ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "             k  ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "6" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "          h     ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt           ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " t g t          ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " tgsgt       k  ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = " t g t      k k ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt        k  ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "7" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "          f     ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "   s         k  ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "            k k ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "             k  ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "8" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ddd    ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "        d   d   ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "       d     d  ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "      d       d ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "     d         d";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "     d    f    d";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "     d         d";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "      d       d ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "       d     d  ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "        d   d   ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt    ddd    ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " t g t          ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " tgsgt      kmk ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = " t g t      m m ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt       kmk ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "9" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ddd    ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "        ddddd   ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "       dd   dd  ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "      dd     dd ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "      dd  f  dd ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "      dd     dd ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "       dd   dd  ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "        ddddd   ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ddd    ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "   s        kmk ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "            m m ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "            kmk ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "10" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ddd    ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "        ddddd   ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "        ddddd   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "        ddddd   ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         ddd    ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt           ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " t g t          ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " tgsgt      kmk ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = " t g t      m m ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt       kmk ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "11" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "         f f    ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "         f f    ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "   s        kmk ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "            m m ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "            kmk ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "12" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "         f f    ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "         f f    ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt           ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " t g t          ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " tgsgt      kmk ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = " t g t      m m ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ttt       kmk ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "13" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "         f f    ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "         f f    ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "   s        kmk ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "            m m ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "            kmk ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "14" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "         f f    ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "         f f    ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "   s        kmk ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "            m m ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "            kmk ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "15" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "         f f    ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "         f f    ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ppp           ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " p   p          ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " p s p      kmk ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = " p   p      m m ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "  ppp       kmk ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                        };
                      };
                    };
                    "16" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "        xxxxx   ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "        xxxxx   ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "        xxxxx   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "        xxxxx   ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "        xxxxx   ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "yyyyyyy         ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "yyyyyyy         ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "yypppyy    zzzzz";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "yypypyy    zzzzz";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "yypppyy    zzjzz";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "yyyyyyy    zzzzz";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "yyyyyyy    zzzzz";
                          };
                        };
                      };
                    };
                    "17" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "        xeeex   ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "        eccce   ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "        eccce   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "        eccce   ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "        xeeex   ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "ooooooo         ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "oyyyyyo         ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "oyyyyyo    ziiiz";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "oyyyyyo    izzzi";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "oyyyyyo    izzzi";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "oyyyyyo    izzzi";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "ooooooo    ziiiz";
                          };
                        };
                      };
                    };
                    "18" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "        xx~xx   ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "        xxxxx   ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "        xxxxx   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "        xxxxx   ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "        xxxxx   ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "yyyyyyy         ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "yyyyyyy         ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "yyyyyyy    zzzzz";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "yyyyyyy    zzzzz";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "yyyyyyy    zzzzz";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "yyyyyyy    zzzzz";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "yyyyyyy    zzzzz";
                          };
                        };
                      };
                    };
                    "19" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "bbbbbbbbbbbbbbbb";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "bbbbbbbbbbbbbbbb";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "bbbbbbbbbbbbbbbb";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "bbbbbbbbbbbbbbbb";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "bbbbbbbbbbbbbbbb";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "bbbbbbbbbbbbbbbb";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "bbbbbbbbbbbbbbbb";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "bbbbbbbbbbbbbbbb";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "bbbbbbbnbbbbbbbb";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "bbbbbbbbbbbbbbbb";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "bbbbbbbbbbbbbbbb";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "bbbbbbbbbbbbbbbb";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "bbbbbbbbbbbbbbbb";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "bbbbbbbbbbbbbbbb";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "bbbbbbbbbbbbbbbb";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "bbbbbbbbbbbbbbbb";
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
  trophies_tech_15_dimensionally_transcendent_plasma_forge_json = lib.mkOption {
    description = "trophies_tech_15_dimensionally_transcendent_plasma_forge_json configuration (./config/amazingtrophies/trophies/tech/15_dimensionally_transcendent_plasma_forge.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/tech/15_dimensionally_transcendent_plasma_forge.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "dimensionally_transcendent_plasma_forge";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "dimensionally_transcendent_plasma_forge";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "complex";
              };
              keys = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    C = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings5";
                    };
                    N = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings";
                    };
                    b = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings";
                    };
                    s = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockcasings";
                    };
                    "~" = lib.mkOption {
                      type = lib.types.str;
                      default = "gregtech:gt.blockmachines";
                    };
                  };
                };
              };
              metadata = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    C = lib.mkOption {
                      type = lib.types.int;
                      default = 11;
                    };
                    N = lib.mkOption {
                      type = lib.types.int;
                      default = 12;
                    };
                    b = lib.mkOption {
                      type = lib.types.int;
                      default = 13;
                    };
                    s = lib.mkOption {
                      type = lib.types.int;
                      default = 14;
                    };
                    "~" = lib.mkOption {
                      type = lib.types.int;
                      default = 1004;
                    };
                  };
                };
              };
              structure = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "0" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN   N     N   NNN   NNN ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                        };
                      };
                    };
                    "1" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbNCCCb     bCCCNbbN NbbbN";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC   N     N   CCC   CCC ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN    N N    NbbbN NbbbN";
                          };
                        };
                      };
                    };
                    "2" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "      NNNbbbbbNNsNNbbbbbNNN      ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "    ss   bCCCb     bCCCb   ss    ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "   s     N   N     N   N     s   ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "   s                         s   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N      N   N     N   N      N  ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N      bCCCb     bCCCb      N  ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     sbbbbbNNsNNbbbbbs     N  ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbNCCCb     bCCCNbbN NbbbN";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC   N     N   CbC   CbC ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "  s     s               s     s  ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbNNNNNsNsNNNNNbbbN NbbbN";
                          };
                        };
                      };
                    };
                    "3" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "    ss   bCCCb     bCCCb   ss    ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "  s      NCCCN     NCCCN      s  ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "  s      NCCCN     NCCCN      s  ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "         NCCCN     NCCCN         ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbNCCCb     bCCCNbbNNNbbbN";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC   N     N   CCCCCCCCC ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbbN           NbbbNNNbbbN";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbbN           NbbbNNNbbbN";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbbN    NbN    NbbbNNNbbbN";
                          };
                        };
                      };
                    };
                    "4" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "   s     N   N     N   N     s   ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "  s      NCCCN     NCCCN      s  ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         NCCCN     NCCCN         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NN    N     N    NN   NNN ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN     NbN     NNN   NNN ";
                          };
                        };
                      };
                    };
                    "5" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "   s                         s   ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "  s      NCCCN     NCCCN      s  ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         NCCCN     NCCCN         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "   N   N                 N   N   ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "   N   N                 N   N   ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "   N   N                 N   N   ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "   N   N       NbN       N   N   ";
                          };
                        };
                      };
                    };
                    "6" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N      N   N     N   N      N  ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "         NCCCN     NCCCN         ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         NCCCN     NCCCN         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NN    N     N    NN   NNN ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN     NbN     NNN   NNN ";
                          };
                        };
                      };
                    };
                    "7" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N      bCCCb     bCCCb      N  ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "         NCCCN     NCCCN         ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "         NCCCN     NCCCN         ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "         NCCCN     NCCCN         ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbNCCCb     bCCCNbbNNNbbbN";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC   N     N   CCCCCCCCC ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbbN           NbbbNNNbbbN";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbbN           NbbbNNNbbbN";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbbN    NbN    NbbbNNNbbbN";
                          };
                        };
                      };
                    };
                    "8" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     sbbbbbNNsNNbbbbbs     N  ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "  s     sbbbbbNNsNNbbbbbs     s  ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbNCCCb     bCCCNbbN NbbbN";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC   N     N   CbC   CbC ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "  s     s               s     s  ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbNNNNNsNsNNNNNbbbN NbbbN";
                          };
                        };
                      };
                    };
                    "9" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN   N     N   NNN   NNN ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbNCCCb     bCCCNbbN NbbbN";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbNCCCb     bCCCNbbN NbbbN";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbNCCCb     bCCCNbbNNNbbbN";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN   N     N   NNN   NNN ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "   N   N                 N   N   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN   N     N   NNN   NNN ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbNCCCb     bCCCNbbNNNbbbN";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbNCCCb     bCCCNbbN NbbbN";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "NNNN   NNNCCCb     bCCCNNN   NNNN";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC   N     N   CCC   CCC ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN    NbN    NbbbN NbbbN";
                          };
                        };
                      };
                    };
                    "10" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC   N     N   CCC   CCC ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC   N     N   CbC   CbC ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC   N     N   CCCCCCCCC ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC   N     N   CCCCCCCCC ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC   N     N   CbC   CbC ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC   N     N   CCC   CCC ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN     NbN     NNN   NNN ";
                          };
                        };
                      };
                    };
                    "11" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N      NbN      N     N  ";
                          };
                        };
                      };
                    };
                    "12" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N      NbN      N     N  ";
                          };
                        };
                      };
                    };
                    "13" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbbN           NbbbNNNbbbN";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "   N   N                 N   N   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbbN           NbbbNNNbbbN";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N     NsNsN     N     N  ";
                          };
                        };
                      };
                    };
                    "14" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N    NbbbbbN    N     N  ";
                          };
                        };
                      };
                    };
                    "15" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "                N                ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = " NsNNNNNsNNNNsbbbbbsNNNNsNNNNNsN ";
                          };
                        };
                      };
                    };
                    "16" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "  s     s               s     s  ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "  s     s               s     s  ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "                ~                ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "               NNN               ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "  NbbbbbNbbbbNbbbbbNbbbbNbbbbbN  ";
                          };
                        };
                      };
                    };
                    "17" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "                N                ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = " NsNNNNNsNNNNsbbbbbsNNNNsNNNNNsN ";
                          };
                        };
                      };
                    };
                    "18" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N    NbbbbbN    N     N  ";
                          };
                        };
                      };
                    };
                    "19" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbbN           NbbbNNNbbbN";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "   N   N                 N   N   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbbN           NbbbNNNbbbN";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N     NsNsN     N     N  ";
                          };
                        };
                      };
                    };
                    "20" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N      NbN      N     N  ";
                          };
                        };
                      };
                    };
                    "21" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N      NbN      N     N  ";
                          };
                        };
                      };
                    };
                    "22" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC   N     N   CCC   CCC ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC   N     N   CbC   CbC ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC   N     N   CCCCCCCCC ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC   N     N   CCCCCCCCC ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC   N     N   CbC   CbC ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC   N     N   CCC   CCC ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN     NbN     NNN   NNN ";
                          };
                        };
                      };
                    };
                    "23" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN   N     N   NNN   NNN ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbNCCCb     bCCCNbbN NbbbN";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbNCCCb     bCCCNbbN NbbbN";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbNCCCb     bCCCNbbNNNbbbN";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN   N     N   NNN   NNN ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "   N   N                 N   N   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN   N     N   NNN   NNN ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbNCCCb     bCCCNbbNNNbbbN";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbNCCCb     bCCCNbbN NbbbN";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "NNNN   NNNCCCb     bCCCNNN   NNNN";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC   N     N   CCC   CCC ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN    NbN    NbbbN NbbbN";
                          };
                        };
                      };
                    };
                    "24" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     sbbbbbNNsNNbbbbbs     N  ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "  s     sbbbbbNNsNNbbbbbs     s  ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbNCCCb     bCCCNbbN NbbbN";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC   N     N   CbC   CbC ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "  s     s               s     s  ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbNNNNNsNsNNNNNbbbN NbbbN";
                          };
                        };
                      };
                    };
                    "25" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N      bCCCb     bCCCb      N  ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "         NCCCN     NCCCN         ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "         NCCCN     NCCCN         ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "         NCCCN     NCCCN         ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbNCCCb     bCCCNbbNNNbbbN";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC   N     N   CCCCCCCCC ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbbN           NbbbNNNbbbN";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbbN           NbbbNNNbbbN";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbbN    NbN    NbbbNNNbbbN";
                          };
                        };
                      };
                    };
                    "26" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N      N   N     N   N      N  ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "         NCCCN     NCCCN         ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         NCCCN     NCCCN         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NN    N     N    NN   NNN ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN     NbN     NNN   NNN ";
                          };
                        };
                      };
                    };
                    "27" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "   s                         s   ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "  s      NCCCN     NCCCN      s  ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         NCCCN     NCCCN         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "   N   N                 N   N   ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "   N   N                 N   N   ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "   N   N                 N   N   ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "   N   N       NbN       N   N   ";
                          };
                        };
                      };
                    };
                    "28" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "   s     N   N     N   N     s   ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "  s      NCCCN     NCCCN      s  ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         NCCCN     NCCCN         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NN    N     N    NN   NNN ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "   C   C                 C   C   ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN     NbN     NNN   NNN ";
                          };
                        };
                      };
                    };
                    "29" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "    ss   bCCCb     bCCCb   ss    ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "  s      NCCCN     NCCCN      s  ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "  s      NCCCN     NCCCN      s  ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "         NCCCN     NCCCN         ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbNCCCb     bCCCNbbNNNbbbN";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC   N     N   CCCCCCCCC ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbbN           NbbbNNNbbbN";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbbN           NbbbNNNbbbN";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCCCCCCCC             CCCCCCCCC ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbNNNbbbN    NbN    NbbbNNNbbbN";
                          };
                        };
                      };
                    };
                    "30" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "      NNNbbbbbNNsNNbbbbbNNN      ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "    ss   bCCCb     bCCCb   ss    ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "   s     N   N     N   N     s   ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "   s                         s   ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N      N   N     N   N      N  ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N      bCCCb     bCCCb      N  ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     sbbbbbNNsNNbbbbbs     N  ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbNCCCb     bCCCNbbN NbbbN";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC   N     N   CbC   CbC ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "  s     s               s     s  ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = " CbC   CbC             CbC   CbC ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbNNNNNsNsNNNNNbbbN NbbbN";
                          };
                        };
                      };
                    };
                    "31" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "         bCCCb     bCCCb         ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbNCCCb     bCCCNbbN NbbbN";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC   N     N   CCC   CCC ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "  N     N               N     N  ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN           NbbbN NbbbN";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = " CCC   CCC             CCC   CCC ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = "NbbbN NbbbN    N N    NbbbN NbbbN";
                          };
                        };
                      };
                    };
                    "32" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "0" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "1" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "2" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "3" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "4" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "5" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "6" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "7" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "8" = lib.mkOption {
                            type = lib.types.str;
                            default = "         N   N     N   N         ";
                          };
                          "9" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN   N     N   NNN   NNN ";
                          };
                          "10" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "11" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "12" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "13" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "14" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "15" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "16" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "17" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "18" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "19" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
                          };
                          "20" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "21" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "22" = lib.mkOption {
                            type = lib.types.str;
                            default = "                                 ";
                          };
                          "23" = lib.mkOption {
                            type = lib.types.str;
                            default = " NNN   NNN             NNN   NNN ";
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
  trophies_tech_16_stargate_json = lib.mkOption {
    description = "trophies_tech_16_stargate_json configuration (./config/amazingtrophies/trophies/tech/16_stargate.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/tech/16_stargate.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "stargate";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "stargate";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "TwilightForest:tile.TFPortal";
              };
            };
          };
        };
      };
    };
  };
  trophies_unbreakable_tconstruct_tool_json = lib.mkOption {
    description = "trophies_unbreakable_tconstruct_tool_json configuration (./config/amazingtrophies/trophies/unbreakable_tconstruct_tool.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/unbreakable_tconstruct_tool.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        id = lib.mkOption {
          type = lib.types.str;
          default = "unbreakable_tconstruct_tool";
        };
        condition = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "achievement";
              };
              id = lib.mkOption {
                type = lib.types.str;
                default = "unbreakable_tconstruct_tool";
              };
            };
          };
        };
        model = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              type = lib.mkOption {
                type = lib.types.str;
                default = "item";
              };
              registryName = lib.mkOption {
                type = lib.types.str;
                default = "TConstruct:hammer";
              };
              nbt = lib.mkOption {
                type = lib.types.str;
                default = "{InfiTool: {RenderExtra: 11, RenderHead: 10, RenderHandle: 8, RenderAccessory: 11}}";
              };
            };
          };
        };
      };
    };
  };
}
