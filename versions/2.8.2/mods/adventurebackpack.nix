{lib, ...}: {
  adventurebackpack = lib.mkOption {
    description = "adventurebackpack configuration (./config/adventurebackpack.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/adventurebackpack.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        experimental = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Boss Bar Indent" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Boss health bar indent from top border, 0 = standard Forge render [range: 0 ~ 500, default: 0]";
              };
              "Chat Spam" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to greatly reduce chat spam. [default: true]";
              };
            };
          };
        };
        gameplay = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Allow SoulBound" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow SoulBound enchant on wearable packs [default: true]";
              };
              "Allow Translucency" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow Translucency enchant on wearable packs [default: true]";
              };
              "Backpack Abilities" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow the backpacks to execute their special abilities, or be only cosmetic (Doesn't affect lightning transformation) Must be disabled in both Client and Server to work properly [default: true]";
              };
              "Backpack Death Place" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Place backpacks as a block when you die? [default: true]";
              };
              "Enable Campfire Spawn" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable/Disable ability to spawn at campfire [default: false]";
              };
              "Enable Hose Drink" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable hose drink mode [default: true]";
              };
              "Enable Tools Cycling" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable tool cycling [default: true]";
              };
              "Fix Vanilla Lead" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Fix the vanilla Lead? (Checks mobs falling on a leash to not die of fall damage if they're not falling so fast) [default: true]";
              };
              "Maintenance Tinker Tools" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows to maintenance (repair/upgarde) Tinkers Construct tools in backpacks as if it's Crafting Station [default: true]";
              };
              "Portable Sleeping Bag" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allows to use sleeping bag directly from wearing backpacks. Sleep by one touch [default: true]";
              };
            };
          };
        };
        graphics = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable Fullness Bar" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable durability bar showing fullness of backpacks inventory [default: false]";
              };
              "Enable Temperature Bar" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable durability bar showing temperature of jetpack [default: false]";
              };
              "Enable Tools Render" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable rendering for tools in the backpack tool slots [default: true]";
              };
              "Hovering Text" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show hovering text on fluid tanks? [default: true]";
              };
              "Show Backpack on Back" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether or not to render the backpack when wearing it. [default: true]";
              };
              "Tank Render Type" = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "1,2 or 3 for different rendering of fluids in the Backpack GUI [range: 1 ~ 3, default: 3]";
              };
              status = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "Enable Overlay" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Show player status effects on screen? [default: true]";
                    };
                    "Indent Horizontal" = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                      description = "Horizontal indent from the window border [range: 0 ~ 1000, default: 2]";
                    };
                    "Indent Vertical" = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                      description = "Vertical indent from the window border [range: 0 ~ 500, default: 2]";
                    };
                    "Respect Thaumcraft" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Take into account Thaumcraft wands GUI and do not overlap it [default: true]";
                    };
                    "Stick To Left" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Stick to left? Icons will appears from left to right. If false: stick to right, icons will appears from right to left [default: true]";
                    };
                    "Stick To Top" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Stick to top? [default: true]";
                    };
                  };
                };
              };
              tanks = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "Enable Overlay" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Show the different wearable overlays on screen? [default: true]";
                    };
                    "Indent Horizontal" = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                      description = "Horizontal indent from the window border [range: 0 ~ 1000, default: 2]";
                    };
                    "Indent Vertical" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                      description = "Vertical indent from the window border [range: 0 ~ 500, default: 1]";
                    };
                    "Stick To Bottom" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Stick to bottom? [default: true]";
                    };
                    "Stick To Right" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Stick to right? [default: true]";
                    };
                  };
                };
              };
            };
          };
        };
        items = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable Item Filters" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable filters from Disallow category [default: true]";
              };
              "Forbidden Dimensions" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "55" ];
                description = "Disallow opening backpack inventory for specific dimension ID [default: ]";
              };
              "Valid Copter Fuels" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "biodiesel, 1.0" "biofuel, 1.0" "bioethanol, 1.5" "creosote, 7.0" "fuel, 0.8" "lava, 5.0" "liquid_light_oil, 3.0" "liquid_medium_oil, 3.0" "liquid_heavy_oil, 3.0" "liquid_light_fuel, 1.0" "liquid_heavy_fuel, 1.3" "nitrofuel, 0.4" "oil, 3.0" "rocket_fuel, 0.8" ];
                description = "List of valid fuels for Copter. Consumption rate range: 0.05 ~ 20.0. Format: 'fluid, rate', ex.: 'water, 0.0' [default: [biodiesel, 1.0], [biofuel, 1.0], [bioethanol, 1.5], [creosote, 7.0], [fuel, 0.8], [highoctanegasoline, 0.16], [lava, 5.0], [liquid_light_oil, 3.0], [liquid_medium_oil, 3.0], [liquid_heavy_oil, 3.0], [liquid_light_fuel, 1.0], [liquid_heavy_fuel, 1.3], [nitrofuel, 0.4], [oil, 3.0], [rocket_fuel, 0.8]]";
              };
              recipes = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "Adventures Set" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Enable/Disable recipe for Adventure's Hat, Suit and Pants [default: true]";
                    };
                    "Clockwork Crossbow" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Enable/Disable Clockwork Crossbow recipe [default: true]";
                    };
                    "Coal Jetpack" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Enable/Disable CoalJetpack recipe [default: true]";
                    };
                    "Consume Dragon Egg" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Consume Dragon Egg when Dragon backpack crafted? [default: false]";
                    };
                    "Copter Pack" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Enable/Disable CopterPack recipe [default: true]";
                    };
                    "Inflatable Boat" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Enable/Disable recipe for Inflatable Boat [default: true]";
                    };
                    "Inflatable Boat Motorized" = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Enable/Disable recipe for Inflatable Boat (motorized). For aesthetic only, not fully implemented (yet?) [default: false]";
                    };
                    Machete = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Enable/Disable Machete recipe [default: true]";
                    };
                    "Piston Boots" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Enable/Disable PistonBoots recipe [default: true]";
                    };
                    Saddle = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Add recipe for saddle? [default: true]";
                    };
                  };
                };
              };
              disallowed = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "By Displayed Name" = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ ];
                      description = "Disallow items by displayed (localized) name. Not case sensitive. Worst option, use only when there is no choice. Example: Dirt [default: ]";
                    };
                    "By Internal ID" = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "etfuturum:shulker_box" ];
                      description = "Disallow items by internal ID. Case sensitive. Example: minecraft:dirt [default: ]";
                    };
                    "By Internal IDs" = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ ];
                      description = "Disallow items by internal ID. Case sensitive. Will be disallowed all items containing that word in their IDs. Use with caution. Example: minecraft:di [default: ]";
                    };
                    "By Internal Name" = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ ];
                      description = "Disallow items by internal (unlocalized) name. Not case sensitive. Example: tile.dirt [default: ]";
                    };
                  };
                };
              };
              settings = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "Dragon Damage Boost" = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                      description = "Dragon Backpack damage boost. 0 - disable [range: 0 ~ 4, default: 2]";
                    };
                    "Dragon Regeneration" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                      description = "Dragon Backpack regeneration level. 0 - disable [range: 0 ~ 4, default: 1]";
                    };
                    "Piston Boots Auto Step" = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Allow Piston Boots auto step blocks [default: true]";
                    };
                    "Piston Boots Jump Height" = lib.mkOption {
                      type = lib.types.int;
                      default = 3;
                      description = "Piston Boots jump height in blocks [range: 1 ~ 8, default: 3]";
                    };
                    "Piston Boots Sprint" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                      description = "Piston Boots sprint boost. 0 - disable [range: 0 ~ 4, default: 1]";
                    };
                    "Rainbow Special Jump" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                      description = "Rainbow Backpack special jump. 0 - disable [range: 0 ~ 4, default: 1]";
                    };
                    "Rainbow Special Speed" = lib.mkOption {
                      type = lib.types.int;
                      default = 3;
                      description = "Rainbow Backpack special speed. 0 - disable [range: 0 ~ 4, default: 3]";
                    };
                    "Rainbow Speed" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                      description = "Rainbow Backpack speed boost. 0 - disable [range: 0 ~ 4, default: 1]";
                    };
                  };
                };
              };
            };
          };
        };
        sound = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Coal Jetpack" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow playing the CoalJetpack sound (Client Only, other players may hear it) [default: true]";
              };
              "Copter Pack" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow playing the CopterPack sound (Client Only, other players may hear it) [default: true]";
              };
              "Piston Boots" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow playing the PistonBoots sound [default: true]";
              };
            };
          };
        };
        worldgen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Bat Backpacks" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Allow generation of Bat Backpacks in dungeon and mineshaft loot. It cannot be obtained by crafting [default: true]";
              };
              "Bonus Backpack" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Include a Standard Adventure Backpack in bonus chest? [default: false]";
              };
              "IronGolem Backpacks" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Allow generation of IronGolem Backpacks in village blacksmith loot. It cannot be obtained by crafting [default: true]";
              };
              "Pigman Backpacks" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Allow generation of Pigman Backpacks in dungeon loot and villager trades [default: false]";
              };
            };
          };
        };
      };
    };
  };
}
