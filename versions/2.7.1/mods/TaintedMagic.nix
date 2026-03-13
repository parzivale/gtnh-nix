{lib, ...}: {
  TaintedMagic_cfg = lib.mkOption {
    description = "TaintedMagic_cfg configuration (./config/TaintedMagic.cfg)";
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
