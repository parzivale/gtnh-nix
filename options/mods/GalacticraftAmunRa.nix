{lib, ...}: {
  GalacticraftAmunRa = lib.mkOption {
    description = "GalacticraftAmunRa configuration (./config/GalacticraftAmunRa.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GalacticraftAmunRa.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        dimension_ids = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Anubis = lib.mkOption {
                type = lib.types.int;
                default = 92;
              };
              Horus = lib.mkOption {
                type = lib.types.int;
                default = 93;
              };
              Maahes = lib.mkOption {
                type = lib.types.int;
                default = 91;
              };
              Mehen = lib.mkOption {
                type = lib.types.int;
                default = 95;
              };
              Neper = lib.mkOption {
                type = lib.types.int;
                default = 90;
              };
              Seth = lib.mkOption {
                type = lib.types.int;
                default = 94;
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              default_tier = lib.mkOption {
                type = lib.types.int;
                default = 9;
                description = "Default tier for AmunRa planets and moons [range: 0 ~ 1000, default: 3]";
              };
              generateOres = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If ores should be generated on planets/moons [default: false]";
              };
              hydroponicsFactor = lib.mkOption {
                type = lib.types.str;
                default = "5.0";
                description = "Multiplier for the oxygen production of the hydroponics unit [range: 1.4E-45 ~ 3.4028235E38, default: 1.0]";
              };
            };
          };
        };
        motherships = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              bodiesNoOrbit = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "Bodies which should not be orbitable by motherships [default: ]";
              };
              maxMothershipTier = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Maximal tier which can be reached from a mothership. Motherships will pretty much ignore the tier system otherwise. [range: 1 ~ 2147483647, default: 10]";
              };
              maxMothershipTravelTime = lib.mkOption {
                type = lib.types.int;
                default = 24000;
                description = "Maximal travel time (in ticks) for a mothership. Destinations with a longer travel time are unreachable. 24000 = one Overworld day [range: 1 ~ 2147483647, default: 24000]";
              };
              mothershipFuelFactor = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "A factor to be multiplied onto the fuel usages of mothership engines. Higher values = higher fuel usage [range: 1.4E-45 ~ 3.4028235E38, default: 1.0]";
              };
              mothershipMass = lib.mkOption {
                type = lib.types.int;
                default = 1500;
                description = "If greater than zero, overrides the mothership's mass. If zero, the mass will be calculated based on the blocks used to build the mothership. [range: 0 ~ 2147483647, default: 0]";
              };
              mothershipProviderID = lib.mkOption {
                type = lib.types.int;
                default = -39;
                description = "ID for the Mothership World Provider [range: -2147483648 ~ 2147483647, default: -39]";
              };
              mothershipSpeedFactor = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "A factor to be multiplied onto the mothership speed. Higher values = faster motherships. [range: 1.4E-45 ~ 3.4028235E38, default: 1.0]";
              };
              numMothershipsPerPlayer = lib.mkOption {
                type = lib.types.int;
                default = -1;
                description = "Maximal amount of motherships one single player can have. Set to -1 to remove the restriction. [range: -1 ~ 1000, default: -1]";
              };
              validIonThrusterCoolant = lib.mkOption {
                type = lib.types.str;
                default = "xenon";
                description = "This fluid can be used by Ion Thrusters [default: liquidnitrogen]";
              };
              validJetEngineFuel = lib.mkOption {
                type = lib.types.str;
                default = "naquadah based liquid fuel mkii";
                description = "This fluid can be used by Jet Engines [default: fuel]";
              };
            };
          };
        };
        rendering = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              additionalSuns = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "tbn36b:0/0.1/1" "selpin:0/0.1/1" "tbn36a:1/0/0" "centaurib:1/0.7/0.8" "vega:0.8/0.8/1" "sirius:0.6/0.8/1" "siriusb:1/1/1" "dark:0.1/0.1/0.1" "kapteyn:0.70/0.1/0.1" "CentauriA:0.9411765/0.8627451/0.8627451" "Barnarda:1/0.5647059/0.19607843" "TCetiA:1/0.7607843/0.7058824" "Vega:0.5882353/0.8352941/1" ];
                description = "Additional bodies to render with a colored aura, or set the aura of a specific star. The bodies in here will be considered stars on motherships as well. Format: '<bodyName>:<r>/<g>/<b>' with the colors as floats between 0 and 1. Example: 'myPlanet:1/0.6/0.1' [default: [tbn36b:0/0.1/1], [selpin:0/0.1/1], [tbn36a:1/0/0], [centaurib:1/0.7/0.8], [vega:0.8/0.8/1], [sirius:0.6/0.8/1], [siriusb:1/1/1], [dark:0.1/0.1/0.1], [kapteyn:0.70/0.1/0.1]]";
              };
              asteroidBelts = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "okblekbelt" "saturnrings" "kuiperbelt" "BarnardaAsteroids" "TCetiAsteroids" "VegaAsteroids" "VegaAsteroids2" ];
                description = "Names of bodies to be considered asteroid belts. These values are automatically added to skyRenderExclude, so it is not necessary to add them to both. [default: [okblekbelt], [saturnrings]]";
              };
              mothershipStarLines = lib.mkOption {
                type = lib.types.int;
                default = 400;
                description = "Number of speed lines to display while in transit. A lower number might improve performance, while a higher might look nicer. [range: 0 ~ 2147483647, default: 400]";
              };
              numAsteroids = lib.mkOption {
                type = lib.types.int;
                default = 600;
                description = "Approximate number of asteroids drawn in the sky when 'orbiting' an asteroid belt. [range: 0 ~ 2147483647, default: 600]";
              };
              planetsWithRings = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "barnarda5:171:301:galaxyspace:textures/gui/celestialbodies/barnardaRings.png" "barnarda6:177:305:galaxyspace:textures/gui/celestialbodies/barnardaRings2.png" "appleapachia:8:20:extendedplanets:textures/gui/celestialbodies/appleapachiaRings.png" ];
                description = "Bodies to render with rings. The format is: <bodyName>:<gapStart>:<gapEnd>:<Mod_Asset_Prefix>:<textureName>. The 'gapStart' and 'gapEnd' is the number of pixels from the left or the top to the start of the gap for the planet and the end, respectively. Example: 'uranus:8:20:galacticraftcore:textures/gui/celestialbodies/uranusRings.png' [default: [barnarda5:171:301:galaxyspace:textures/gui/celestialbodies/barnardaRings.png], [barnarda6:177:305:galaxyspace:textures/gui/celestialbodies/barnardaRings2.png], [appleapachia:8:20:extendedplanets:textures/gui/celestialbodies/appleapachiaRings.png]]";
              };
              skyRenderExclude = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "Names of bodies to exclude from rendering in the sky, for reasons other than being asteroid belts [default: ]";
              };
            };
          };
        };
        schematics = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              shuttleGuiId = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "ID of the Shuttle schematics GUI, must be unique. 0-7 are used by Galacticraft already. [range: 8 ~ 2147483647, default: 8]";
              };
              shuttleSchematicsId = lib.mkOption {
                type = lib.types.int;
                default = 11;
                description = "ID of the Shuttle schematics, must be unique. 0-5 are used by Galacticraft already. [range: 6 ~ 2147483647, default: 11]";
              };
            };
          };
        };
        villages = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              UseAdvancedMachines = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, robot villages will have advanced solar collectors, storage clusters and heavy wires";
              };
            };
          };
        };
      };
    };
  };
}
