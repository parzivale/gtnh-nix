{lib, ...}: {
  IronChest = lib.mkOption {
    description = "IronChest configuration (./config/IronChest.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/IronChest.cfg";
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
              blocklistUpgrades = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [];
                description = "Example: IRON:GOLD [default: ]";
              };
              cacheRenderingInformation = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableDarkSteelChests = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables the dark steel.";
              };
              enableNetheriteChests = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables the netherite chest.";
              };
              enableSilverChests = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables the silver chest.";
              };
              enableSteelChests = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables the steel chest.";
              };
              ocelotsSitOnChests = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              transparentRenderDistance = lib.mkOption {
                type = lib.types.float;
                default = 128.0;
              };
              transparentRenderInside = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
      };
    };
  };
}
