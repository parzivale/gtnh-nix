{lib, ...}: {
  neiintegration = lib.mkOption {
    description = "neiintegration configuration (./config/neiintegration.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/neiintegration.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        handlers = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Fluid Registry" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Shows information about registered fluids when looking them or related items up.";
              };
              "Ore Dictionary" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Shows information about items registered in the Ore Dictionary when looking up item usage.";
              };
            };
          };
        };
        integrations = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Minecraft / Forge" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to enable Minecraft / Forge integration. Disable if this part of the mod causes crashes.";
              };
              "Pam's HarvestCraft" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether to enable Pam's HarvestCraft integration. Disable if this part of the mod causes crashes.";
              };
              Railcraft = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to enable Railcraft integration. Disable if this part of the mod causes crashes.";
              };
            };
          };
        };
        tooltips = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Burn Time" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Show the burn time of items when used as furnace fuel.";
              };
              "Burn Time Advanced" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If burn times are enabled, they will only be shown in advanced (F3+H) tooltips. Effect stacks with Shift if enabled.";
              };
              "Burn Time Shift" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If burn times are enabled, they will only be shown if the Shift key is held. Effect stacks with Advanced if enabled.";
              };
              "Fluid Registry Info" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Show some fluid info on fluid-related items.";
              };
              "Fluid Registry Info Advanced" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If fluid registry info is enabled, it will only be shown in advanced (F3+H) tooltips. Effect stacks with Shift if enabled.";
              };
              "Fluid Registry Info Shift" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If fluid registry info is enabled, it will only be shown if the Shift key is held. Effect stacks with Advanced if enabled.";
              };
              "Internal Name" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Show the internal name (example: 'minecraft:stone') of items.";
              };
              "Internal Name Advanced" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If internal names are enabled, they will only be shown in advanced (F3+H) tooltips. Effect stacks with Shift if enabled.";
              };
              "Internal Name Shift" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If internal names are enabled, they will only be shown if the Shift key is held. Effect stacks with Advanced if enabled.";
              };
              "Maximum Stack Size" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Show the maximum stack size of items.";
              };
              "Maximum Stack Size Advanced" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If maximum stack sizes are enabled, they will only be shown in advanced (F3+H) tooltips. Effect stacks with Shift if enabled.";
              };
              "Maximum Stack Size Shift" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If maximum stack sizes are enabled, they will only be shown if the Shift key is held. Effect stacks with Advanced if enabled.";
              };
              "Ore Dictionary Names" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Show the Ore Dictionary names of items.";
              };
              "Ore Dictionary Names Advanced" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If Ore Dictionary names are enabled, they will only be shown in advanced (F3+H) tooltips. Effect stacks with Shift if enabled.";
              };
              "Ore Dictionary Names Shift" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If Ore Dictionary names are enabled, they will only be shown if the Shift key is held. Effect stacks with Advanced if enabled.";
              };
              "Unlocalized Name" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Show the unlocalized name (example: 'tile.stone') of items.";
              };
              "Unlocalized Name Advanced" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If unlocalized names are enabled, they will only be shown in advanced (F3+H) tooltips. Effect stacks with Shift if enabled.";
              };
              "Unlocalized Name Shift" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If unlocalized names are enabled, they will only be shown if the Shift key is held. Effect stacks with Advanced if enabled.";
              };
            };
          };
        };
      };
    };
  };
}
