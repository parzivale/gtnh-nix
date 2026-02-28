{lib, ...}: {
  LogisticsPipes = lib.mkOption {
    description = "LogisticsPipes configuration (./config/LogisticsPipes.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/LogisticsPipes.cfg";
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
              HUDRenderDistance = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "The max. distance between a player and the HUD that get's shown in blocks.";
              };
              OpaquePipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Render every LP pipe opaque.";
              };
              checkForUpdates = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should LogisticsPipes check for updates?";
              };
              detectionCount = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "The maximum number of buildcraft pipes (including forks) between logistics pipes. This is an indicator of the maximum amount of nodes the recursion algorithm will visit before giving up. As it is possible to fork a pipe connection using standard BC pipes the algorithm will attempt to discover all available destinations through that pipe. Do note that the logistics system will not interfere with the operation of non-logistics pipes. So a forked pipe will usually be sup-optimal, but it is possible. A low value might reduce CPU usage, a high value will be able to handle more complex pipe setups. If you never fork your connection between the logistics pipes this has the same meaning as detectionLength and the lower of the two will be used";
              };
              detectionLength = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "The maximum shortest length between logistics pipes. This is an indicator on the maxim depth of the recursion algorithm to discover logistics neighbours. A low value might use less CPU, a high value will allow longer pipe sections";
              };
              displayPopup = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set the default configuration for the popup of the Orderer Gui. Should it be used?";
              };
              easterEggs = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Do you fancy easter eggs?";
              };
              enableBetaRecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Wether or not the Beta-Recipes for Stuff shall be used for pipes/modules.";
              };
              enableParticleFX = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether or not special particles will spawn.";
              };
              logisticsCraftingTablePowerUsage = lib.mkOption {
                type = lib.types.int;
                default = 250;
                description = "Number of LPower units the Logistics Crafting Table uses per craft.";
              };
              mandatoryCarpenterRecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether or not the Carpenter is required to craft Forestry related pipes/modules.";
              };
              maxRobotDistance = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "The max. distance between two robots when there is no zone defined.";
              };
              ordererCountInvertWheel = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Inverts the the mouse wheel scrolling for remote order number of items";
              };
              ordererPageInvertWheel = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Inverts the the mouse wheel scrolling for remote order pages";
              };
              powerUsageDisabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable the power usage trough LogisticsPipes";
              };
              powerUsageMultiplyer = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "A Multiplyer for the power usage.";
              };
              reDetectionFrequency = lib.mkOption {
                type = lib.types.int;
                default = 600;
                description = "The amount of time that passes between checks to see if it is still connected to its neighbours (Independently from block place detection). A low value will mean that it will correct wrong values faster but use more CPU. A high value means error correction takes longer, but CPU consumption is reduced. A value of 20 will check about every second (default 600 [30 seconds])";
              };
            };
          };
        };
        multithread = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              count = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Number of routing table update Threads, 0 to disable.";
              };
              priority = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Priority of the multiThread Threads. 10 is highest, 5 normal, 1 lowest";
              };
            };
          };
        };
      };
    };
  };
}
