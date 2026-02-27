{lib, ...}: {
  TaintedMagic = lib.mkOption {
    description = "TaintedMagic configuration (./config/TaintedMagic.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TaintedMagic.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        foci = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              tainted_blast_reclining = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "Set reclining for Tainted Shockwave focus. [range: 1 ~ 12, default: 8]";
              };
              eldritch_base_damage = lib.mkOption {
                type = lib.types.int;
                default = 150;
                description = "Set damage for Dark Matter focus. [range: 1 ~ 3000, default: 150]";
              };
              eldritch_staff_multiplier = lib.mkOption {
                type = lib.types.str;
                default = "1.5";
                description = "Set damage multiplier for Staff with Dark Matter focus. [range: 1.0 ~ 10.0, default: 1.5]";
              };
              mages_mace_base_damage = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "Set damage for Mage's Mace focus. [range: 1 ~ 3000, default: 60]";
              };
              mages_mace_staff_multiplier = lib.mkOption {
                type = lib.types.str;
                default = "2.0";
                description = "Set damage multiplier for Staff with Mage's Mace focus. [range: 1.0 ~ 10.0, default: 2.0]";
              };
              taint_storm_damage = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "Set damage for Tainted Storm focus. [range: 1 ~ 3000, default: 15]";
              };
              taint_storm_damage_staff_multiplier = lib.mkOption {
                type = lib.types.str;
                default = "1.5";
                description = "Set damage multiplier for Staff with Tainted Storm focus. [range: 1.0 ~ 10.0, default: 1.5]";
              };
              tainted_blast_damage = lib.mkOption {
                type = lib.types.int;
                default = 75;
                description = "Set damage for Tainted Shockwave focus. [range: 1 ~ 3000, default: 75]";
              };
              tainted_blast_staff_multiplier = lib.mkOption {
                type = lib.types.str;
                default = "1.5";
                description = "Set damage multiplier for Staff with Tainted Shockwave focus. [range: 1.0 ~ 10.0, default: 1.5]";
              };
              vis_hard_damage = lib.mkOption {
                type = lib.types.int;
                default = 35;
                description = "Set damage for Vis Shard focus. [range: 1 ~ 3000, default: 35]";
              };
              vis_hard_staff_multiplier = lib.mkOption {
                type = lib.types.str;
                default = "1.5";
                description = "Set damage multiplier for Staff with Vis Shard focus. [range: 1.0 ~ 10.0, default: 1.5]";
              };
            };
          };
        };
        misc = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              research_tags = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              show_update_messages = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              thaumic_disassembler_icon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              use_update_handler = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should update notifications be enabled? [default: true]";
              };
            };
          };
        };
        ores = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              disable_shadowore_spawning_in_world = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              shadowore_spawn_rate = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
            };
          };
        };
        research = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              research_tags = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Setting this to false will disable the '[TaintedMagic]' tag on the research [default: true]";
              };
              use_custom_research_tab_background = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Setting this to true will enable the old custom tab background [default: false]";
              };
            };
          };
        };
      };
    };
  };
}
