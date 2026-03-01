{lib, ...}: {
  TinkersConstruct = lib.mkOption {
    description = "TinkersConstruct configuration (./config/TinkersConstruct.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TinkersConstruct.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        achievements = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable Achievements" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        craftingstationblacklist = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              tileEntities = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "wanion.avaritiaddons.block.chest.infinity.TileEntityInfinityChest" "ic2.core.block.personal.TileEntityPersonalChest" ];
              };
            };
          };
        };
        crossmodinteractions = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Metal cast FluidType" = lib.mkOption {
                type = lib.types.str;
                default = "Brass";
                description = "For pack maintainers. Defines the LiquidType used to create metal casts.";
              };
            };
          };
        };
        "difficulty changes" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Add alternative recipe for bolt parts: arrowhead + toolrod in a crafting grid" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Additional throw damage of dagger" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Allow creation of endstone" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Balanced Flux Modifier" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Craft metals with Wood Patterns" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Craft vanilla metal blocks" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Deny creation of non-metal mattocks" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Drop heart canisters on death" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Dropped tools are indestructible" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Auto-Smelt and Fortune interaction" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Enable mod blue slime tools" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable mod bone tools" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable mod cactus tools" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable mod flint tools" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable mod netherrack tools" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable mod paper tools" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable mod slime tools" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable mod stone tools" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable mod wooden tools" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Global item despawn time" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Changes the despawn time of all items, 0 is vanilla behavior";
              };
              "Keep hunger on death" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Keep levels on death" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Modifiers increase Mining Level" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Remove Gold Cast Recipes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Remove Vanilla Tool Effectiveness" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Remove Vanilla Tool Recipes" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Spawn beginner book" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Tools lose 10% durability on death" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        dimblacklist = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ForbiddenDim = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 55 ];
                description = "Disallow Traveller's Belt ability to swap inventories for certain dimension ID's";
              };
              GenerateSlimeIslandInDim0Only = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "True: slime islands wont generate in any ages other than overworld(if enabled); False: will generate in all non-blackisted ages";
              };
              SlimeIslandDimBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ ];
                description = "Add dimension ID's to prevent slime islands from generating in them";
              };
              genIslandsFlat = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Generate slime islands in flat worlds";
              };
              genOresFlat = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Generate ores in flat worlds";
              };
              slimeIslGenDim0 = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "True: slime islands generate in overworld; False they do not generate";
              };
            };
          };
        };
        experimental = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Allow horses to be melted down for glue" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Allow villagers to be melted down for emeralds" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Items can be thrown into smelteries" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Minimal Textures" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Renders one row of colored hearts instead of multiple rows of hearts" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Send additional block updates when using AOE tools" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This fixes very fast tools sometimes resulting in ghost blocks, but causes a bit more network traffic. Should be fine in theory.";
              };
              YellowHeartDropBlacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "entitynpc" "entitycustomnpc" ];
                description = "Entity classes listed here will not drop yellow hearts. The values are the actual class names in lowercase.";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Allow stackwise consumption" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Allow stacks of essence berries to be consumed at once when shifting (this does not spawn XP orbs in world).";
              };
              "Always cast TConstruct ingots" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "You will always get a TConstruct item from casting an ingot or block.";
              };
              "Sea level" = lib.mkOption {
                type = lib.types.int;
                default = 64;
              };
            };
          };
        };
        looks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Connected Textures Enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "0 = disabled, 1 = enabled, 2 = enabled + ignore stained glass meta";
              };
              "Show Traveller Gear Accessories" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        mobs = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Blue Slime spawn chance" = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Set to 0 to disable";
              };
            };
          };
        };
        newfeatures = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Scythe AOE harvest" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Can the Scythe harvest crops in an AOE on right click?.";
              };
            };
          };
        };
        "smeltery output modification" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Aluminum Brass ingot return" = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Number of ingots returned from smelting Aluminum Brass in the smeltery";
              };
              "Alumite ingot return" = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Number of ingots returned from smelting Alumite in the smeltery";
              };
              "Bronze ingot return" = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Number of ingots returned from smelting Bronze in the smeltery";
              };
              "Ingots per ore" = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Number of ingots returned from smelting ores in the smeltery";
              };
              "Manyullyn ingot return" = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Number of ingots returned from smelting Manyullyn in the smeltery";
              };
              "Pig Iron ingot return" = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Number of ingots returned from smelting Pig Iron in the smeltery";
              };
            };
          };
        };
        superfun = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "All the world is Superfun" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Enable-TCon-Capes = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        "ultra hardcore changes" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Add Patterns to Pattern Chests" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Gives all tier 1 patterns when pattern chest is placed";
              };
              "Add World Border" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Change Crafting Recipes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Makes recipes for gold apples, carrots, and melon potions more expensive";
              };
              "Change Ghast drops to Gold Ingots" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Necrotic modifier only heals on hostile mob kills" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Passive Health Regen" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Players drop heads on death" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "World Border Radius" = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
            };
          };
        };
        worldgen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Aluminum Bush Density" = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              "Aluminum Bush Max Y" = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              "Aluminum Bush Min Y" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Aluminum Bush Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Aluminum Surface Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              "Aluminum Underground Density" = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              "Aluminum Underground Max Y" = lib.mkOption {
                type = lib.types.int;
                default = 64;
              };
              "Aluminum Underground Min Y" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Ardite Ore Density" = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              "Cobalt Ore Density" = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              "Cobalt Surface Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 2000;
              };
              "Copper Bush Density" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Copper Bush Max Y" = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              "Copper Bush Min Y" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "Copper Bush Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Copper Surface Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "Rarity: 1/num to generate in chunk";
              };
              "Copper Underground Density" = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Density: Chances per chunk";
              };
              "Copper Underground Max Y" = lib.mkOption {
                type = lib.types.int;
                default = 60;
              };
              "Copper Underground Min Y" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "Essence Bush Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Gold Bush Density" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Gold Bush Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Gold Surface Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 9000;
              };
              "Iron Bush Density" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Iron Bush Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Iron Surface Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 4000;
              };
              "Silver Bush Density" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Slime Island Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 8000;
              };
              "Tin Bush Density" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Tin Bush Max Y" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Tin Bush Min Y" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Tin Bush Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Tin Surface Rarity" = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              "Tin Underground Density" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Tin Underground Max Y" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Tin Underground Min Y" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
            };
          };
        };
        "worldgen disabler" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Add Village Generation" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable the Tinkers Villager to trade for oreberries" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Generate Aluminum" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Generate Aluminum Bushes" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Generate Ardite" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Cobalt" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Generate Copper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Generate Copper Bushes" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Generate Essence Bushes" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Generate Gold Bushes" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Generate Iron Bushes" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Generate Surface Aluminum" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Generate Surface Copper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Generate Surface Gold" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Generate Surface Iron" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Generate Surface Tin" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Generate Tin" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Generate Tin Bushes" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
      };
    };
  };
}
