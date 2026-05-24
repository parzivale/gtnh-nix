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
      _condition = lib.mkOption {
        type = lib.types.str;
        default = "Handled via code (NHCore)";
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:heartCanister";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "100_hearts";
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
      _condition = lib.mkOption {
        type = lib.types.str;
        default = "Handled via code (NHCore)";
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "10k_damage";
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
      };
    };
  };
  "achievements_2.1.0.0_stargate_json" = lib.mkOption {
    description = "achievements_2.1.0.0_stargate_json configuration (./config/amazingtrophies/achievements/2.1.0.0_stargate.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/2.1.0.0_stargate.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:paper";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          nbt = lib.mkOption {
            type = lib.types.str;
            default = "{display:{Name:\"Pick this item up to get your trophy\"}}";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "dreamcraft:item.OriginGatePlate";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "stargate_2.1.0.0";
      };
      page = lib.mkOption {
        type = lib.types.str;
        default = "GT New Horizons";
      };
      x = lib.mkOption {
        type = lib.types.int;
        default = 15;
      };
      y = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      };
    };
  };
  "achievements_2.1.2.3qf_stargate_json" = lib.mkOption {
    description = "achievements_2.1.2.3qf_stargate_json configuration (./config/amazingtrophies/achievements/2.1.2.3qf_stargate.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/2.1.2.3qf_stargate.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:paper";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          nbt = lib.mkOption {
            type = lib.types.str;
            default = "{display:{Name:\"Pick this item up to get your trophy\"}}";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "dreamcraft:item.PolychromeGatePlate";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "stargate_2.1.2.3qf";
      };
      page = lib.mkOption {
        type = lib.types.str;
        default = "GT New Horizons";
      };
      x = lib.mkOption {
        type = lib.types.int;
        default = 15;
      };
      y = lib.mkOption {
        type = lib.types.int;
        default = 2;
      };
      };
    };
  };
  "achievements_2.2.3_stargate_json" = lib.mkOption {
    description = "achievements_2.2.3_stargate_json configuration (./config/amazingtrophies/achievements/2.2.3_stargate.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/2.2.3_stargate.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:paper";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          nbt = lib.mkOption {
            type = lib.types.str;
            default = "{display:{Name:\"Pick this item up to get your trophy\"}}";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "dreamcraft:item.DimensionalGatePlate";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "stargate_2.2.3";
      };
      page = lib.mkOption {
        type = lib.types.str;
        default = "GT New Horizons";
      };
      x = lib.mkOption {
        type = lib.types.int;
        default = 15;
      };
      y = lib.mkOption {
        type = lib.types.int;
        default = 4;
      };
      };
    };
  };
  "achievements_2.3_stargate_json" = lib.mkOption {
    description = "achievements_2.3_stargate_json configuration (./config/amazingtrophies/achievements/2.3_stargate.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/achievements/2.3_stargate.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:paper";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          nbt = lib.mkOption {
            type = lib.types.str;
            default = "{display:{Name:\"Pick this item up to get your trophy\"}}";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "dreamcraft:item.HarmonicGatePlate";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "stargate_2.3";
      };
      page = lib.mkOption {
        type = lib.types.str;
        default = "GT New Horizons";
      };
      x = lib.mkOption {
        type = lib.types.int;
        default = 15;
      };
      y = lib.mkOption {
        type = lib.types.int;
        default = 6;
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
      _condition = lib.mkOption {
        type = lib.types.str;
        default = "Handled via code (NHCore)";
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 8197;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:potion";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "all_effects";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:bedrock";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "bedrock";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.int;
            default = 100;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "dimension.join";
          };
          };
        };
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "deep_dark";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "DraconicEvolution:dezilsMarshmallow";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.use.finish";
          };
          };
        };
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "dezils_marshmallow";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "DraconicEvolution:teleporterMKII";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "enhanced_charm_of_dislocation";
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
      _condition = lib.mkOption {
        type = lib.types.str;
        default = "Handled via code (NHCore)";
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmetal9";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "eternity_beacon";
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
      _condition = lib.mkOption {
        type = lib.types.str;
        default = "Handled via code (NHCore)";
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "infinity_armor";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:sacrificialKnife";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "sacrificial_knife";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:weakBloodOrb";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "weak_blood_orb";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:Altar";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "blood_altar";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:boundPickaxe";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "bound_pickaxe";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          isTargetsAllowList = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          targets = lib.mkOption {
            type = lib.types.listOf lib.types.str;
            default = [ "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGrunt" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntFire" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntWind" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntIce" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntEarth" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntGuardian" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntGuardianFire" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntGuardianWind" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntGuardianIce" "WayofTime.alchemicalWizardry.common.demonVillage.demonHoard.demon.EntityMinorDemonGruntGuardianEarth" ];
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "kill";
          };
          };
        };
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "minor_demon_grunt";
      };
      isSpecial = lib.mkOption {
        type = lib.types.bool;
        default = true;
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "Botania:pool";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "mana_pool";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "Botania:runeAltar";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "runic_altar";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "Botania:manaResource";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Botania:manaResource";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "terrasteel_ingot";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "Botania:alfheimPortal";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "elven_gateway";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          isTargetsAllowList = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          targets = lib.mkOption {
            type = lib.types.str;
            default = "Botania.botania:doppleganger";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "kill";
          };
          };
        };
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "gaia_guardian";
      };
      isSpecial = lib.mkOption {
        type = lib.types.bool;
        default = true;
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:WandCasting";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "wand";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          containers = lib.mkOption {
            type = lib.types.str;
            default = "thaumcraft.common.container.ContainerThaumatorium";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "container.open";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:blockMetalDevice";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "thaumatorium";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:blockStoneDevice";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:blockStoneDevice";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "infusion";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemEldritchObject";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemEldritchObject";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "eldritch_eye";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemEldritchObject";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemEldritchObject";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "primordial_pearl";
      };
      isSpecial = lib.mkOption {
        type = lib.types.bool;
        default = true;
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
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
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 32146;
          };
          nbt = lib.mkOption {
            type = lib.types.str;
            default = "{GT.ItemCharge: 9223372036854775807L}";
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "mega_ultimate_battery";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "bartworks:gt.bwMetaGeneratedcell";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 10116;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 10116;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "bartworks:gt.bwMetaGeneratedcell";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "naquadah_fuel_mkvi";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          containers = lib.mkOption {
            type = lib.types.str;
            default = "ic2.core.block.reactor.container.ContainerNuclearReactor";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "container.open";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "IC2:blockGenerator";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "nuclear_reactor";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "EMT:EMTSolars4";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "EMT:EMTSolars4";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "octuple_solar_panel";
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
      _condition = lib.mkOption {
        type = lib.types.str;
        default = "Handled via code (NHCore)";
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "omega_armor";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "berriespp:BppPotions";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.use.finish";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "berriespp:BppPotions";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "real_bottled_jaegermeister";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:machine.alpha";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:machine.alpha";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "coke_oven";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 100;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 100;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "small_coal_boiler";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 1120;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 1120;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "basic_steam_turbine";
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
        default = -5;
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 1000;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 1000;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "electric_blast_furnace";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "GalacticraftCore:item.spaceship";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "tier_1_rocket";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 1172;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 1172;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "cleanroom";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "appliedenergistics2:tile.BlockController";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "chisel:futura";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "me_controller";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 11085;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 11085;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "platinum_ingot";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 1170;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 1170;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "assembling_line";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 1193;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 1193;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "fusion_reactor_mk1";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 15331;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 15331;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "research_station";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 357;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 357;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "nano_forge";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          provider = lib.mkOption {
            type = lib.types.str;
            default = "de.katzenpapst.amunra.mothership.MothershipWorldProvider";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "dimension.join";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "GalacticraftAmunRa:tile.machines1";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "mothership";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 14001;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 14001;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "dyson_swarm";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          meta = lib.mkOption {
            type = lib.types.int;
            default = 1004;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 1004;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "dimensionally_transcendent_plasma_forge";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          item = lib.mkOption {
            type = lib.types.str;
            default = "SGCraft:stargateBase";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item.pickup";
          };
          };
        };
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
      id = lib.mkOption {
        type = lib.types.str;
        default = "stargate";
      };
      isSpecial = lib.mkOption {
        type = lib.types.bool;
        default = true;
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
      _condition = lib.mkOption {
        type = lib.types.str;
        default = "Handled via code (NHCore)";
      };
      icon = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          nbt = lib.mkOption {
            type = lib.types.str;
            default = "{InfiTool: {RenderExtra: 11, RenderHead: 10, RenderHandle: 8, RenderAccessory: 11}}";
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:hammer";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "unbreakable_tconstruct_tool";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "100_hearts";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "100_hearts";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:heartCanister";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "10k_damage";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "10k_damage";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "battlegear2:shield.diamond";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
  "trophies_2.1.0.0_stargate_json" = lib.mkOption {
    description = "trophies_2.1.0.0_stargate_json configuration (./config/amazingtrophies/trophies/2.1.0.0_stargate.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/2.1.0.0_stargate.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "stargate_2.1.0.0";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "stargate_2.1.0.0";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "dreamcraft:item.OriginGatePlate";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
          };
          };
        };
      };
      };
    };
  };
  "trophies_2.1.2.3qf_stargate_json" = lib.mkOption {
    description = "trophies_2.1.2.3qf_stargate_json configuration (./config/amazingtrophies/trophies/2.1.2.3qf_stargate.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/2.1.2.3qf_stargate.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "stargate_2.1.2.3qf";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "stargate_2.1.2.3qf";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "dreamcraft:item.PolychromeGatePlate";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
          };
          };
        };
      };
      };
    };
  };
  "trophies_2.2.3_stargate_json" = lib.mkOption {
    description = "trophies_2.2.3_stargate_json configuration (./config/amazingtrophies/trophies/2.2.3_stargate.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/2.2.3_stargate.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "stargate_2.2.3";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "stargate_2.2.3";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "dreamcraft:item.DimensionalGatePlate";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
          };
          };
        };
      };
      };
    };
  };
  "trophies_2.3_stargate_json" = lib.mkOption {
    description = "trophies_2.3_stargate_json configuration (./config/amazingtrophies/trophies/2.3_stargate.json)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/amazingtrophies/trophies/2.3_stargate.json";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
      };
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "stargate_2.3";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "stargate_2.3";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "dreamcraft:item.HarmonicGatePlate";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "all_effects";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "all_effects";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 8197;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:potion";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "bedrock";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "bedrock";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "minecraft:bedrock";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "deep_dark";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "deep_dark";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "ExtraUtilities:dark_portal";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "dezils_marshmallow";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "dezils_marshmallow";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "DraconicEvolution:dezilsMarshmallow";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "enhanced_charm_of_dislocation";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "enhanced_charm_of_dislocation";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "DraconicEvolution:teleporterMKII";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "eternity_beacon";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "eternity_beacon";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
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
          structure = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              "0" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "         " "         " "         " "         " "    A    " "         " "         " "         " "         " ];
              };
              "1" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "         " "         " "         " "   BBB   " "   BBB   " "   BBB   " "         " "         " "         " ];
              };
              "2" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "         " "         " "  BBBBB  " "  BBBBB  " "  BBBBB  " "  BBBBB  " "  BBBBB  " "         " "         " ];
              };
              "3" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "         " " BBBBBBB " " BBBBBBB " " BBBBBBB " " BBBBBBB " " BBBBBBB " " BBBBBBB " " BBBBBBB " "         " ];
              };
              "4" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "BBBBBBBBB" "BBBBBBBBB" "BBBBBBBBB" "BBBBBBBBB" "BBBBBBBBB" "BBBBBBBBB" "BBBBBBBBB" "BBBBBBBBB" "BBBBBBBBB" ];
              };
              };
            };
          };
          transpose = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "complex";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "infinity_armor";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "infinity_armor";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Avaritia:Infinity_Chest";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "sacrificial_knife";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "sacrificial_knife";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:sacrificialKnife";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "weak_blood_orb";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "weak_blood_orb";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:weakBloodOrb";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "blood_altar";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "blood_altar";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:Altar";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "bound_pickaxe";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "bound_pickaxe";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:boundPickaxe";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "minor_demon_grunt";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "minor_demon_grunt";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:demonPortalMain";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "mana_pool";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "mana_pool";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Botania:pool";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "runic_altar";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "runic_altar";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Botania:runeAltar";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "terrasteel_ingot";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "terrasteel_ingot";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 4;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Botania:manaResource";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "elven_gateway";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "elven_gateway";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
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
          structure = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              "0" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "  BDB  " ];
              };
              "1" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ " B   B " ];
              };
              "2" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ " D   D " ];
              };
              "3" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ " B   B " ];
              };
              "4" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "  B~B  " ];
              };
              };
            };
          };
          transpose = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "complex";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "gaia_guardian";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "gaia_guardian";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Botania:manaResource";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "wand";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "wand";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:WandCasting";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "thaumatorium";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "thaumatorium";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 9;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:blockMetalDevice";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "infusion";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "infusion";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:blockStoneDevice";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "eldritch_eye";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "eldritch_eye";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemEldritchObject";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "primordial_pearl";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "primordial_pearl";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 3;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Thaumcraft:ItemEldritchObject";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "mega_ultimate_battery";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "mega_ultimate_battery";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 32146;
          };
          nbt = lib.mkOption {
            type = lib.types.str;
            default = "{GT.ItemCharge: 9223372036854775807L}";
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "naquadah_fuel_mkvi";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "naquadah_fuel_mkvi";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 10116;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "bartworks:gt.bwMetaGeneratedcell";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "nuclear_reactor";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "nuclear_reactor";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
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
                type = lib.types.listOf lib.types.str;
                default = [ "   " " A " "   " ];
              };
              "1" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ " A " "ABA" " A " ];
              };
              "2" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "   " " A " "   " ];
              };
              };
            };
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "complex";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "octuple_solar_panel";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "octuple_solar_panel";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 12;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "EMT:EMTSolars4";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "omega_armor";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "omega_armor";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "AWWayofTime:boundPlateEarth";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "real_bottled_jaegermeister";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "real_bottled_jaegermeister";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 8;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "berriespp:BppPotions";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "coke_oven";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "coke_oven";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 7;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "Railcraft:machine.alpha";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "small_coal_boiler";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "small_coal_boiler";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 100;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "basic_steam_turbine";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "basic_steam_turbine";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 1120;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.blockmachines";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "electric_blast_furnace";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "electric_blast_furnace";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          keys = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              C = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockcasings5";
              };
              t = lib.mkOption {
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
                default = 0;
              };
              t = lib.mkOption {
                type = lib.types.int;
                default = 11;
              };
              "~" = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              };
            };
          };
          structure = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              "0" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "ttt" "ttt" "ttt" ];
              };
              "1" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "CCC" "C C" "CCC" ];
              };
              "2" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "CCC" "C C" "CCC" ];
              };
              "3" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "t~t" "ttt" "ttt" ];
              };
              };
            };
          };
          transpose = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "complex";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "tier_1_rocket";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "tier_1_rocket";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "GalacticraftCore:item.spaceship";
          };
          scale = lib.mkOption {
            type = lib.types.float;
            default = 1.0;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "cleanroom";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "cleanroom";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
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
                type = lib.types.listOf lib.types.str;
                default = [ "CCCCC" "CAAAC" "CAAAC" "CAAAC" "CCCCC" "D   D" ];
              };
              "1" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "CBBBC" "C   C" "C   C" "C   C" "CCCCC" "     " ];
              };
              "2" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "CB~BC" "C   C" "C   C" "C   C" "CCCCC" "     " ];
              };
              "3" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "CBBBC" "C   C" "C   C" "C E C" "CCCCC" "     " ];
              };
              "4" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "CCCCC" "CCCCC" "CCCCC" "CCCCC" "CCCCC" "D   D" ];
              };
              };
            };
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "complex";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "me_controller";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "me_controller";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "chisel:futura";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "platinum_ingot";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "platinum_ingot";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 11085;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "gregtech:gt.metaitem.01";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "assembling_line";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "assembling_line";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
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
          structure = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              "0" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "AAAAAAAAAAAAAAAA" "                " ];
              };
              "1" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "~BBBBBBBBBBBBBBB" "AAAAAAAAAAAAAAAA" "BBBBBBBBBBBBBBBB" ];
              };
              "2" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "CCCCCCCCCCCCCCCC" "DDDDDDDDDDDDDDDD" "CCCCCCCCCCCCCCCC" ];
              };
              "3" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "AAAAAAAAAAAAAAAA" "AAAAAAAAAAAAAAAA" "AAAAAAAAAAAAAAAA" ];
              };
              };
            };
          };
          transpose = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "complex";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "fusion_reactor_mk1";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "fusion_reactor_mk1";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          keys = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              c = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockcasings";
              };
              e = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockcasings";
              };
              h = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockcasings";
              };
              i = lib.mkOption {
                type = lib.types.str;
                default = "gregtech:gt.blockcasings";
              };
              x = lib.mkOption {
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
              c = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              e = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              h = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              i = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              x = lib.mkOption {
                type = lib.types.int;
                default = 6;
              };
              "~" = lib.mkOption {
                type = lib.types.int;
                default = 1193;
              };
              };
            };
          };
          structure = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              "0" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "               " "      ihi      " "    hh   hh    " "   h       h   " "  h         h  " "  h         h  " " i           i " " h           h " " i           i " "  h         h  " "  h         h  " "   h       h   " "    hh   hh    " "      ihi      " "               " ];
              };
              "1" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "      xhx      " "    hhccchh    " "   eccxhxcce   " "  eceh   hece  " " hce       ech " " hch       hch " "xcx         xcx" "hch         hch" "xcx         xcx" " hch       hch " " hce       ech " "  eceh   hece  " "   eccx~xcce   " "    hhccchh    " "      xhx      " ];
              };
              "2" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "               " "      ihi      " "    hh   hh    " "   h       h   " "  h         h  " "  h         h  " " i           i " " h           h " " i           i " "  h         h  " "  h         h  " "   h       h   " "    hh   hh    " "      ihi      " "               " ];
              };
              };
            };
          };
          transpose = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "complex";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "research_station";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "research_station";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
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
          structure = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              "0" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "   " " A " " A " "AAA" "AAA" "AAA" "AAA" ];
              };
              "1" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "AAA" "ACA" "ACA" "ACA" "BCB" "BCB" "BBB" ];
              };
              "2" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "   " " C " "   " "   " "ACA" "CCC" "DDD" ];
              };
              "3" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "   " " E " "   " "   " "A~A" "CCC" "DDD" ];
              };
              "4" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "   " " C " "   " "   " "ACA" "CCC" "DDD" ];
              };
              "5" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "AAA" "ACA" "ACA" "ACA" "BCB" "BCB" "BBB" ];
              };
              "6" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "   " " A " " A " "AAA" "AAA" "AAA" "AAA" ];
              };
              };
            };
          };
          transpose = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "complex";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "nano_forge";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "nano_forge";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
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
                type = lib.types.listOf lib.types.str;
                default = [ "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "    CC                       " "  CC                         " "                             " "                             " "                             " "                             " "    CC                       " "  CC                         " "                             " "                             " "                             " "                             " "    CC                       " "  CC                         " "                             " "                             " "                             " "                             " "    CC                       " "  CC                         " "                             " " BBBBBB               BBBBBB " ];
              };
              "1" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "      C                      " "                             " "                             " " C                           " "                             " "                             " "      C                      " "                             " "                             " " C                           " "                             " "                             " "      C                      " "                             " "                             " " C                           " "                             " "                             " "      C                      " "                             " "                             " " C                           " "BBBBBBBB             BBBBBBBB" ];
              };
              "2" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "   BB                        " " CCAA                        " "C  BB                        " "       C                     " "                             " "                             " "                             " "                             " "C                            " "   BB  C                     " "   BB                        " "   BB                        " "   BB                   BB   " "                        AA   " "C                       BB   " "       C                     " "                             " "                             " "                             " "                        BB   " "C  BB                   AA   " "   AA  C                BB   " "   BB                        " "                             " "                             " "                             " "BBBBBBBB             BBBBBBBB" ];
              };
              "3" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "  BBBB                       " "  ABBA                       " "C BBBB                       " "   BB  C                     " "   BB                        " "   BB                        " "   BB                        " "   BB         B              " "C  BB         B              " "  BBBB C      B              " "  BBBB        B              " "  BBBB        B              " "  BBBB        B        BBBB  " "   BB         B        ABBA  " "C  BB         B        BBBB  " "   BB  C                BB   " "   BB                   BB   " "   BB                   BB   " "   BB                   BB   " "   BB                  BBBB  " "C BBBB                 ABBA  " "  ABBA C               BBBB  " "  BBBB                  BB   " "   BB                   BB   " "   BB                   BB   " "   BB                   BB   " "BBBBBBBB             BBBBBBBB" ];
              };
              "4" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "  BBBB                       " "  ABBA                       " "  BBBB C                     " "C  BB        CBC             " "   BB        CBC             " "   BB        CBC             " "   BB        CBC             " "   BB        CBC             " "   BB  C     CBC             " "C BBBB       CBC             " "  BBBB       CBC             " "  BBBB       CBC             " "  BBBB       CBC       BBBB  " "   BB        CBC       ABBA  " "   BB  C     CBC       BBBB  " "C  BB        CBC        BB   " "   BB        CBC        BB   " "   BB        CBC        BB   " "   BB        CBC        BB   " "   BB                  BBBB  " "  BBBB C               ABBA  " "C ABBA                 BBBB  " "  BBBB                  BB   " "   BB                   BB   " "   BB                   BB   " "   BB                   BB   " "BBBBBBBB    BBBBB    BBBBBBBB" ];
              };
              "5" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "              C              " "              C              " "              C              " "              C              " "              C              " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "   BB        CBC             " "   AACC      CBC             " "   BB  C     CBC             " "C           CB BC            " "            CB BC            " "            CB BC            " "            CB BC            " "            BB BB            " "       C    BB BB            " "C  BB       BB BB            " "   BB       BB BB            " "   BB       BB BB            " "   BB       BB BB       BB   " "            BB BB       AA   " "       C    BB BB       BB   " "C           CB BC            " "            CB BC            " "            CB BC            " "            CB BC            " "             CBC        BB   " "   BB  C     CBC        AA   " "C  AA        CBC        BB   " "   BB        CBC             " "             CBC             " "             CBC             " "             CBC             " "BBBBBBBB   BBBBBBB   BBBBBBBB" ];
              };
              "6" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "              B              " "              B              " "              B              " "              B              " "              B              " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " " C           B B             " "            B   B            " "            B   B            " "      C     B   B            " "            B   B            " "            B   B            " " C         BB   BB           " "           BB   BB           " "            B   B            " "      C     B   B            " "            B   B            " "            B   B            " " C          B   B            " "             B B             " "             B B             " "      C      B B             " "             B B             " "             B B             " " C           B B             " "             B B             " "             B B             " "      C      B B             " "BBBBBBBB  BBBBBBBBB  BBBBBBBB" ];
              };
              "7" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "              B              " "              B              " "              B              " "              B              " "              B              " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "  CC        B   B            " "    CC      B   B            " "            B   B            " "            B   B            " "            B   B            " "           BB   BB           " "  CC       BB   BB           " "    CC      B   B            " "            B   B            " "            B   B            " "            B   B            " "            B   B            " "  CC         B B             " "    CC       B B             " "             B B             " "             B B             " "             B B             " "             B B             " "  CC         B B             " "    CC       B B             " "             B B             " " BBBBBB   BBBBBBBBB   BBBBBB " ];
              };
              "8" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "              B              " "              B              " "              B              " "              B              " "              B              " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "            B   B            " "            B   B            " "            B   B            " "            B   B            " "            B   B            " "           BB   BB           " "           BB   BB           " "            B   B            " "            B   B            " "            B   B            " "            B   B            " "            B   B            " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "          BBBBBBBBB          " ];
              };
              "9" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "              B              " "              B              " "              B              " "              B              " "              B              " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "            B   B            " "            B   B            " "            B   B            " "            B   B            " "            B   B            " "           BB   BB           " "           BB   BB           " "            B   B            " "            B   B            " "            B   B            " "            B   B            " "            B   B            " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "             B B             " "          BBBBBBBBB          " ];
              };
              "10" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "              C              " "              C              " "              C              " "              C              " "              C              " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "            CB BC            " "            CB BC            " "            CB BC            " "            CB BC            " "            BB BB            " "            BB BB            " "            BB BB            " "            BB BB            " "            BB BB            " "            BB BB            " "            BB BB            " "            BB BB            " "            CB BC            " "            CB BC            " "            CB BC            " "            CB BC            " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "           BBBBBBB           " ];
              };
              "11" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "             CBC             " "                             " "                             " "                             " "                             " "                             " "                             " "                             " "            BBBBB            " ];
              };
              };
            };
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "complex";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "mothership";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "mothership";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          meta = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "GalacticraftAmunRa:tile.machines1";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "dyson_swarm";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "dyson_swarm";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
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
          structure = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              "0" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "                " "                " "                " "                " "                " "                " "                " "                " "  ttt           " "  ttt        k  " "  ttt       k k " "             k  " "                " ];
              };
              "1" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "                " "                " "                " "                " "                " "                " "                " "  ttt           " " ttttt          " " ttttt       k  " " ttttt      k k " "  ttt        k  " "                " ];
              };
              "2" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "                " "                " "                " "                " "                " "                " "                " "  ttt           " " ttttt          " " ttttt       k  " " ttttt      k k " "  ttt        k  " "                " ];
              };
              "3" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "                " "                " "                " "                " "                " "                " "                " "  ttt           " " ttttt          " " ttttt       k  " " ttttt      k k " "  ttt        k  " "                " ];
              };
              "4" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "                " "                " "                " "                " "                " "                " "                " "                " "  ttt           " "  tst        k  " "  ttt       k k " "             k  " "                " ];
              };
              "5" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "                " "                " "                " "                " "                " "                " "                " "                " "                " "   s         k  " "            k k " "             k  " "                " ];
              };
              "6" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "                " "                " "          h     " "                " "                " "                " "                " "  ttt           " " t g t          " " tgsgt       k  " " t g t      k k " "  ttt        k  " "                " ];
              };
              "7" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "                " "                " "          f     " "                " "                " "                " "                " "                " "                " "   s         k  " "            k k " "             k  " "                " ];
              };
              "8" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "         ddd    " "        d   d   " "       d     d  " "      d       d " "     d         d" "     d    f    d" "     d         d" "      d       d " "       d     d  " "        d   d   " "  ttt    ddd    " " t g t          " " tgsgt      kmk " " t g t      m m " "  ttt       kmk " "                " ];
              };
              "9" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "         ddd    " "        ddddd   " "       dd   dd  " "      dd     dd " "      dd  f  dd " "      dd     dd " "       dd   dd  " "        ddddd   " "         ddd    " "                " "                " "   s        kmk " "            m m " "            kmk " "                " ];
              };
              "10" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "         ddd    " "        ddddd   " "        ddddd   " "        ddddd   " "         ddd    " "                " "                " "  ttt           " " t g t          " " tgsgt      kmk " " t g t      m m " "  ttt       kmk " "                " ];
              };
              "11" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "                " "         f f    " "                " "         f f    " "                " "                " "                " "                " "                " "   s        kmk " "            m m " "            kmk " "                " ];
              };
              "12" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "                " "         f f    " "                " "         f f    " "                " "                " "                " "  ttt           " " t g t          " " tgsgt      kmk " " t g t      m m " "  ttt       kmk " "                " ];
              };
              "13" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "                " "         f f    " "                " "         f f    " "                " "                " "                " "                " "                " "   s        kmk " "            m m " "            kmk " "                " ];
              };
              "14" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "                " "         f f    " "                " "         f f    " "                " "                " "                " "                " "                " "   s        kmk " "            m m " "            kmk " "                " ];
              };
              "15" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "                " "         f f    " "                " "         f f    " "                " "                " "                " "  ppp           " " p   p          " " p s p      kmk " " p   p      m m " "  ppp       kmk " "                " ];
              };
              "16" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "        xxxxx   " "        xxxxx   " "        xxxxx   " "        xxxxx   " "        xxxxx   " "                " "yyyyyyy         " "yyyyyyy         " "yypppyy    zzzzz" "yypypyy    zzzzz" "yypppyy    zzjzz" "yyyyyyy    zzzzz" "yyyyyyy    zzzzz" ];
              };
              "17" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "        xeeex   " "        eccce   " "        eccce   " "        eccce   " "        xeeex   " "                " "ooooooo         " "oyyyyyo         " "oyyyyyo    ziiiz" "oyyyyyo    izzzi" "oyyyyyo    izzzi" "oyyyyyo    izzzi" "ooooooo    ziiiz" ];
              };
              "18" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                " "                " "                " "        xx~xx   " "        xxxxx   " "        xxxxx   " "        xxxxx   " "        xxxxx   " "                " "yyyyyyy         " "yyyyyyy         " "yyyyyyy    zzzzz" "yyyyyyy    zzzzz" "yyyyyyy    zzzzz" "yyyyyyy    zzzzz" "yyyyyyy    zzzzz" ];
              };
              "19" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "bbbbbbbbbbbbbbbb" "bbbbbbbbbbbbbbbb" "bbbbbbbbbbbbbbbb" "bbbbbbbbbbbbbbbb" "bbbbbbbbbbbbbbbb" "bbbbbbbbbbbbbbbb" "bbbbbbbbbbbbbbbb" "bbbbbbbbbbbbbbbb" "bbbbbbbnbbbbbbbb" "bbbbbbbbbbbbbbbb" "bbbbbbbbbbbbbbbb" "bbbbbbbbbbbbbbbb" "bbbbbbbbbbbbbbbb" "bbbbbbbbbbbbbbbb" "bbbbbbbbbbbbbbbb" "bbbbbbbbbbbbbbbb" ];
              };
              };
            };
          };
          transpose = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "complex";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "dimensionally_transcendent_plasma_forge";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "dimensionally_transcendent_plasma_forge";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
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
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " "         N   N     N   N         " "         N   N     N   N         " "         N   N     N   N         " "                                 " "                                 " "                                 " "         N   N     N   N         " "         N   N     N   N         " " NNN   NNN   N     N   NNN   NNN " "                                 " "                                 " "                                 " " NNN   NNN             NNN   NNN " "                                 " "                                 " "                                 " "                                 " "                                 " " NNN   NNN             NNN   NNN " "                                 " "                                 " "                                 " " NNN   NNN             NNN   NNN " ];
              };
              "1" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "         N   N     N   N         " "         bCCCb     bCCCb         " "         bCCCb     bCCCb         " "         bCCCb     bCCCb         " "         N   N     N   N         " "                                 " "         N   N     N   N         " "         bCCCb     bCCCb         " "         bCCCb     bCCCb         " "NbbbN NbbNCCCb     bCCCNbbN NbbbN" " CCC   CCC   N     N   CCC   CCC " " CCC   CCC             CCC   CCC " " CCC   CCC             CCC   CCC " "NbbbN NbbbN           NbbbN NbbbN" "  N     N               N     N  " "  N     N               N     N  " "                                 " "  N     N               N     N  " "  N     N               N     N  " "NbbbN NbbbN           NbbbN NbbbN" " CCC   CCC             CCC   CCC " " CCC   CCC             CCC   CCC " " CCC   CCC             CCC   CCC " "NbbbN NbbbN    N N    NbbbN NbbbN" ];
              };
              "2" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "         N   N     N   N         " "         bCCCb     bCCCb         " "      NNNbbbbbNNsNNbbbbbNNN      " "    ss   bCCCb     bCCCb   ss    " "   s     N   N     N   N     s   " "   s                         s   " "  N      N   N     N   N      N  " "  N      bCCCb     bCCCb      N  " "  N     sbbbbbNNsNNbbbbbs     N  " "NbbbN NbbNCCCb     bCCCNbbN NbbbN" " CbC   CbC   N     N   CbC   CbC " " CbC   CbC             CbC   CbC " " CbC   CbC             CbC   CbC " "NbbbN NbbbN           NbbbN NbbbN" " NNN   NNN             NNN   NNN " " NNN   NNN             NNN   NNN " "  s     s               s     s  " " NNN   NNN             NNN   NNN " " NNN   NNN             NNN   NNN " "NbbbN NbbbN           NbbbN NbbbN" " CbC   CbC             CbC   CbC " " CbC   CbC             CbC   CbC " " CbC   CbC             CbC   CbC " "NbbbN NbbbNNNNNsNsNNNNNbbbN NbbbN" ];
              };
              "3" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "         N   N     N   N         " "         bCCCb     bCCCb         " "    ss   bCCCb     bCCCb   ss    " "         bCCCb     bCCCb         " "  s      NCCCN     NCCCN      s  " "  s      NCCCN     NCCCN      s  " "         NCCCN     NCCCN         " "         bCCCb     bCCCb         " "         bCCCb     bCCCb         " "NbbbNNNbbNCCCb     bCCCNbbNNNbbbN" " CCCCCCCCC   N     N   CCCCCCCCC " " CCCCCCCCC             CCCCCCCCC " " CCCCCCCCC             CCCCCCCCC " "NbbbNNNbbbN           NbbbNNNbbbN" "  N     N               N     N  " "  N     N               N     N  " "                                 " "  N     N               N     N  " "  N     N               N     N  " "NbbbNNNbbbN           NbbbNNNbbbN" " CCCCCCCCC             CCCCCCCCC " " CCCCCCCCC             CCCCCCCCC " " CCCCCCCCC             CCCCCCCCC " "NbbbNNNbbbN    NbN    NbbbNNNbbbN" ];
              };
              "4" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " "         N   N     N   N         " "   s     N   N     N   N     s   " "  s      NCCCN     NCCCN      s  " "                                 " "                                 " "                                 " "         NCCCN     NCCCN         " "         N   N     N   N         " " NNN   NN    N     N    NN   NNN " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " " NNN   NNN             NNN   NNN " "                                 " "                                 " "                                 " "                                 " "                                 " " NNN   NNN             NNN   NNN " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " " NNN   NNN     NbN     NNN   NNN " ];
              };
              "5" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " "                                 " "   s                         s   " "  s      NCCCN     NCCCN      s  " "                                 " "                                 " "                                 " "         NCCCN     NCCCN         " "                                 " "   N   N                 N   N   " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " "   N   N                 N   N   " "                                 " "                                 " "                                 " "                                 " "                                 " "   N   N                 N   N   " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " "   N   N       NbN       N   N   " ];
              };
              "6" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " "         N   N     N   N         " "  N      N   N     N   N      N  " "         NCCCN     NCCCN         " "                                 " "                                 " "                                 " "         NCCCN     NCCCN         " "         N   N     N   N         " " NNN   NN    N     N    NN   NNN " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " " NNN   NNN             NNN   NNN " "                                 " "                                 " "                                 " "                                 " "                                 " " NNN   NNN             NNN   NNN " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " " NNN   NNN     NbN     NNN   NNN " ];
              };
              "7" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "         N   N     N   N         " "         bCCCb     bCCCb         " "  N      bCCCb     bCCCb      N  " "         bCCCb     bCCCb         " "         NCCCN     NCCCN         " "         NCCCN     NCCCN         " "         NCCCN     NCCCN         " "         bCCCb     bCCCb         " "         bCCCb     bCCCb         " "NbbbNNNbbNCCCb     bCCCNbbNNNbbbN" " CCCCCCCCC   N     N   CCCCCCCCC " " CCCCCCCCC             CCCCCCCCC " " CCCCCCCCC             CCCCCCCCC " "NbbbNNNbbbN           NbbbNNNbbbN" "  N     N               N     N  " "  N     N               N     N  " "                                 " "  N     N               N     N  " "  N     N               N     N  " "NbbbNNNbbbN           NbbbNNNbbbN" " CCCCCCCCC             CCCCCCCCC " " CCCCCCCCC             CCCCCCCCC " " CCCCCCCCC             CCCCCCCCC " "NbbbNNNbbbN    NbN    NbbbNNNbbbN" ];
              };
              "8" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "         N   N     N   N         " "         bCCCb     bCCCb         " "  N     sbbbbbNNsNNbbbbbs     N  " "         bCCCb     bCCCb         " "         N   N     N   N         " "                                 " "         N   N     N   N         " "         bCCCb     bCCCb         " "  s     sbbbbbNNsNNbbbbbs     s  " "NbbbN NbbNCCCb     bCCCNbbN NbbbN" " CbC   CbC   N     N   CbC   CbC " " CbC   CbC             CbC   CbC " " CbC   CbC             CbC   CbC " "NbbbN NbbbN           NbbbN NbbbN" " NNN   NNN             NNN   NNN " " NNN   NNN             NNN   NNN " "  s     s               s     s  " " NNN   NNN             NNN   NNN " " NNN   NNN             NNN   NNN " "NbbbN NbbbN           NbbbN NbbbN" " CbC   CbC             CbC   CbC " " CbC   CbC             CbC   CbC " " CbC   CbC             CbC   CbC " "NbbbN NbbbNNNNNsNsNNNNNbbbN NbbbN" ];
              };
              "9" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ " NNN   NNN   N     N   NNN   NNN " "NbbbN NbbNCCCb     bCCCNbbN NbbbN" "NbbbN NbbNCCCb     bCCCNbbN NbbbN" "NbbbNNNbbNCCCb     bCCCNbbNNNbbbN" " NNN   NNN   N     N   NNN   NNN " "   N   N                 N   N   " " NNN   NNN   N     N   NNN   NNN " "NbbbNNNbbNCCCb     bCCCNbbNNNbbbN" "NbbbN NbbNCCCb     bCCCNbbN NbbbN" "NNNN   NNNCCCb     bCCCNNN   NNNN" " CCC   CCC   N     N   CCC   CCC " " CCC   CCC             CCC   CCC " " CCC   CCC             CCC   CCC " "NbbbN NbbbN           NbbbN NbbbN" "  N     N               N     N  " "  N     N               N     N  " "                                 " "  N     N               N     N  " "  N     N               N     N  " "NbbbN NbbbN           NbbbN NbbbN" " CCC   CCC             CCC   CCC " " CCC   CCC             CCC   CCC " " CCC   CCC             CCC   CCC " "NbbbN NbbbN    NbN    NbbbN NbbbN" ];
              };
              "10" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " " CCC   CCC   N     N   CCC   CCC " " CbC   CbC   N     N   CbC   CbC " " CCCCCCCCC   N     N   CCCCCCCCC " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " " CCCCCCCCC   N     N   CCCCCCCCC " " CbC   CbC   N     N   CbC   CbC " " CCC   CCC   N     N   CCC   CCC " "                                 " "                                 " "                                 " " NNN   NNN             NNN   NNN " "                                 " "                                 " "                                 " "                                 " "                                 " " NNN   NNN             NNN   NNN " "                                 " "                                 " "                                 " " NNN   NNN     NbN     NNN   NNN " ];
              };
              "11" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " " CCC   CCC             CCC   CCC " " CbC   CbC             CbC   CbC " " CCCCCCCCC             CCCCCCCCC " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " " CCCCCCCCC             CCCCCCCCC " " CbC   CbC             CbC   CbC " " CCC   CCC             CCC   CCC " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "  N     N      NbN      N     N  " ];
              };
              "12" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " " CCC   CCC             CCC   CCC " " CbC   CbC             CbC   CbC " " CCCCCCCCC             CCCCCCCCC " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " " CCCCCCCCC             CCCCCCCCC " " CbC   CbC             CbC   CbC " " CCC   CCC             CCC   CCC " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "  N     N      NbN      N     N  " ];
              };
              "13" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ " NNN   NNN             NNN   NNN " "NbbbN NbbbN           NbbbN NbbbN" "NbbbN NbbbN           NbbbN NbbbN" "NbbbNNNbbbN           NbbbNNNbbbN" " NNN   NNN             NNN   NNN " "   N   N                 N   N   " " NNN   NNN             NNN   NNN " "NbbbNNNbbbN           NbbbNNNbbbN" "NbbbN NbbbN           NbbbN NbbbN" "NbbbN NbbbN           NbbbN NbbbN" " NNN   NNN             NNN   NNN " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "  N     N     NsNsN     N     N  " ];
              };
              "14" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " "                                 " "  N     N               N     N  " "                                 " "                                 " "                                 " "                                 " "                                 " "  N     N               N     N  " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "  N     N    NbbbbbN    N     N  " ];
              };
              "15" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " "                                 " "  N     N               N     N  " "                                 " "                                 " "                                 " "                                 " "                                 " "  N     N               N     N  " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                N                " " NsNNNNNsNNNNsbbbbbsNNNNsNNNNNsN " ];
              };
              "16" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " "                                 " "  s     s               s     s  " "                                 " "                                 " "                                 " "                                 " "                                 " "  s     s               s     s  " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                ~                " "               NNN               " "  NbbbbbNbbbbNbbbbbNbbbbNbbbbbN  " ];
              };
              "17" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " "                                 " "  N     N               N     N  " "                                 " "                                 " "                                 " "                                 " "                                 " "  N     N               N     N  " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                N                " " NsNNNNNsNNNNsbbbbbsNNNNsNNNNNsN " ];
              };
              "18" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " "                                 " "  N     N               N     N  " "                                 " "                                 " "                                 " "                                 " "                                 " "  N     N               N     N  " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "  N     N    NbbbbbN    N     N  " ];
              };
              "19" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ " NNN   NNN             NNN   NNN " "NbbbN NbbbN           NbbbN NbbbN" "NbbbN NbbbN           NbbbN NbbbN" "NbbbNNNbbbN           NbbbNNNbbbN" " NNN   NNN             NNN   NNN " "   N   N                 N   N   " " NNN   NNN             NNN   NNN " "NbbbNNNbbbN           NbbbNNNbbbN" "NbbbN NbbbN           NbbbN NbbbN" "NbbbN NbbbN           NbbbN NbbbN" " NNN   NNN             NNN   NNN " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "  N     N     NsNsN     N     N  " ];
              };
              "20" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " " CCC   CCC             CCC   CCC " " CbC   CbC             CbC   CbC " " CCCCCCCCC             CCCCCCCCC " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " " CCCCCCCCC             CCCCCCCCC " " CbC   CbC             CbC   CbC " " CCC   CCC             CCC   CCC " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "  N     N      NbN      N     N  " ];
              };
              "21" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " " CCC   CCC             CCC   CCC " " CbC   CbC             CbC   CbC " " CCCCCCCCC             CCCCCCCCC " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " " CCCCCCCCC             CCCCCCCCC " " CbC   CbC             CbC   CbC " " CCC   CCC             CCC   CCC " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "                                 " "  N     N      NbN      N     N  " ];
              };
              "22" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " " CCC   CCC   N     N   CCC   CCC " " CbC   CbC   N     N   CbC   CbC " " CCCCCCCCC   N     N   CCCCCCCCC " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " " CCCCCCCCC   N     N   CCCCCCCCC " " CbC   CbC   N     N   CbC   CbC " " CCC   CCC   N     N   CCC   CCC " "                                 " "                                 " "                                 " " NNN   NNN             NNN   NNN " "                                 " "                                 " "                                 " "                                 " "                                 " " NNN   NNN             NNN   NNN " "                                 " "                                 " "                                 " " NNN   NNN     NbN     NNN   NNN " ];
              };
              "23" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ " NNN   NNN   N     N   NNN   NNN " "NbbbN NbbNCCCb     bCCCNbbN NbbbN" "NbbbN NbbNCCCb     bCCCNbbN NbbbN" "NbbbNNNbbNCCCb     bCCCNbbNNNbbbN" " NNN   NNN   N     N   NNN   NNN " "   N   N                 N   N   " " NNN   NNN   N     N   NNN   NNN " "NbbbNNNbbNCCCb     bCCCNbbNNNbbbN" "NbbbN NbbNCCCb     bCCCNbbN NbbbN" "NNNN   NNNCCCb     bCCCNNN   NNNN" " CCC   CCC   N     N   CCC   CCC " " CCC   CCC             CCC   CCC " " CCC   CCC             CCC   CCC " "NbbbN NbbbN           NbbbN NbbbN" "  N     N               N     N  " "  N     N               N     N  " "                                 " "  N     N               N     N  " "  N     N               N     N  " "NbbbN NbbbN           NbbbN NbbbN" " CCC   CCC             CCC   CCC " " CCC   CCC             CCC   CCC " " CCC   CCC             CCC   CCC " "NbbbN NbbbN    NbN    NbbbN NbbbN" ];
              };
              "24" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "         N   N     N   N         " "         bCCCb     bCCCb         " "  N     sbbbbbNNsNNbbbbbs     N  " "         bCCCb     bCCCb         " "         N   N     N   N         " "                                 " "         N   N     N   N         " "         bCCCb     bCCCb         " "  s     sbbbbbNNsNNbbbbbs     s  " "NbbbN NbbNCCCb     bCCCNbbN NbbbN" " CbC   CbC   N     N   CbC   CbC " " CbC   CbC             CbC   CbC " " CbC   CbC             CbC   CbC " "NbbbN NbbbN           NbbbN NbbbN" " NNN   NNN             NNN   NNN " " NNN   NNN             NNN   NNN " "  s     s               s     s  " " NNN   NNN             NNN   NNN " " NNN   NNN             NNN   NNN " "NbbbN NbbbN           NbbbN NbbbN" " CbC   CbC             CbC   CbC " " CbC   CbC             CbC   CbC " " CbC   CbC             CbC   CbC " "NbbbN NbbbNNNNNsNsNNNNNbbbN NbbbN" ];
              };
              "25" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "         N   N     N   N         " "         bCCCb     bCCCb         " "  N      bCCCb     bCCCb      N  " "         bCCCb     bCCCb         " "         NCCCN     NCCCN         " "         NCCCN     NCCCN         " "         NCCCN     NCCCN         " "         bCCCb     bCCCb         " "         bCCCb     bCCCb         " "NbbbNNNbbNCCCb     bCCCNbbNNNbbbN" " CCCCCCCCC   N     N   CCCCCCCCC " " CCCCCCCCC             CCCCCCCCC " " CCCCCCCCC             CCCCCCCCC " "NbbbNNNbbbN           NbbbNNNbbbN" "  N     N               N     N  " "  N     N               N     N  " "                                 " "  N     N               N     N  " "  N     N               N     N  " "NbbbNNNbbbN           NbbbNNNbbbN" " CCCCCCCCC             CCCCCCCCC " " CCCCCCCCC             CCCCCCCCC " " CCCCCCCCC             CCCCCCCCC " "NbbbNNNbbbN    NbN    NbbbNNNbbbN" ];
              };
              "26" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " "         N   N     N   N         " "  N      N   N     N   N      N  " "         NCCCN     NCCCN         " "                                 " "                                 " "                                 " "         NCCCN     NCCCN         " "         N   N     N   N         " " NNN   NN    N     N    NN   NNN " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " " NNN   NNN             NNN   NNN " "                                 " "                                 " "                                 " "                                 " "                                 " " NNN   NNN             NNN   NNN " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " " NNN   NNN     NbN     NNN   NNN " ];
              };
              "27" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " "                                 " "   s                         s   " "  s      NCCCN     NCCCN      s  " "                                 " "                                 " "                                 " "         NCCCN     NCCCN         " "                                 " "   N   N                 N   N   " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " "   N   N                 N   N   " "                                 " "                                 " "                                 " "                                 " "                                 " "   N   N                 N   N   " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " "   N   N       NbN       N   N   " ];
              };
              "28" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " "         N   N     N   N         " "   s     N   N     N   N     s   " "  s      NCCCN     NCCCN      s  " "                                 " "                                 " "                                 " "         NCCCN     NCCCN         " "         N   N     N   N         " " NNN   NN    N     N    NN   NNN " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " " NNN   NNN             NNN   NNN " "                                 " "                                 " "                                 " "                                 " "                                 " " NNN   NNN             NNN   NNN " "   C   C                 C   C   " "   C   C                 C   C   " "   C   C                 C   C   " " NNN   NNN     NbN     NNN   NNN " ];
              };
              "29" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "         N   N     N   N         " "         bCCCb     bCCCb         " "    ss   bCCCb     bCCCb   ss    " "         bCCCb     bCCCb         " "  s      NCCCN     NCCCN      s  " "  s      NCCCN     NCCCN      s  " "         NCCCN     NCCCN         " "         bCCCb     bCCCb         " "         bCCCb     bCCCb         " "NbbbNNNbbNCCCb     bCCCNbbNNNbbbN" " CCCCCCCCC   N     N   CCCCCCCCC " " CCCCCCCCC             CCCCCCCCC " " CCCCCCCCC             CCCCCCCCC " "NbbbNNNbbbN           NbbbNNNbbbN" "  N     N               N     N  " "  N     N               N     N  " "                                 " "  N     N               N     N  " "  N     N               N     N  " "NbbbNNNbbbN           NbbbNNNbbbN" " CCCCCCCCC             CCCCCCCCC " " CCCCCCCCC             CCCCCCCCC " " CCCCCCCCC             CCCCCCCCC " "NbbbNNNbbbN    NbN    NbbbNNNbbbN" ];
              };
              "30" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "         N   N     N   N         " "         bCCCb     bCCCb         " "      NNNbbbbbNNsNNbbbbbNNN      " "    ss   bCCCb     bCCCb   ss    " "   s     N   N     N   N     s   " "   s                         s   " "  N      N   N     N   N      N  " "  N      bCCCb     bCCCb      N  " "  N     sbbbbbNNsNNbbbbbs     N  " "NbbbN NbbNCCCb     bCCCNbbN NbbbN" " CbC   CbC   N     N   CbC   CbC " " CbC   CbC             CbC   CbC " " CbC   CbC             CbC   CbC " "NbbbN NbbbN           NbbbN NbbbN" " NNN   NNN             NNN   NNN " " NNN   NNN             NNN   NNN " "  s     s               s     s  " " NNN   NNN             NNN   NNN " " NNN   NNN             NNN   NNN " "NbbbN NbbbN           NbbbN NbbbN" " CbC   CbC             CbC   CbC " " CbC   CbC             CbC   CbC " " CbC   CbC             CbC   CbC " "NbbbN NbbbNNNNNsNsNNNNNbbbN NbbbN" ];
              };
              "31" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "         N   N     N   N         " "         bCCCb     bCCCb         " "         bCCCb     bCCCb         " "         bCCCb     bCCCb         " "         N   N     N   N         " "                                 " "         N   N     N   N         " "         bCCCb     bCCCb         " "         bCCCb     bCCCb         " "NbbbN NbbNCCCb     bCCCNbbN NbbbN" " CCC   CCC   N     N   CCC   CCC " " CCC   CCC             CCC   CCC " " CCC   CCC             CCC   CCC " "NbbbN NbbbN           NbbbN NbbbN" "  N     N               N     N  " "  N     N               N     N  " "                                 " "  N     N               N     N  " "  N     N               N     N  " "NbbbN NbbbN           NbbbN NbbbN" " CCC   CCC             CCC   CCC " " CCC   CCC             CCC   CCC " " CCC   CCC             CCC   CCC " "NbbbN NbbbN    N N    NbbbN NbbbN" ];
              };
              "32" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "                                 " "         N   N     N   N         " "         N   N     N   N         " "         N   N     N   N         " "                                 " "                                 " "                                 " "         N   N     N   N         " "         N   N     N   N         " " NNN   NNN   N     N   NNN   NNN " "                                 " "                                 " "                                 " " NNN   NNN             NNN   NNN " "                                 " "                                 " "                                 " "                                 " "                                 " " NNN   NNN             NNN   NNN " "                                 " "                                 " "                                 " " NNN   NNN             NNN   NNN " ];
              };
              };
            };
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "complex";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "stargate";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "stargate";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "TwilightForest:tile.TFPortal";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
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
      condition = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          id = lib.mkOption {
            type = lib.types.str;
            default = "unbreakable_tconstruct_tool";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "achievement";
          };
          };
        };
      };
      id = lib.mkOption {
        type = lib.types.str;
        default = "unbreakable_tconstruct_tool";
      };
      model = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          nbt = lib.mkOption {
            type = lib.types.str;
            default = "{InfiTool: {RenderExtra: 11, RenderHead: 10, RenderHandle: 8, RenderAccessory: 11}}";
          };
          registryName = lib.mkOption {
            type = lib.types.str;
            default = "TConstruct:hammer";
          };
          type = lib.mkOption {
            type = lib.types.str;
            default = "item";
          };
          };
        };
      };
      };
    };
  };
}
