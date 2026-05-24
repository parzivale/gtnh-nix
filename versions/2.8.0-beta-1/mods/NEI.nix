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
        type = lib.types.bool;
        default = false;
      };
      command = lib.mkOption {
        default = {};
        description = "Change these options if you have a different mod installed on the server that handles the commands differently, Eg. Bukkit Essentials";
        type = lib.types.submodule {
          options = {
          creative = lib.mkOption {
            type = lib.types.str;
            default = "gamemode {0} {1}";
          };
          heal = lib.mkOption {
            type = lib.types.str;
            default = "";
          };
          item = lib.mkOption {
            type = lib.types.str;
            default = "give {0} {1} {2} {3} {4}";
          };
          rain = lib.mkOption {
            type = lib.types.str;
            default = "toggledownfall";
          };
          time = lib.mkOption {
            type = lib.types.str;
            default = "time set {0}";
          };
          };
        };
      };
      "inventory.autocrafting" = lib.mkOption {
        type = lib.types.bool;
        default = true;
      };
      "inventory.bookmarks" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          animation = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "REI Style Animation in Bookmarks";
          };
          enabled = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Bookmark Panel";
          };
          ignorePotionOverlap = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Ignore overlap with potion effect HUD";
          };
          recipeChainDir = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          recipeTooltipsMode = lib.mkOption {
            type = lib.types.int;
            default = 1;
            description = "Show recipe tooltips in Bookmarks";
          };
          showRecipeMarkerMode = lib.mkOption {
            type = lib.types.int;
            default = 0;
            description = "Show Recipe Marker";
          };
          worldSpecific = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Global or world specific bookmarks";
          };
          };
        };
      };
      "inventory.cheatmode" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "inventory.collapsibleItems" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          collapsedColor = lib.mkOption {
            type = lib.types.str;
            default = "0x335555ee";
            description = "Color of the collapsible item collapsed state";
          };
          customName = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enabled = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          expandedColor = lib.mkOption {
            type = lib.types.str;
            default = "0x335555ee";
            description = "Color of the collapsible item expanded state";
          };
          };
        };
      };
      "inventory.disableMouseScrollTransfer" = lib.mkOption {
        type = lib.types.bool;
        default = false;
      };
      "inventory.favorites" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          depth = lib.mkOption {
            type = lib.types.int;
            default = 3;
            description = "Bookmark creation depth";
          };
          enabled = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          showRecipeTooltip = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Show recipe tooltips in Items Panel";
          };
          worldSpecific = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Global or world specific favorites";
          };
          };
        };
      };
      "inventory.gamemodes" = lib.mkOption {
        type = lib.types.str;
        default = "creative, creative+, adventure";
      };
      "inventory.gridRenderingCacheFPS" = lib.mkOption {
        type = lib.types.int;
        default = 8;
      };
      "inventory.gridRenderingCacheMode" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "inventory.guirecipe" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          creativeTabStyle = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Creative or JEI style tabs";
          };
          cycledIngredientsTooltip = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Show cycled ingredients tooltip";
          };
          itemPresenceOverlay = lib.mkOption {
            type = lib.types.int;
            default = 1;
            description = "Item presence overlay on ?-hover";
          };
          jeiStyleCycledIngredients = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "JEI styled cycled ingredients";
          };
          jeiStyleRecipeCatalyst = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/disable JEI Style Recipe Catalysts";
          };
          jeiStyleTabs = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/disable JEI Style Tabs";
          };
          profile = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          shiftOverlayRecipe = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Require holding shift to move items when overlaying recipe";
          };
          slotHighlightPresent = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Highlight Present Item";
          };
          };
        };
      };
      "inventory.hidden" = lib.mkOption {
        type = lib.types.bool;
        default = false;
      };
      "inventory.history" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          enabled = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/disable History Panel";
          };
          historyColor = lib.mkOption {
            type = lib.types.str;
            default = "0xee555555";
            description = "Color of the history area display";
          };
          splittingMode = lib.mkOption {
            type = lib.types.int;
            default = 1;
          };
          useRows = lib.mkOption {
            type = lib.types.int;
            default = 2;
            description = "Rows used in historical areas";
          };
          };
        };
      };
      "inventory.hotkeysHelpText" = lib.mkOption {
        type = lib.types.bool;
        default = true;
      };
      "inventory.invertMouseScrollTransfer" = lib.mkOption {
        type = lib.types.bool;
        default = false;
      };
      "inventory.itemIDs" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "inventory.itempanelScale" = lib.mkOption {
        type = lib.types.int;
        default = 100;
      };
      "inventory.itemsort" = lib.mkOption {
        type = lib.types.str;
        default = "nei.itemsort.minecraft,nei.itemsort.mod,nei.itemsort.id,nei.itemsort.default,nei.itemsort.damage,nei.itemsort.name";
      };
      "inventory.itemzoom" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          enabled = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          helpText = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Display name \"Item Zoom\" and the hotkey to toggle this mod below the zoomed item.";
          };
          nameColor = lib.mkOption {
            type = lib.types.str;
            default = "0xffffffff";
          };
          neiOnly = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Zoom items only from the JEI ingredient and bookmark list overlays.";
          };
          onlySolid = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          showName = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          zoom = lib.mkOption {
            type = lib.types.int;
            default = 500;
          };
          };
        };
      };
      "inventory.lockmode" = lib.mkOption {
        type = lib.types.int;
        default = -1;
        description = "For those who can't help themselves.
Set this to a mode and you will be unable to change it ingame";
      };
      "inventory.optimize_gui_overlap_computation" = lib.mkOption {
        type = lib.types.bool;
        default = false;
        description = "Optimize computation for GUI overlap";
      };
      "inventory.oredict" = lib.mkOption {
        type = lib.types.bool;
        default = false;
      };
      "inventory.search" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          format = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Search Format (true: old format, false: custom format)";
          };
          hideUntilSearching = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Hide Items Until Searching";
          };
          identifierSearchMode = lib.mkOption {
            type = lib.types.int;
            default = 0;
            description = "Search mode for identifier (prefix: &)";
          };
          modNameSearchMode = lib.mkOption {
            type = lib.types.int;
            default = 1;
            description = "Search mode for Mod Names (prefix: @)";
          };
          oreDictSearchMode = lib.mkOption {
            type = lib.types.int;
            default = 0;
            description = "Search mode for Tag Names (prefix: $)";
          };
          patternMode = lib.mkOption {
            type = lib.types.int;
            default = 1;
            description = "Search Mode";
          };
          prefixRedefinitions = lib.mkOption {
            type = lib.types.str;
            default = "{}";
            description = "Redefine search prefixes by providing a char-to-char map (JSON). The keys are the original prefixes, the values the new ones. Example: { \"$\": \"€\", \"#\": \"+\", \"@\": \"°\", \"%\": \"!\" }";
          };
          quoteDropItemName = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Quote Drop Item Name";
          };
          spaceMode = lib.mkOption {
            type = lib.types.int;
            default = 0;
            description = "Search Space Rules";
          };
          subsetsSearchMode = lib.mkOption {
            type = lib.types.int;
            default = 1;
            description = "Search mode for Item Subsets (prefix: %)";
          };
          tooltipSearchMode = lib.mkOption {
            type = lib.types.int;
            default = 0;
            description = "Search mode for Tooltips (prefix: #)";
          };
          widgetAutofocus = lib.mkOption {
            type = lib.types.int;
            default = 0;
            description = "Focus Search Widget on Open, blurs/unfocuses on mouse move unless typing has started first";
          };
          widgetPosition = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Widget Position";
          };
          };
        };
      };
      "inventory.showItemQuantityWidget" = lib.mkOption {
        type = lib.types.bool;
        default = true;
        description = "Show Item Quantity Widget";
      };
      "inventory.subsets" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          enabled = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/disable Subsets Dropdown";
          };
          widgetPosition = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Subsets Widget Position";
          };
          };
        };
      };
      "inventory.utilities" = lib.mkOption {
        type = lib.types.str;
        default = "delete, magnet";
      };
      "inventory.widgetsenabled" = lib.mkOption {
        type = lib.types.bool;
        default = true;
      };
      itemLoadingTimeout = lib.mkOption {
        type = lib.types.int;
        default = 500;
      };
      "keys.gui.back" = lib.mkOption {
        type = lib.types.int;
        default = 14;
      };
      "keys.gui.bookmark" = lib.mkOption {
        type = lib.types.int;
        default = 30;
      };
      "keys.gui.bookmark_pull_items" = lib.mkOption {
        type = lib.types.int;
        default = 47;
      };
      "keys.gui.botania_corporea_request" = lib.mkOption {
        type = lib.types.int;
        default = 46;
      };
      "keys.gui.copy_name" = lib.mkOption {
        type = lib.types.int;
        default = 33554478;
      };
      "keys.gui.copy_oredict" = lib.mkOption {
        type = lib.types.int;
        default = 33554464;
      };
      "keys.gui.craft" = lib.mkOption {
        type = lib.types.int;
        default = 67108910;
      };
      "keys.gui.enchant" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "keys.gui.findit" = lib.mkOption {
        type = lib.types.int;
        default = 21;
      };
      "keys.gui.findit.find_block" = lib.mkOption {
        type = lib.types.int;
        default = 21;
      };
      "keys.gui.getnextsearch" = lib.mkOption {
        type = lib.types.int;
        default = 208;
      };
      "keys.gui.getprevioussearch" = lib.mkOption {
        type = lib.types.int;
        default = 200;
      };
      "keys.gui.hide" = lib.mkOption {
        type = lib.types.int;
        default = 24;
      };
      "keys.gui.hide_bookmarks" = lib.mkOption {
        type = lib.types.int;
        default = 48;
      };
      "keys.gui.itemzoom_hold" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "keys.gui.itemzoom_toggle" = lib.mkOption {
        type = lib.types.int;
        default = 67108908;
      };
      "keys.gui.itemzoom_zoom_in" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "keys.gui.itemzoom_zoom_out" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "keys.gui.next" = lib.mkOption {
        type = lib.types.int;
        default = 209;
      };
      "keys.gui.next_machine" = lib.mkOption {
        type = lib.types.int;
        default = 208;
      };
      "keys.gui.next_recipe" = lib.mkOption {
        type = lib.types.int;
        default = 205;
      };
      "keys.gui.next_tooltip" = lib.mkOption {
        type = lib.types.int;
        default = 44;
      };
      "keys.gui.overlay" = lib.mkOption {
        type = lib.types.int;
        default = 31;
      };
      "keys.gui.potion" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "keys.gui.prev" = lib.mkOption {
        type = lib.types.int;
        default = 201;
      };
      "keys.gui.prev_machine" = lib.mkOption {
        type = lib.types.int;
        default = 200;
      };
      "keys.gui.prev_recipe" = lib.mkOption {
        type = lib.types.int;
        default = 203;
      };
      "keys.gui.recipe" = lib.mkOption {
        type = lib.types.int;
        default = 19;
      };
      "keys.gui.remove_recipe" = lib.mkOption {
        type = lib.types.int;
        default = 67108894;
      };
      "keys.gui.search" = lib.mkOption {
        type = lib.types.int;
        default = 33;
      };
      "keys.gui.tinkers_belt" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "keys.gui.usage" = lib.mkOption {
        type = lib.types.int;
        default = 22;
      };
      "keys.gui.xu_ping" = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
      "keys.nee.count" = lib.mkOption {
        type = lib.types.int;
        default = 29;
      };
      "keys.nee.ingredient" = lib.mkOption {
        type = lib.types.int;
        default = 42;
      };
      "keys.nee.nopreview" = lib.mkOption {
        type = lib.types.int;
        default = 56;
      };
      "keys.nee.preview" = lib.mkOption {
        type = lib.types.int;
        default = 29;
      };
      "keys.showenchant" = lib.mkOption {
        type = lib.types.int;
        default = 23;
      };
      "keys.world.chunkoverlay" = lib.mkOption {
        type = lib.types.int;
        default = 67;
      };
      "keys.world.creative" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "keys.world.dawn" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "keys.world.dusk" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "keys.world.heal" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "keys.world.highlight_tips" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "keys.world.midnight" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "keys.world.moboverlay" = lib.mkOption {
        type = lib.types.int;
        default = 65;
      };
      "keys.world.noon" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "keys.world.rain" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      loadPluginsInParallel = lib.mkOption {
        type = lib.types.bool;
        default = true;
      };
      "tools.catalyst_load_from_config" = lib.mkOption {
        type = lib.types.bool;
        default = false;
        description = "ADVANCED: Load catalysts from config";
      };
      "tools.handler_load_from_config" = lib.mkOption {
        type = lib.types.bool;
        default = false;
        description = "ADVANCED: Load handlers from config";
      };
      "world.highlight_tips" = lib.mkOption {
        type = lib.types.bool;
        default = false;
      };
      "world.highlight_tips.x" = lib.mkOption {
        type = lib.types.int;
        default = 5000;
      };
      "world.highlight_tips.y" = lib.mkOption {
        type = lib.types.int;
        default = 100;
      };
      "world.overlays.lock" = lib.mkOption {
        type = lib.types.bool;
        default = true;
      };
      "world.panels.bookmarks.bottom" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "world.panels.bookmarks.left" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "world.panels.bookmarks.right" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "world.panels.bookmarks.top" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "world.panels.items.bottom" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "world.panels.items.left" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "world.panels.items.right" = lib.mkOption {
        type = lib.types.int;
        default = 0;
      };
      "world.panels.items.top" = lib.mkOption {
        type = lib.types.int;
        default = 0;
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
