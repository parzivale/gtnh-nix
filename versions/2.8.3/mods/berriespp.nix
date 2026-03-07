{lib, ...}: {
  berriespp = lib.mkOption {
    description = "berriespp configuration (./config/berriespp.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/berriespp.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        crops = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Aluminium Oreberry" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Ardite Berry" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Artichoke = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Bamboo = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Barley = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Belladonna = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Berry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Black Stonelilly" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Blackberry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Blightberry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Blue Glowshroom" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Blueberry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Bonsai = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Cactus = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Cinderpearl = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Cobalt Berry" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Copper Oreberry" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Cotton = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Duskberry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Ember Moss" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Essence Berry" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Eyebulb = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Flowering Vines" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Garlic = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Garnydinia = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Glint Weed" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Glowflower = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Glowing Earth Coral" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Glowshroom = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Gold Oreberry" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Goldfish Plant" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Grass = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Gray Stonelilly" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Green Glowshroom" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Huckelberry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Huckleberry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Iron Oreberry" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Ivy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Knightly Oreberry" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Magic Metal Berry" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Magical Nightshade" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Maloberry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Mana Bean" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Mandragora = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Moss = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Nether Stonelilly" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Papyrus = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Primordial Berry" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Purple Glowshroom" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Raspberry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Red Stonelilly" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Saguaro Cactus" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Shimmerleaf = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Skyberry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Snowbell = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Space Plant" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Spanish Moss" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Stingberry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Strawberry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Sugar Beet" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Thornvines = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Tin Oreberry" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Torchberry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Turnip = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Vines = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Waterlilly = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "White Stonelilly" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Wild Carrots" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Wolf's Bane" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Yellow Stonelilly" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        gain = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "All Crops" = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              "All crops" = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              "Primordial Berry" = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
              };
              "Primordial Berry groth time" = lib.mkOption {
                type = lib.types.int;
                default = 125000;
              };
              "Primordial Berry growth time" = lib.mkOption {
                type = lib.types.int;
                default = 125000;
              };
              "Tinker's Construct Berries" = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              "Tinker's Construct berries" = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
            };
          };
        };
        mods = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Biomes O' Plenty" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Natura = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Thaumcraft = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Tinker's Construct" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        system = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Bonsai Generation" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Boots Damage Chance" = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              Debug = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              ILoveScreaming = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Is Boots Protect" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Items = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Register Plantes to OreDict" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Register plants to OreDict" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "WiP Items" = lib.mkOption {
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
