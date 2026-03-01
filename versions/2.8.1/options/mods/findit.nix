{lib, ...}: {
  findit = lib.mkOption {
    description = "findit configuration (./config/findit.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/findit.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              BlockHighlightingDuration = lib.mkOption {
                type = lib.types.str;
                default = "8";
                description = "Block highlighting duration in seconds";
              };
              EnableRotateView = lib.mkOption {
                type = lib.types.str;
                default = "true";
                description = "Rotate player's view when searched";
              };
              ItemHighlightingColor = lib.mkOption {
                type = lib.types.str;
                default = "FFFF8726";
                description = "Item highlighting color as a hexadecimal color code. For example 0xFFFF8726";
              };
              ItemHighlightingDuration = lib.mkOption {
                type = lib.types.str;
                default = "10";
                description = "Item highlighting duration";
              };
              ItemHighlightingEmptyItemStacks = lib.mkOption {
                type = lib.types.str;
                default = "true";
                description = "If true, the item stack size is ignored. If false, items are only highlighted if their stack size is greater than zero. This is useful when working with barrels or storage drawers.";
              };
              MaxResponseSize = lib.mkOption {
                type = lib.types.str;
                default = "20";
                description = "Maximum number of positions that can be displayed by item/block search";
              };
              SearchCooldown = lib.mkOption {
                type = lib.types.str;
                default = "10";
                description = "Search cooldown in ticks";
              };
              SearchInEnderIOConduits = lib.mkOption {
                type = lib.types.str;
                default = "false";
                description = "Search items & fluids in EnderIO conduits";
              };
              SearchInGregTechPipes = lib.mkOption {
                type = lib.types.str;
                default = "false";
                description = "Search items & fluids in GT pipes";
              };
              SearchItemsOnGround = lib.mkOption {
                type = lib.types.str;
                default = "true";
                description = "Search items dropped on ground";
              };
              SearchRadius = lib.mkOption {
                type = lib.types.str;
                default = "16";
                description = "Radius to search within";
              };
              UseParticleHighlighter = lib.mkOption {
                type = lib.types.str;
                default = "false";
                description = "Use Particle for Block Highlighter";
              };
            };
          };
        };
      };
    };
  };
}
