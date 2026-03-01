{lib, ...}: {
  AdvancedSolarPanel_MTRecipes = lib.mkOption {
    description = "AdvancedSolarPanel_MTRecipes configuration (./config/AdvancedSolarPanel_MTRecipes.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/AdvancedSolarPanel_MTRecipes.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        version = lib.mkOption {
          type = lib.types.str;
          default = "1.0";
          description = "AdvancedSolarPanels Molecular Transformer Recipes                       # Format of recipe: \"inputItem:stackSize;outputItem:outputStackSize;energy\"                      # InputItem (outputItem) format:                                                                 # \"oredict:forgeOreDictName\" or \"minecraft:item_name-meta\" or \"modID:item_name-meta\"             # New line = new recipe.                                                                         # Add \"#\" before line to skip parsing recipe                                                     #";
        };
      };
    };
  };
}
