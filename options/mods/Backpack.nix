{lib, ...}: {
  Backpack = lib.mkOption {
    description = "Backpack configuration (./config/Backpack.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/Backpack.cfg";
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
              airshipModCompatibility = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "##############";
              };
              allowSoulbound = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "##############";
              };
              backpackSlotsL = lib.mkOption {
                type = lib.types.int;
                default = 90;
                description = "##############";
              };
              backpackSlotsM = lib.mkOption {
                type = lib.types.int;
                default = 63;
                description = "##############";
              };
              backpackSlotsS = lib.mkOption {
                type = lib.types.int;
                default = 36;
                description = "##############";
              };
              bigByUpgradeOnly = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "##############";
              };
              disableBackpacks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "##############";
              };
              disableBigBackpacks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "##############";
              };
              disableEnderBackpack = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "##############";
              };
              disableWorkbenchBackpack = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "##############";
              };
              disallowItems = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "etfuturum:shulker_box" ];
                description = "##############";
              };
              enderRecipe = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "##############";
              };
              forbiddenDimensions = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "55" ];
                description = "##############";
              };
              maxBackpackAmount = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "##############";
              };
              openOnlyWornBackpacks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "##############";
              };
              playSound = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "##############";
              };
              renderBackpackModel = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "##############";
              };
            };
          };
        };
      };
    };
  };
}
