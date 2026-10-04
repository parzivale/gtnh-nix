{ lib, ... }:
{
  Configuration_cfg = lib.mkOption {
    description = "Configuration_cfg configuration (./config/cropsnh/Configuration.cfg)";
    default = { };
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/cropsnh/Configuration.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        crops = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              "Breeding Chance" = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Lower values increase the speed at which crops attempt to breed themselves. actual chance is measured as 1 / value every growth tick. [range: 1 ~ 2147483647, default: 3]";
              };
              "Breeding Range High" = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "The highest bound of the stat variation while breeding. [range: -31 ~ 31, default: 4]";
              };
              "Breeding Range Low" = lib.mkOption {
                type = lib.types.int;
                default = -2;
                description = "The lowest bound of the stat variation while breeding. [range: -31 ~ 31, default: -2]";
              };
              "Disable crop sounds" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true if you prefer your crops without a side of existential screaming. [default: false]";
              };
              "Goldfish screams when stepped on" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If you are fine with the random screams but not with the EXTREME HOWL that comes with walking on them, turn this off. [default: true]";
              };
              "Goldfish sound" = lib.mkOption {
                type = lib.types.str;
                default = "mob.ghast.scream";
                description = "The noise used for goldfish screams [default: mob.ghast.scream]";
              };
              "Growth rate multiplier" = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "This is a global growth rate multiplier [range: 0.0 ~ 2.0, default: 1.0]";
              };
            };
          };
        };
        cropsnh = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              "Crops per craft" = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "The number of crops you get per crafting operation [range: 1 ~ 4, default: 4]";
              };
              "Enable easter eggs" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true to enable easter eggs. [default: true]";
              };
              debug = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true if you wish to enable debug mode [default: false]";
              };
            };
          };
        };
        migrations = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              "Always use migration crop when migrating" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When migrating IC2 crops, always create a \"migration\" that cannot grow but always returns a seed when harvested. [default: false]";
              };
              "Enable Migrations" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable the automatic conversion of existing IC2 crops into CropsNH's equivalent crops. [default: true]";
              };
            };
          };
        };
        rendering = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              "Crop rendering setting" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "When rendering crops, the default (false) is that the plants will only be re-rendered whenever the chunk updates, this basically means that whenever a crop grows it causes the chunk containing the plant to re-rendered.
For small farms this is the suggested approach, however for large farms, it is possible that a crop grows almost every tick, resulting in  re-rendering the chunk every tick, possibly causing huge FPS drops.
When setting this to true, there will no longer be chunk updates when a crop grows, but the rendering will be different: The plant will be rendered every tick (the sticks itself will still be rendered the default way), for small farms this is a bad approach,for large farms as well, but it might result in better FPS compared to the default.
I recommend leaving this on false, if you have FPS problems, set this to true and see for yourself if it is an improvement or not.
This config setting must match on server and client, the server should know if it should cause block updates and the client has to know how to render the crops [default: false]";
              };
            };
          };
        };
        weeds = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              "Enable weeds" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "set to false if you wish to disable weeds [default: true]";
              };
              "Weed Spawn Chance" = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Lower values increase the speed at which weeds spawn in empty crop sticks. actual chance is measured as 1 / value every growth tick. [range: 1 ~ 2147483647, default: 100]";
              };
              "Weed Spread Chance" = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "Lower values increase the speed at which crops spread weeds, actual chance is (rand(value)-growth) <= 2. [range: 2 ~ 2147483647, default: 50]";
              };
              "Weeds can overtake plants" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false if you don't want weeds to be able to overgrow other plants. [default: true]";
              };
            };
          };
        };
      };
    };
  };
}
