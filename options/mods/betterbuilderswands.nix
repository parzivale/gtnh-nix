{lib, ...}: {
  betterbuilderswands = lib.mkOption {
    description = "betterbuilderswands configuration (./config/betterbuilderswands.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/betterbuilderswands.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        diamond_wand_durability = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              general = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "Durability of the Diamond Building Wand";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              blacklisted_blocks = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "Blocks that won't work at all with the wands";
              };
              enable_diamond_wand = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable recipe for diamond builder's wand";
              };
              enable_iron_wand = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable recipe for iron builder's wand";
              };
              enable_stone_wand = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable recipe for stone builder's wand";
              };
              forced_blocks = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:lapis_ore/0=>1*minecraft:lapis_ore/4=>minecraft:lapis_ore/0,minecraft:lit_redstone_ore/0=>1*minecraft:redstone_ore/0=>minecraft:lit_redstone_ore/0,IC2:blockRubWood/2=>1*IC2:blockRubWood/0=>IC2:blockRubWood/0,IC2:blockRubWood/3=>1*IC2:blockRubWood/0=>IC2:blockRubWood/0,IC2:blockRubWood/4=>1*IC2:blockRubWood/0=>IC2:blockRubWood/0,IC2:blockRubWood/5=>1*IC2:blockRubWood/0=>IC2:blockRubWood/0,thaumicbases:ashroom/1=>1*thaumicbases:ashroom/0=>thaumicbases:ashroom/0,thaumicbases:ashroom/2=>1*thaumicbases:ashroom/0=>thaumicbases:ashroom/0,thaumicbases:ashroom/3=>1*thaumicbases:ashroom/0=>thaumicbases:ashroom/0,thaumicbases:ashroom/4=>1*thaumicbases:ashroom/0=>thaumicbases:ashroom/0";
                description = "(what you are looking at)=>(number required)*(item required)=>(block to build)";
              };
              no_assumption_blocks = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "Blocks that break assumptions. When the placed block is not what you expect.";
              };
            };
          };
        };
        why_not = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              straymav_ultimate_wand = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "For those that don't like Extra Utils progression. [default: false]";
              };
            };
          };
        };
      };
    };
  };
}
