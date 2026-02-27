{lib, ...}: {
  BiblioCraft = lib.mkOption {
    description = "BiblioCraft configuration (./config/BiblioCraft.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BiblioCraft.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "blocks enabled" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Armorstand = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AtlasBook = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AtlasEternalCompass = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BigBook = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Bookcase = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Clipboard = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Clock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              CookieJar = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DeskBell = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DinnerPlate = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DiscRack = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              FancySign = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              FancyWorkbench = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              FramedChest = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              FurniturePaneler = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              HandDrill = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Lamp = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Lantern = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Lock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              MapFrame = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              PaintingFrames = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              PlumbLine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Potionshelf = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              PrintpressTypeMachine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Readingglasses = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Redstonebook = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ScrewGun = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Seat = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Shelf = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SlottedBook = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              StockroomCatalog = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SwordPedestal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Table = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Tapemeasure = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TesterItem = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Toolrack = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Typewriter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              WaypointCompass = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Weaponcase = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              WoodDesk = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              WoodLabel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        "custom enchantments" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              DeathCompassEnchant = lib.mkOption {
                type = lib.types.int;
                default = 197;
              };
              ReadingEnchant = lib.mkOption {
                type = lib.types.int;
                default = 196;
              };
            };
          };
        };
        defaultbigbooktextscale = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              general = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "This value will set the default text scale of text in the Big Book. Choose a positive integer between 0 and 7. 0 is the smallest scale and 7 is the largest scale. [range: 0 ~ 7, default: 0]";
              };
            };
          };
        };
        "force fast render" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Case = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              DinnerPlate = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              DiscRack = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              FancySign = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Label = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              PotionShelf = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Shelf = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Table = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              ToolRack = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              AdditionalDiscs = lib.mkOption {
                type = lib.types.str;
                default = "disc, disk";
                description = "These are keywords that add additional support for more types of discs and items that are allowed to be placed on the disc rack. Add more keywords if you wish to allow more types of items to be displayed";
              };
              AdditionalPotions = lib.mkOption {
                type = lib.types.str;
                default = "essence, mead, bottle, test, element, molecule, can, capsule, cell, catalyst, ambrosia, honey pot, dissipation, vial, juice";
                description = "These are keywords that add additional support for more types of potions and items. Add more keyworks if you wish to allow more types of items to be displayed.";
              };
              AdditionalTools = lib.mkOption {
                type = lib.types.str;
                default = "sprayer, wand, rod, scepter, wrench, screwdriver, meter, handsaw, gun, cutter, scoop, soldering, painter, reader, shovel, grafter, pickaxe, pipette, magnifying, sword, axe, hammer";
                description = "These are the names of additional tools that can be added to the Tool Rack. Added keywords will allow additional items to be placed on this block.";
              };
              AllowEmptyBooks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should blank books be allowed on Bookcases? (true or false)";
              };
              AllowedBooks = lib.mkOption {
                type = lib.types.str;
                default = "book, map, journal, plan, thaumonomicon, necronomicon, lexicon, print, notes, spell, library, tome, encyclopedia";
                description = "These are the keywords that are compared against the item names to determine if the item can be placed on a Bookcase. Add more keywords if needed.";
              };
              ChairRedstone = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Setting this to false will deactivate the redstone signal output from seats when a player is sitting";
              };
              CheckForUpdates = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Setting this to false will permanently disable update checking";
              };
              DisableRenderers = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Setting this to true will disable all renderers. This will allow a world to be loaded and a problem item removed from a BiblioCraft block in case of a rendering related crash.";
              };
              EnableCraftingWithRecipieBooks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "This option enables crafting to be done inside a recipe book with no workbench.";
              };
              EnableLightEmission = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Setting this to false will disable light emission from the Shelf, Label, Display Case and Table when a block that gives off light is placed on them.";
              };
              EnableLockAndKeyRecipe = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EnablePublicTypesettingBooks = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "This option forces all new books added to the typesetting table to be public";
              };
              EnchantmentCostMultiplyer = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "This will multiply the cost of copying enchanted books on the typesetting table. Please enter a positive integer value. Default is 10. Setting this to 1 would make the enchatment cost 1/10 the level default cost.";
              };
              MapUpdateRate = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Default is 1 update per 10 ticks, just like Item Frames. The number indicates how many ticks before an update packet is sent to clients. Lower numbers means more, faster updates.";
              };
              MaxEnchantedPlateUses = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "This will set the max number of uses an Enchanted Plate has before breaking. Default is 3.";
              };
              PaintingRenderDistance = lib.mkOption {
                type = lib.types.str;
                default = "64.0";
                description = "This will adjust the maximium render distance at which paintings can be seen. The default is 64.0 blocks.";
              };
              RenderTextShadow = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Setting to true renders a shadow behind the text seen with the reading glasses. This can improve visability quite a bit, but sometimes doesn't render correctly. Try at your own discretion.";
              };
              UseTextureSheets = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If this is set to true, various models will use their own dedicated texture sheet, otherwise, models will use textures from vanilla planks. Supports Bookcase, Potion Shelf, Generic Shelf, Tool Rack, Display Case, and Label.";
              };
            };
          };
        };
        "stored variables" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              lastVersionChecked = lib.mkOption {
                type = lib.types.str;
                default = "2.0.1";
              };
            };
          };
        };
        "text colors" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ReadingGlassesTextColor = lib.mkOption {
                type = lib.types.int;
                default = 16777215;
              };
            };
          };
        };
      };
    };
  };
}
