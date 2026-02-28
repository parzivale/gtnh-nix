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
                description = "If true normal backpack requires a chest in the middle";
              };
              allowSoulbound = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true backpack will stay in your backpack slot on death when enchanted with EnderIO soulbound.";
              };
              backpackSlotsL = lib.mkOption {
                type = lib.types.int;
                default = 90;
                description = "Number of slots a large backpack has valid: integers 1-128";
              };
              backpackSlotsM = lib.mkOption {
                type = lib.types.int;
                default = 63;
                description = "Number of slots a medium backpack has valid: integers 1-128";
              };
              backpackSlotsS = lib.mkOption {
                type = lib.types.int;
                default = 36;
                description = "Number of slots a small backpack has valid: integers 1-128";
              };
              bigByUpgradeOnly = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true big backpacks can only crafted by upgrading a small one";
              };
              disableBackpacks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true small backpacks are not craftable";
              };
              disableBigBackpacks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true big backpacks are not craftable";
              };
              disableEnderBackpack = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true ender backpacks are not craftable";
              };
              disableWorkbenchBackpack = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true workbench backpacks are not craftable";
              };
              disallowItems = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "etfuturum:shulker_box" ];
                description = "Example: disallowItems: minecraft:dirt This will disallow dirt in backpacks.";
              };
              enderRecipe = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Recipe to craft ender backpack 0 ender chest 1 eye of the ender";
              };
              forbiddenDimensions = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "55" ];
                description = "Example: forbiddenDimensions: 0 This will disallow backpacks inventory for Overworld (id = 0).";
              };
              maxBackpackAmount = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Number of backpacks a player can have in his inventory valid: integers 0-36 0 = unlimited";
              };
              openOnlyWornBackpacks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true you can only open a backpack that you wear in the extra slot";
              };
              playSound = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true backpack will play opening sound effect";
              };
              renderBackpackModel = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true the backpack 3D model will be rendered.";
              };
            };
          };
        };
      };
    };
  };
}
