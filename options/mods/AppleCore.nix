{lib, ...}: {
  AppleCore = lib.mkOption {
    description = "AppleCore configuration (./config/AppleCore.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/AppleCore.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        client = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "show.food.exhaustion.hud.underlay" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, shows your food exhaustion as a progress bar behind the hunger bars";
              };
              "show.food.stats.in.debug.overlay" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, adds a line that shows your hunger, saturation, and exhaustion level in the F3 debug overlay";
              };
              "show.food.values.hud.overlay" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, shows the hunger (and saturation if show.saturation.hud.overlay is true) that would be restored by food you are currently holding";
              };
              "show.food.values.in.tooltip" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, shows the hunger and saturation values of food in its tooltip while holding SHIFT";
              };
              "show.food.values.in.tooltip.always" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, shows the hunger and saturation values of food in its tooltip automatically (without needing to hold SHIFT)";
              };
              "show.saturation.hud.overlay" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, shows your current saturation level overlayed on the hunger bar";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "required.mods" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = ["Minecraft" "CodeChickenLib" "Pam's Harvestcraft" "Natura"];
                description = "Subset of TargetMods that are required";
              };
            };
          };
        };
        server = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "exhaustion.sync.threshold" = lib.mkOption {
                type = lib.types.float;
                default = 0.01;
                description = "Raising this value will cause fewer packets to be sent, but will make the client's exhaustion values appear more choppy";
              };
            };
          };
        };
      };
    };
  };
}
