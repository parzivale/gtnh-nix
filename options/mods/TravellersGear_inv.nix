{lib, ...}: {
  TravellersGear_inv = lib.mkOption {
    description = "TravellersGear_inv configuration (./config/TravellersGear_inv.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TravellersGear_inv.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        invconfig = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amulet = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 43 12 ];
              };
              Amulet_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Armor = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 128 62 ];
              };
              Armor_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Attack Strength" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 166 62 ];
              };
              "Attack Strength_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Belt = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 97 48 ];
              };
              Belt_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Boots = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 25 84 ];
              };
              Boots_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Chestplate = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 25 48 ];
              };
              Chestplate_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Cloak = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 61 12 ];
              };
              Cloak_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Crafting output" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 175 84 ];
              };
              "Crafting output_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Crafting1 = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 139 74 ];
              };
              Crafting1_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Crafting2 = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 157 74 ];
              };
              Crafting2_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Crafting3 = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 139 92 ];
              };
              Crafting3_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Crafting4 = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 157 92 ];
              };
              Crafting4_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Experience = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 218 136 ];
              };
              Experience_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Health = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 128 50 ];
              };
              Health_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Helmet = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 25 30 ];
              };
              Helmet_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Hotbar 0" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 25 174 ];
              };
              "Hotbar 0_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Hotbar 1" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 43 174 ];
              };
              "Hotbar 1_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Hotbar 2" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 61 174 ];
              };
              "Hotbar 2_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Hotbar 3" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 79 174 ];
              };
              "Hotbar 3_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Hotbar 4" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 97 174 ];
              };
              "Hotbar 4_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Hotbar 5" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 121 174 ];
              };
              "Hotbar 5_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Hotbar 6" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 139 174 ];
              };
              "Hotbar 6_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Hotbar 7" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 157 174 ];
              };
              "Hotbar 7_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Hotbar 8" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 175 174 ];
              };
              "Hotbar 8_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 0" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 25 120 ];
              };
              "Inventory 0_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 1" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 43 120 ];
              };
              "Inventory 10" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 43 138 ];
              };
              "Inventory 10_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 11" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 61 138 ];
              };
              "Inventory 11_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 12" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 79 138 ];
              };
              "Inventory 12_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 13" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 97 138 ];
              };
              "Inventory 13_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 14" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 121 138 ];
              };
              "Inventory 14_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 15" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 139 138 ];
              };
              "Inventory 15_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 16" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 157 138 ];
              };
              "Inventory 16_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 17" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 175 138 ];
              };
              "Inventory 17_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 18" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 25 156 ];
              };
              "Inventory 18_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 19" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 43 156 ];
              };
              "Inventory 19_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 1_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 2" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 61 120 ];
              };
              "Inventory 20" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 61 156 ];
              };
              "Inventory 20_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 21" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 79 156 ];
              };
              "Inventory 21_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 22" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 97 156 ];
              };
              "Inventory 22_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 23" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 121 156 ];
              };
              "Inventory 23_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 24" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 139 156 ];
              };
              "Inventory 24_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 25" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 157 156 ];
              };
              "Inventory 25_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 26" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 175 156 ];
              };
              "Inventory 26_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 2_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 3" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 79 120 ];
              };
              "Inventory 3_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 4" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 97 120 ];
              };
              "Inventory 4_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 5" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 121 120 ];
              };
              "Inventory 5_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 6" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 139 120 ];
              };
              "Inventory 6_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 7" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 157 120 ];
              };
              "Inventory 7_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 8" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 175 120 ];
              };
              "Inventory 8_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Inventory 9" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 25 138 ];
              };
              "Inventory 9_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Leggings = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 25 66 ];
              };
              Leggings_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Name = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 128 12 ];
              };
              Name_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Pauldrons = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 97 30 ];
              };
              Pauldrons_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Player = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 43 30 ];
              };
              Player_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Potion Effects" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 0 22 ];
              };
              "Potion Effects_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ring 1" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 43 102 ];
              };
              "Ring 1_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ring 2" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 61 102 ];
              };
              "Ring 2_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Speed = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 166 50 ];
              };
              Speed_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              TEXTURE = lib.mkOption {
                type = lib.types.str;
                default = "travellersgear:textures/gui/inventory_book.png";
              };
              Tile = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 130 22 ];
              };
              Tile_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Tinkers Glove" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 97 102 ];
              };
              "Tinkers Glove_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Tinkers Heart Green" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 175 30 ];
              };
              "Tinkers Heart Green_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Tinkers Heart Red" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 139 30 ];
              };
              "Tinkers Heart Red_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Tinkers Heart Yellow" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 157 30 ];
              };
              "Tinkers Heart Yellow_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Tinkers Knapsack" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 97 12 ];
              };
              "Tinkers Knapsack_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Tinkers Mask" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 25 12 ];
              };
              "Tinkers Mask_isHidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Title = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 25 102 ];
              };
              Title_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Vambraces = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 97 66 ];
              };
              Vambraces_isHidden = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Vis Discounts" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 218 80 ];
              };
              "Vis Discounts_isHidden" = lib.mkOption {
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
