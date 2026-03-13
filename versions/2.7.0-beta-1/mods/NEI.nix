{lib, ...}: {
  client_cfg = lib.mkOption {
    description = "client_cfg configuration (./config/NEI/client.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/NEI/client.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        checkUpdates = lib.mkOption {
          type = lib.types.str;
          default = "false";
        };
        "inventory.bookmarksEnabled" = lib.mkOption {
          type = lib.types.str;
          default = "true";
          description = "Enable/disable bookmarks";
        };
        "inventory.cheatmode" = lib.mkOption {
          type = lib.types.str;
          default = "2";
        };
        "inventory.creative_tab_style" = lib.mkOption {
          type = lib.types.str;
          default = "false";
          description = "Creative or JEI style tabs";
        };
        "inventory.disableMouseScrollTransfer" = lib.mkOption {
          type = lib.types.str;
          default = "true";
        };
        "inventory.gamemodes" = lib.mkOption {
          type = lib.types.str;
          default = "creative, creative+, adventure";
        };
        "inventory.hidden" = lib.mkOption {
          type = lib.types.str;
          default = "false";
        };
        "inventory.invertMouseScrollTransfer" = lib.mkOption {
          type = lib.types.str;
          default = "false";
        };
        "inventory.itemIDs" = lib.mkOption {
          type = lib.types.str;
          default = "0";
        };
        "inventory.itemsort" = lib.mkOption {
          type = lib.types.str;
          default = "nei.itemsort.minecraft,nei.itemsort.mod,nei.itemsort.id,nei.itemsort.default,nei.itemsort.damage,nei.itemsort.name";
        };
        "inventory.jei_style_item_presence_overlay" = lib.mkOption {
          type = lib.types.str;
          default = "true";
          description = "Enable/disable JEI Style item presence overlay on ?-hover";
        };
        "inventory.jei_style_recipe_catalyst" = lib.mkOption {
          type = lib.types.str;
          default = "true";
          description = "Enable/disable JEI Style Recipe Catalysts";
        };
        "inventory.jei_style_tabs" = lib.mkOption {
          type = lib.types.str;
          default = "true";
          description = "Enable/disable JEI Style Tabs";
        };
        "inventory.lockmode" = lib.mkOption {
          type = lib.types.str;
          default = "-1";
          description = "For those who can't help themselves. Set this to a mode and you will be unable to change it ingame";
        };
        "inventory.profileRecipes" = lib.mkOption {
          type = lib.types.str;
          default = "false";
        };
        "inventory.saveCurrentRecipeInBookmarksEnabled" = lib.mkOption {
          type = lib.types.str;
          default = "true";
          description = "Save Current Recipe in Bookmarks";
        };
        "inventory.searchmode" = lib.mkOption {
          type = lib.types.str;
          default = "1";
        };
        "inventory.useNBTInBookmarks" = lib.mkOption {
          type = lib.types.str;
          default = "true";
          description = "Use NBT in Bookmarks";
        };
        "inventory.utilities" = lib.mkOption {
          type = lib.types.str;
          default = "delete, magnet";
        };
        "inventory.widgetsenabled" = lib.mkOption {
          type = lib.types.str;
          default = "true";
        };
        "inventory.worldSpecificBookmarks" = lib.mkOption {
          type = lib.types.str;
          default = "false";
          description = "Global or world specific bookmarks";
        };
        itemLoadingTimeout = lib.mkOption {
          type = lib.types.str;
          default = "500";
        };
        "keys.gui.back" = lib.mkOption {
          type = lib.types.str;
          default = "14";
        };
        "keys.gui.bookmark" = lib.mkOption {
          type = lib.types.str;
          default = "30";
        };
        "keys.gui.enchant" = lib.mkOption {
          type = lib.types.str;
          default = "45";
        };
        "keys.gui.findit" = lib.mkOption {
          type = lib.types.str;
          default = "21";
        };
        "keys.gui.hide" = lib.mkOption {
          type = lib.types.str;
          default = "24";
        };
        "keys.gui.hide_bookmarks" = lib.mkOption {
          type = lib.types.str;
          default = "48";
        };
        "keys.gui.next" = lib.mkOption {
          type = lib.types.str;
          default = "209";
        };
        "keys.gui.next_machine" = lib.mkOption {
          type = lib.types.str;
          default = "208";
        };
        "keys.gui.next_recipe" = lib.mkOption {
          type = lib.types.str;
          default = "205";
        };
        "keys.gui.potion" = lib.mkOption {
          type = lib.types.str;
          default = "25";
        };
        "keys.gui.prev" = lib.mkOption {
          type = lib.types.str;
          default = "201";
        };
        "keys.gui.prev_machine" = lib.mkOption {
          type = lib.types.str;
          default = "200";
        };
        "keys.gui.prev_recipe" = lib.mkOption {
          type = lib.types.str;
          default = "203";
        };
        "keys.gui.recipe" = lib.mkOption {
          type = lib.types.str;
          default = "19";
        };
        "keys.gui.search" = lib.mkOption {
          type = lib.types.str;
          default = "33";
        };
        "keys.gui.usage" = lib.mkOption {
          type = lib.types.str;
          default = "22";
        };
        "keys.showenchant" = lib.mkOption {
          type = lib.types.str;
          default = "23";
        };
        "keys.world.chunkoverlay" = lib.mkOption {
          type = lib.types.str;
          default = "67";
        };
        "keys.world.creative" = lib.mkOption {
          type = lib.types.str;
          default = "0";
        };
        "keys.world.dawn" = lib.mkOption {
          type = lib.types.str;
          default = "0";
        };
        "keys.world.dusk" = lib.mkOption {
          type = lib.types.str;
          default = "0";
        };
        "keys.world.heal" = lib.mkOption {
          type = lib.types.str;
          default = "0";
        };
        "keys.world.highlight_tips" = lib.mkOption {
          type = lib.types.str;
          default = "0";
        };
        "keys.world.midnight" = lib.mkOption {
          type = lib.types.str;
          default = "0";
        };
        "keys.world.moboverlay" = lib.mkOption {
          type = lib.types.str;
          default = "65";
        };
        "keys.world.noon" = lib.mkOption {
          type = lib.types.str;
          default = "0";
        };
        "keys.world.rain" = lib.mkOption {
          type = lib.types.str;
          default = "0";
        };
        "tools.catalyst_load_from_config" = lib.mkOption {
          type = lib.types.str;
          default = "false";
          description = "ADVANCED: Load catalysts from config";
        };
        "tools.handler_load_from_config" = lib.mkOption {
          type = lib.types.str;
          default = "false";
          description = "ADVANCED: Load handlers from config";
        };
        "world.highlight_tips" = lib.mkOption {
          type = lib.types.str;
          default = "false";
        };
        "world.highlight_tips.x" = lib.mkOption {
          type = lib.types.str;
          default = "5000";
        };
        "world.highlight_tips.y" = lib.mkOption {
          type = lib.types.str;
          default = "100";
        };
        command = lib.mkOption {
          default = {};
          description = "Change these options if you have a different mod installed on the server that handles the commands differently, Eg. Bukkit Essentials";
          type = lib.types.submodule {
            options = {
              creative = lib.mkOption {
                type = lib.types.str;
                default = "/gamemode {0} {1}";
              };
              heal = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              item = lib.mkOption {
                type = lib.types.str;
                default = "/give {0} {1} {2} {3} {4}";
              };
              rain = lib.mkOption {
                type = lib.types.str;
                default = "/toggledownfall";
              };
              time = lib.mkOption {
                type = lib.types.str;
                default = "/time set {0}";
              };
            };
          };
        };
      };
    };
  };
  collapsibleitems_cfg = lib.mkOption {
    description = "collapsibleitems_cfg configuration (./config/NEI/collapsibleitems.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/NEI/collapsibleitems.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
      };
    };
  };
  heighthackhandlers_cfg = lib.mkOption {
    description = "heighthackhandlers_cfg configuration (./config/NEI/heighthackhandlers.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/NEI/heighthackhandlers.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
      };
    };
  };
  hiddenitems_cfg = lib.mkOption {
    description = "hiddenitems_cfg configuration (./config/NEI/hiddenitems.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/NEI/hiddenitems.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
      };
    };
  };
  serialhandlers_cfg = lib.mkOption {
    description = "serialhandlers_cfg configuration (./config/NEI/serialhandlers.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/NEI/serialhandlers.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
      };
    };
  };
}
