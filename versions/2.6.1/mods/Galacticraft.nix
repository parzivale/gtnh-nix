{lib, ...}: {
  core_conf = lib.mkOption {
    description = "core_conf configuration (./config/Galacticraft/core.conf)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/Galacticraft/core.conf";
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
              idAchievBase = lib.mkOption {
                type = lib.types.int;
                default = 1784;
                description = "Base Achievement ID. All achievement IDs will start at this number.";
              };
            };
          };
        };
        dimensions = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Dimensions where rockets cannot launch" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ (-1) 1 7 ];
                description = "IDs of dimensions where rockets should not launch - this should always include the Nether.";
              };
              "Disable rockets from returning to Overworld" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, rockets will be unable to reach the Overworld (only use this in special modpacks!)";
              };
              "Set new Space Stations to be static loaded" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to true to have an automatic /gckeeploaded for any new Space Station created.";
              };
              "Static Loaded Dimensions" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ ];
                description = "IDs to load at startup, and keep loaded until server stops. Can be added via /gckeeploaded";
              };
              "World border for landing location on other planets (Moon, Mars, etc)" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to 0 for no borders (default).  If set to e.g. 2000, players will land on the Moon inside the x,z range -2000 to 2000.)";
              };
              biomeIDBase = lib.mkOption {
                type = lib.types.int;
                default = 141;
                description = "Biome ID for Moon (Mars will be this + 1, Asteroids + 2 etc). Allowed range 40-250.";
              };
              idDimensionMoon = lib.mkOption {
                type = lib.types.int;
                default = 28;
                description = "Dimension ID for the Moon";
              };
              idDimensionOverworld = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Dimension ID for the Overworld (as seen in the Celestial Map)";
              };
              idDimensionOverworldOrbit = lib.mkOption {
                type = lib.types.int;
                default = 27;
                description = "WorldProvider ID for Overworld Space Stations (advanced: do not change unless you have conflicts)";
              };
              idDimensionOverworldOrbitStatic = lib.mkOption {
                type = lib.types.int;
                default = 26;
                description = "WorldProvider ID for Static Space Stations (advanced: do not change unless you have conflicts)";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable Debug Messages" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If this is enabled, debug messages will appear in the console. This is useful for finding bugs in the mod.";
              };
              "Force Overworld Spawn" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "By default, you will respawn on galacticraft dimensions if you die. If you set this to true, you will respawn back on earth.";
              };
              "More Stars" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Setting this to false will revert night skies back to default minecraft star count";
              };
              "Disable Spaceship Particles" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If you have FPS problems, setting this to true will help if rocket particles are in your sights";
              };
              "Disable Vehicle Third-Person and Zoom" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If you're using this mod in virtual reality, or if you don't want the camera changes when entering a Galacticraft vehicle, set this to true.";
              };
              "Minimap Left" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, this will move the Oxygen Indicator to the left side. You can combine this with \"Minimap Bottom\"";
              };
              "Minimap Bottom" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, this will move the Oxygen Indicator to the bottom. You can combine this with \"Minimap Left\"";
              };
              "Oil Generation Factor" = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
                description = "Increasing this will increase amount of oil that will generate in each chunk.";
              };
              "Oil gen in external dimensions" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 0 ];
                description = "List of non-galacticraft dimension IDs to generate oil in.";
              };
              "Retro Gen of GC Oil in existing map chunks" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If this is enabled, GC oil will be added to existing Overworld maps where possible.";
              };
              "Enable Copper Ore Gen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If this is enabled, copper ore will generate on the overworld.";
              };
              "Enable Tin Ore Gen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If this is enabled, tin ore will generate on the overworld.";
              };
              "Enable Aluminum Ore Gen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If this is enabled, aluminum ore will generate on the overworld.";
              };
              "Enable Silicon Ore Gen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If this is enabled, silicon ore will generate on the overworld.";
              };
              "Disable Cheese Ore Gen on Moon" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable Cheese Ore Gen on Moon.";
              };
              "Disable Tin Ore Gen on Moon" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable Tin Ore Gen on Moon.";
              };
              "Disable Copper Ore Gen on Moon" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable Copper Ore Gen on Moon.";
              };
              "Disable Moon Village Gen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If true, moon villages will not generate.";
              };
              "Generate all other mods features on planets" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If this is enabled, other mods' standard ores and all other features (eg. plants) can generate on the Moon and planets. Apart from looking wrong, this make cause 'Already Decorating!' type crashes.  NOT RECOMMENDED!  See Wiki.";
              };
              "Whitelist CoFHCore worldgen to generate its ores and lakes on planets" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If generate other mods features is disabled as recommended, this setting can whitelist CoFHCore custom worldgen on planets.";
              };
              "Generate ThaumCraft wild nodes on planetary surfaces" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If ThaumCraft is installed, ThaumCraft wild nodes can generate on the Moon and planets.";
              };
              "Other mods ores for GC to generate on the Moon and planets" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "Enter IDs of other mods' ores here for Galacticraft to generate them on the Moon and other planets. Format is BlockName or BlockName:metadata. Use optional parameters at end of each line: /RARE /UNCOMMON or /COMMON for rarity in a chunk; /DEEP /SHALLOW or /BOTH for height; /SINGLE /STANDARD or /LARGE for clump size; /XTRARANDOM for ores sometimes there sometimes not at all.  /ONLYMOON or /ONLYMARS if wanted on one planet only.  If nothing specified, defaults are /COMMON, /BOTH and /STANDARD.  Repeat lines to generate a huge quantity of ores.";
              };
              "Use legacy oilgc fluid registration" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to make Galacticraft oil register as oilgc, for backwards compatibility with previously generated worlds.";
              };
              "Use legacy fuelgc fluid registration" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to make Galacticraft fuel register as fuelgc, for backwards compatibility with previously generated worlds.";
              };
              "Disable lander on Moon and other planets" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If this is true, the player will parachute onto the Moon instead - use only in debug situations.";
              };
              "Disable Spaceship Explosion" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Spaceships will not explode on contact if set to true.";
              };
              "Space Stations Require Permission" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "While true, space stations require you to invite other players using /ssinvite <playername>";
              };
              "Disable Space Station creation" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If set to true on a server, players will be completely unable to create space stations.";
              };
              "Override Capes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "By default, Galacticraft will override capes with the mod's donor cape. Set to false to disable.";
              };
              "Space Station Solar Energy Multiplier" = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
                description = "Solar panels will work (default 2x) more effective on space stations.";
              };
              "External Sealable IDs" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "minecraft:glass_pane:0" "TConstruct:GlassBlock:0" "TConstruct:GlassPane:0" "IC2:blockAlloyGlass:0" "ProjRed|Illumination:projectred.illumination.lamp:*" "Ztones:tile.lairBlock:*" "Ztones:tile.bittBlock:*" "Ztones:tile.zechBlock:*" "Ztones:tile.agonBlock:*" "Ztones:tile.crayBlock:*" "Ztones:tile.venaBlock:*" "Ztones:tile.auroraBlock:*" "Ztones:tile.solsBlock:*" "Ztones:tile.mystBlock:*" "Ztones:tile.mintBlock:*" "Ztones:tile.vectBlock:*" "Ztones:tile.zomeBlock:*" "Ztones:tile.zionBlock:*" "Ztones:tile.zorgBlock:*" "Ztones:tile.tankBlock:*" "Ztones:tile.ztylBlock:*" "Ztones:tile.jeltBlock:*" "Ztones:tile.korpBlock:*" "Ztones:tile.krypBlock:*" "Ztones:tile.laveBlock:*" "Ztones:tile.zoneBlock:*" "Ztones:tile.fortBlock:*" "Ztones:tile.roenBlock:*" "Ztones:tile.redsBlock:*" "Ztones:tile.venaBlock:*" "Ztones:tile.iszmBlock:*" "Ztones:tile.zkulBlock:*" "Ztones:tile.glaxx:*" "Ztones:tile.reedBlock:*" "Ztones:tile.syncBlock:*" "Ztones:tile.azurBlock:*" "Ztones:tile.zestBlock:*" "Ztones:tile.zythBlock:*" "Ztones:tile.zaneBlock:*" "Ztones:tile.zoeaBlock:*" "Ztones:tile.zetaBlock:*" ];
                description = "List non-opaque blocks from other mods (for example, special types of glass) that the Oxygen Sealer should recognize as solid seals. Format is BlockName or BlockName:metadata";
              };
              "External Detectable IDs" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "minecraft:coal_ore" "minecraft:diamond_ore" "minecraft:gold_ore" "minecraft:iron_ore" "minecraft:lapis_ore" "minecraft:redstone_ore" "minecraft:lit_redstone_ore" ];
                description = "List blocks from other mods that the Sensor Glasses should recognize as solid blocks. Format is BlockName or BlockName:metadata.";
              };
              "Suffocation Cooldown" = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Lower/Raise this value to change time between suffocation damage ticks";
              };
              "Suffocation Damage" = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Change this value to modify the damage taken per suffocation tick";
              };
              "Dungeon Boss Health Modifier" = lib.mkOption {
                type = lib.types.float;
                default = 3.0;
                description = "Change this if you wish to balance the mod (if you have more powerful weapon mods).";
              };
              "Harder Difficulty" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to true for increased difficulty in modpacks (see forum for more info).";
              };
              "Quick Game Mode" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true for less metal use in Galacticraft recipes (makes the game easier).";
              };
              "Adventure Game Mode" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true for a challenging adventure where the player starts the game stranded in the Asteroids dimension with low resources (only effective if Galacticraft Planets installed).";
              };
              "Adventure Game Mode Flags" = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "Add together flags 8, 4, 2, 1 to enable the four elements of adventure game mode. Default 15.  1 = extended compressor recipes.  2 = mob drops and spawning.  4 = more trees in hollow asteroids.  8 = start stranded in Asteroids.";
              };
              "Enable Sealed edge checks" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If this is enabled, areas sealed by Oxygen Sealers will run a seal check when the player breaks or places a block (or on block updates).  This should be enabled for a 100% accurate sealed status, but can be disabled on servers for performance reasons.";
              };
              "Alternate recipe for canisters" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable this if the standard canister recipe causes a conflict.";
              };
              "OreDict name of other mod's silicon usable in Galacticraft" = lib.mkOption {
                type = lib.types.str;
                default = "itemSilicon";
                description = "This needs to match the OreDictionary name used in the other mod. Set a nonsense name to disable.";
              };
              "Must use GC's own space metals in recipes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should normally be true. If you set this to false, in a modpack with other mods with the same metals, players may be able to craft advanced GC items without travelling to Moon, Mars, Asteroids etc.";
              };
              "Open Galaxy Map" = lib.mkOption {
                type = lib.types.str;
                default = "KEY_M";
                description = "Leave 'KEY_' value, adding the intended keyboard character to replace the letter. Values 0-9 and A-Z are accepted";
              };
              "Open Fuel GUI" = lib.mkOption {
                type = lib.types.str;
                default = "KEY_F";
                description = "Leave 'KEY_' value, adding the intended keyboard character to replace the letter. Values 0-9 and A-Z are accepted";
              };
              "Toggle Advanced Goggles" = lib.mkOption {
                type = lib.types.str;
                default = "KEY_K";
                description = "Leave 'KEY_' value, adding the intended keyboard character to replace the letter. Values 0-9 and A-Z are accepted";
              };
              "Rocket fuel factor" = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "The normal factor is 1.  Increase this to 2 - 5 if other mods with a lot of oil (e.g. BuildCraft) are installed to increase GC rocket fuel requirement.";
              };
              "Map Scroll Mouse Sensitivity" = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "Increase to make the mouse drag scroll more sensitive, decrease to lower sensitivity.";
              };
              "Map Scroll Mouse Invert" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true to invert the mouse scroll feature on the galaxy map.";
              };
              "Meteor Spawn Modifier" = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "Set to a value between 0.0 and 1.0 to decrease meteor spawn chance (all dimensions).";
              };
              "Meteor Block Damage Enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to stop meteors from breaking blocks on contact.";
              };
              "Disable Update Check" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Update check will not run if this is set to true.";
              };
              "Disable Biome Type Registrations" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Biome Types will not be registered in the BiomeDictionary if this is set to true. Ignored (always true) for MC 1.7.2.";
              };
              "Enable Space Race Manager Popup" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Space Race Manager will show on-screen after login, if enabled.";
              };
              "Adventure Game Mode Asteroid Population" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Adventure Game Mode Mob Drops and Spawning" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Adventure Game Mode Recipes" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Adventure Game Mode Spawn Handling" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Force the use of Galacticraft's own Meteoric Iron, Desh, Titanium etc in recipes (not their OreDict equivalents)" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Always show Oxygen HUD" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Toggle this to always display the Oxygen HUD, if off it will only be shown on GC planets which require Oxygen.";
              };
            };
          };
        };
        schematic = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              idSchematicAddSchematic = lib.mkOption {
                type = lib.types.int;
                default = 2147483647;
                description = "Schematic ID for \"Add Schematic\" Page, must be unique";
              };
              idSchematicMoonBuggy = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Schematic ID for Moon Buggy, must be unique.";
              };
              idSchematicRocketT1 = lib.mkOption {
                type = lib.types.int;
                default = 0;
                description = "Schematic ID for Tier 1 Rocket, must be unique.";
              };
            };
          };
        };
      };
    };
  };
  planets_conf = lib.mkOption {
    description = "planets_conf configuration (./config/Galacticraft/planets.conf)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/Galacticraft/planets.conf";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        dimensions = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              dimensionIDAsteroids = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "Dimension ID for Asteroids";
              };
              dimensionIDMars = lib.mkOption {
                type = lib.types.int;
                default = 29;
                description = "Dimension ID for Mars";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              disableGalacticraftHelium = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Option to disable Helium gas in Galacticraft (because it will be registered by another mod eg GregTech).";
              };
              launchControllerAllDims = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "May rarely cause issues if enabled, depends on how the other mod's dimensions are.";
              };
              launchControllerChunkLoad = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether or not the launch controller acts as a chunk loader. Will cause issues if disabled!";
              };
              maximumAstroMiners = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Maximum number of Astro Miners each player is allowed to have active (default 4).";
              };
            };
          };
        };
        schematic = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              idSchematicCargoRocket = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Schematic ID for Cargo Rocket, must be unique.";
              };
              idSchematicRocketT2 = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "Schematic ID for Tier 2 Rocket, must be unique.";
              };
              idSchematicRocketT3 = lib.mkOption {
                type = lib.types.int;
                default = 4;
                description = "Schematic ID for Tier 3 Rocket, must be unique.";
              };
            };
          };
        };
        worldgen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Disable Iron Ore Gen on Mars" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable Iron Ore Gen on Mars.";
              };
              "Disable Copper Ore Gen on Mars" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable Copper Ore Gen on Mars.";
              };
              "Disable Tin Ore Gen on Mars" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable Tin Ore Gen on Mars.";
              };
              "Disable Desh Ore Gen on Mars" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Disable Desh Ore Gen on Mars.";
              };
              "Disable Iron Ore Gen on Asteroids" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable Iron Ore Gen on Asteroids.";
              };
              "Disable Aluminum Ore Gen on Asteroids" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable Aluminum Ore Gen on Asteroids.";
              };
              "Disable Ilmenite Ore Gen on Asteroids" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Disable Ilmenite Ore Gen on Asteroids.";
              };
            };
          };
        };
      };
    };
  };
  power-GC3_conf = lib.mkOption {
    description = "power-GC3_conf configuration (./config/Galacticraft/power-GC3.conf)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/Galacticraft/power-GC3.conf";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        compatibility = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "BuildCraft Conversion Ratio" = lib.mkOption {
                type = lib.types.float;
                default = 16.0;
              };
              "Disable INPUT of BuildCraft energy" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Disable INPUT of IC2 energy" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Disable INPUT of Mekanism energy" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Disable INPUT of RF energy" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Disable OUTPUT of BuildCraft energy" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable OUTPUT of IC2 energy" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable OUTPUT of Mekanism energy" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable OUTPUT of RF energy" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Disable old Buildcraft API (MJ) interfacing completely?" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "IndustrialCraft Conversion Ratio" = lib.mkOption {
                type = lib.types.float;
                default = 6.557376861572266;
              };
              "Loss factor when converting energy as a percentage (100 = no loss, 90 = 10% loss ...)" = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              "Mekanism Conversion Ratio" = lib.mkOption {
                type = lib.types.float;
                default = 0.6557376980781555;
              };
              "RF Conversion Ratio" = lib.mkOption {
                type = lib.types.float;
                default = 1.600000023841858;
              };
            };
          };
        };
        display = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "If BuildCraft is loaded, show Galacticraft machines energy as MJ instead of gJ?" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "If IndustrialCraft2 is loaded, show Galacticraft machines energy as EU instead of gJ?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "If Mekanism is loaded, show Galacticraft machines energy as Joules (J) instead of gJ?" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Show Galacticraft machines energy in RF instead of gJ?" = lib.mkOption {
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
