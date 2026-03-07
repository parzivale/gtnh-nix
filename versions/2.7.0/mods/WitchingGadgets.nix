{lib, ...}: {
  WitchingGadgets = lib.mkOption {
    description = "WitchingGadgets configuration (./config/WitchingGadgets.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/WitchingGadgets.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        enchantments = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enchantment ID: Backstab" = lib.mkOption {
                type = lib.types.int;
                default = 76;
              };
              "Enchantment ID: Gemstone Brittle" = lib.mkOption {
                type = lib.types.int;
                default = 65;
              };
              "Enchantment ID: Gemstone Potency" = lib.mkOption {
                type = lib.types.int;
                default = 64;
              };
              "Enchantment ID: Invisible Gear" = lib.mkOption {
                type = lib.types.int;
                default = 71;
              };
              "Enchantment ID: Ride Protection" = lib.mkOption {
                type = lib.types.int;
                default = 81;
              };
              "Enchantment ID: Soulbound" = lib.mkOption {
                type = lib.types.int;
                default = 82;
              };
              "Enchantment ID: Stealth" = lib.mkOption {
                type = lib.types.int;
                default = 75;
              };
              "Enchantment ID: Unveiling" = lib.mkOption {
                type = lib.types.int;
                default = 74;
              };
              "Soul Tether handles Baubles inventory" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Soul Tether handles Galacticraft inventory" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        modules = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable Bags" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Cloak of Voluminous Pockets" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Cloaks" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Enderlinked Bag" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Gemcutting" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Hungry Bag" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Kamas and variants" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Mantle of the Raven" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Primordial gear and weapons" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Spectral Mantle" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Voidlinked Bag" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Wolven Cloak" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        "ore/crucible" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable clusters" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable transmutations" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Not Trippling Cluster List" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "Infinity" "Infinity Catalyst" "Neutronium" "Indium" "Iridium" "Osmium" "Naquadah" "Niobium" "Americium" "Uranium" "Uranium 235" "Thorium" "Deep Iron" "Naquadria" "Plutonium" "Plutonium 241" "Europium" "Tungsten" "Black Plutonium" "Cosmic Neutronium" "Titanium" "Trinium" "Yttrium" "Platinum" "Draconium" "Oriharukon" "Samarium" "Electrum" "Curium" "Californium" "Flerovium" "Desh" "Ichorium" "Infused Gold" "Palladium" "Quantium" "Lutetium" "Mysterious Crystal" "Tellurium" "Barium" "Lanthanum" "Cerium" "Praseodymium" "Gadolinium" "Dysprosium" "Holmium" "Erbium" "Thulium" "Ytterbium" "Tritanium" "Promethium" "Terbium" "Tartarite" ];
              };
            };
          };
        };
        other = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Valid generation bases: EldritchRing" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "minecraft:stone" "minecraft:sand" "minecraft:packed_ice" "minecraft:grass" "minecraft:gravel" "minecraft:dirt" ];
              };
              "Valid generation bases: HilltopStones" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "minecraft:stone" "minecraft:sand" "minecraft:packed_ice" "minecraft:grass" "minecraft:gravel" "minecraft:dirt" ];
              };
            };
          };
        };
        "other options" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Allow FocusPouch active ability" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Allow modifications to newly applied PotionEffects" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Blocks for the WG Blast Furnace" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "Railcraft:brick.infernal" "Railcraft:stair" ];
              };
              "Cloak Animation Mode" = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              "Dis-/enable repairing the Boots of the Traveller with leather" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Dis-/enable the modification of looting and fortune modifications with the Ring of the Covetous Coin" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Drop Items from Generators" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Enable Terraformer" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Selection Radial Speed" = lib.mkOption {
                type = lib.types.str;
                default = "0.15";
              };
              "Smeltery Result for Clusters" = lib.mkOption {
                type = lib.types.int;
                default = 432;
              };
            };
          };
        };
        potions = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Potion ID: Cinder Coat" = lib.mkOption {
                type = lib.types.int;
                default = 34;
              };
              "Potion ID: Dissolve" = lib.mkOption {
                type = lib.types.int;
                default = 33;
              };
              "Potion ID: Knockback Resistance" = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
            };
          };
        };
        search = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enables the search function in the Thaumonomicon" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Limit Thaumonomicon Search to currently active category" = lib.mkOption {
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
