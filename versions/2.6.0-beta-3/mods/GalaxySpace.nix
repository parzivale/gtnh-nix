{lib, ...}: {
  biomes_conf = lib.mkOption {
    description = "biomes_conf configuration (./config/GalaxySpace/biomes.conf)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GalaxySpace/biomes.conf";
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
              IDBarnardaCBiomeFlowers = lib.mkOption {
                type = lib.types.int;
                default = 238;
                description = "ID Biome for Barnarda C (Flowers)";
              };
              IDBarnardaCBiomeHills = lib.mkOption {
                type = lib.types.int;
                default = 221;
                description = "ID Biome for Barnarda C (Hills)";
              };
              IDBarnardaCBiomeLowPlains = lib.mkOption {
                type = lib.types.int;
                default = 222;
                description = "ID Biome for Barnarda C (Low Plains)";
              };
              IDBarnardaCBiomeOceans = lib.mkOption {
                type = lib.types.int;
                default = 239;
                description = "ID Biome for Barnarda C (Oceans)";
              };
              IDBarnardaCBiomeShores = lib.mkOption {
                type = lib.types.int;
                default = 220;
                description = "ID Biome for Barnarda C (Shores)";
              };
              IDIoAshBiome = lib.mkOption {
                type = lib.types.int;
                default = 217;
                description = "ID Ash Biome for Io (Jupiter moon)";
              };
              IDIoBiome = lib.mkOption {
                type = lib.types.int;
                default = 215;
                description = "ID Biome for Io (Jupiter moon)";
              };
              IDKuiperBeltBiome = lib.mkOption {
                type = lib.types.int;
                default = 212;
                description = "ID Biome for Kuiper Belt";
              };
              IDPlutoBiome1 = lib.mkOption {
                type = lib.types.int;
                default = 204;
                description = "ID Biome for Pluto (1)";
              };
              IDPlutoBiome2 = lib.mkOption {
                type = lib.types.int;
                default = 206;
                description = "ID Biome for Pluto (2)";
              };
              IDPlutoBiome3 = lib.mkOption {
                type = lib.types.int;
                default = 208;
                description = "ID Biome for Pluto (3)";
              };
              IDPlutoBiome4 = lib.mkOption {
                type = lib.types.int;
                default = 210;
                description = "ID Biome for Pluto (4)";
              };
              IDTitanBiome = lib.mkOption {
                type = lib.types.int;
                default = 219;
                description = "ID Biome for Titan (Saturn moon)";
              };
              IDVenusBiome = lib.mkOption {
                type = lib.types.int;
                default = 203;
                description = "ID Biome for Venus";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              IDSpaceBiome = lib.mkOption {
                type = lib.types.int;
                default = 201;
                description = "Global ID Biome for Planets/Moons";
              };
            };
          };
        };
      };
    };
  };
  core_conf = lib.mkOption {
    description = "core_conf configuration (./config/GalaxySpace/core.conf)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GalaxySpace/core.conf";
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
              enableACentauri = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable aCentauri System.";
              };
              enableBarnarda = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Barnarda System.";
              };
              enableFogVenus = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Fog on Venus.";
              };
              enableMethaneParticle = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Methane Particles.";
              };
              enableTCeti = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable tCeti System.";
              };
              enableVega = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Vega System.";
              };
              spaceStationStarBrightness = lib.mkOption {
                type = lib.types.float;
                default = 0.8;
                description = "How bright stars are rendered on skyboxes of space stations.";
              };
            };
          };
        };
        dysonswarm = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              coolantConsumption = lib.mkOption {
                type = lib.types.int;
                default = 3600000;
                description = "How much coolant is consumed per hour.";
              };
              coolantFluid = lib.mkOption {
                type = lib.types.str;
                default = "cryotheum";
                description = "Name of the coolant";
              };
              destroyModuleBase_chance = lib.mkOption {
                type = lib.types.float;
                default = 0.066;
                description = "Each hour, n of m modules are destroyed according to this formula: n = (2 * base_chance) / (exp(-a * (m - 1))+exp(b * cps)), where cps is computation per second. This sets the parameter base_chance.";
              };
              destroyModuleMaxCPS = lib.mkOption {
                type = lib.types.float;
                default = 100000.0;
                description = "The maximum computation per second that will help prevent modules from collision";
              };
              destroyModule_a = lib.mkOption {
                type = lib.types.float;
                default = 0.00005;
                description = "Each hour, n of m modules are destroyed according to this formula: n = (2 * base_chance) / (exp(-a * (m - 1))+exp(b * cps)), where cps is computation per second. This sets the parameter a.";
              };
              destroyModule_b = lib.mkOption {
                type = lib.types.float;
                default = 0.00003;
                description = "Each hour, n of m modules are destroyed according to this formula: n = (2 * base_chance) / (exp(-a * (m - 1))+exp(b * cps)), where cps is computation per second. This sets the parameter b.";
              };
              euPerModule = lib.mkOption {
                type = lib.types.int;
                default = 10000000;
                description = "How much EU the Dyson Swarm Command Center produces per module per tick. Default is 10,000,000 EU/t";
              };
              maxModules = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "The maximum number of modules the dyson swarm can take";
              };
              powerFactorDefault = lib.mkOption {
                type = lib.types.float;
                default = 0.0;
                description = "If a power factor for a dimensions is not set, this value will be used.";
              };
              powerFactors = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "0:1.0" "25:0.15" "28:1.0" "29:0.81" "30:0.61" "31:2.28" "32:2.31" "33:0.16" "35:0.44" "36:0.44" "37:1.61" "38:0.81" "39:1.76" "40:0.81" "41:0.32" "42:0.6" "43:0.44" "44:0.32" "45:0.32" "46:0.23" "47:0.23" "48:0.18" "49:0.16" "63:1.12" "64:1.12" "81:1.41" "82:1.26" "83:0.15" "84:1.98" "85:1.34" "86:0.23" "90:2.28" "91:1.98" "92:1.81" "93:3.37" "94:1.98" "95:2.11" "SS_Overworld:1.1" "SS_planet.mars:0.89" "SS_planet.venus:1.94" "SS_planet.jupiter:0.48" "SS_planet.saturn:0.36" "SS_planet.uranus:0.25" "SS_planet.neptune:0.2" "UW_Garden:0.01" "UW_Mining:0.01" "UW_Void:0.01" ];
                description = "Define a power factor for each dimension ID The total energy output of Dyson Swarm multiblocks is multiplied by these values. Format is \"DIMID:FACTOR\" (DIMID for Space Stations is \"SS_unlocalizedNameOfBodyToOrbit\", for Utility Worlds dimensions \"UW_Garden\", \"UW_Mining\" and \"UW_Void\")";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Advanced Recipes Rocket" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable advanced recipes rocket (Tier 1-8).";
              };
              enableCheckVersion = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable/Disable Check Version.";
              };
              enableACentauri = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableBarnarda = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableVega = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableTCeti = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableNewMenu = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable/Disable new Main Menu.";
              };
              coefficientFuelGenerator = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Fuel Generator power factor";
              };
              coefficientGeothermalGenerator = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Geothermal Generator power factor";
              };
              coefficientSolarWindPanel = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Solar Wind Panel power factor";
              };
              coefficientSolarPanel = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Gybrid Solar Panel power factor";
              };
              idSolarRadiation = lib.mkOption {
                type = lib.types.int;
                default = 125;
                description = "ID Potion 'Solar Radiation'";
              };
              crystalBossInvisibilityInterval = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Every x ticks, the Crystal Boss tries to make itself invisible";
              };
              crystalBossInvisibilityDuration = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "How long the Crystal Boss can make itself invisible";
              };
              crystalBossInvisibilityProbability = lib.mkOption {
                type = lib.types.float;
                default = 0.5;
                description = "How high the probability is, that the Crystal Boss will make itself invisible";
              };
              baseBossDamage = lib.mkOption {
                type = lib.types.float;
                default = 100.0;
                description = "How much damage the player can deal at most to Evolved Crystal Boss, Evolved Blaze Boss and Evolved Ghast Boss (These bosses are supposed to be beaten by their own fireballs!)";
              };
            };
          };
        };
        spaceelevator = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              isCableRenderingEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable rendering of the Space Elevator Cable";
              };
            };
          };
        };
        worldgen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Other mods ores for GC to generate on GS planets" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "/ONLYPHOBOS, /ONLYDEIMOS, /ONLYEUROPA, /ONLYIO, /ONLYENCELADUS, /ONLYVENUS, /ONLYMERCURY, /ONLYCERES if wanted on one planet only.";
              };
              enableLeadGeneration = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable/Disable Generation Lead on Overworld.";
              };
              enableOresGeneration = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Generation Ores on Planets/Moon (Global Config).";
              };
            };
          };
        };
      };
    };
  };
  dimensions_conf = lib.mkOption {
    description = "dimensions_conf configuration (./config/GalaxySpace/dimensions.conf)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GalaxySpace/dimensions.conf";
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
              dimensionIDBarnardaC = lib.mkOption {
                type = lib.types.int;
                default = 32;
                description = "Dimension ID for Barnarda C";
              };
              dimensionIDBarnardaE = lib.mkOption {
                type = lib.types.int;
                default = 81;
                description = "Dimension ID for Barnarda E";
              };
              dimensionIDBarnardaF = lib.mkOption {
                type = lib.types.int;
                default = 82;
                description = "Dimension ID for Barnarda F";
              };
              dimensionIDCallisto = lib.mkOption {
                type = lib.types.int;
                default = 45;
                description = "Dimension ID for Callisto (Jupiter Moon)";
              };
              dimensionIDCentauriBb = lib.mkOption {
                type = lib.types.int;
                default = 31;
                description = "Dimension ID for Alpha Centauri Bb";
              };
              dimensionIDCeres = lib.mkOption {
                type = lib.types.int;
                default = 42;
                description = "Dimension ID for Ceres";
              };
              dimensionIDDeimos = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "Dimension ID for Deimos (Mars moon)";
              };
              dimensionIDEnceladus = lib.mkOption {
                type = lib.types.int;
                default = 41;
                description = "Dimension ID for Enceladus (Saturn moon)";
              };
              dimensionIDEuropa = lib.mkOption {
                type = lib.types.int;
                default = 35;
                description = "Dimension ID for Europa (Jupiter moon)";
              };
              dimensionIDGanymede = lib.mkOption {
                type = lib.types.int;
                default = 43;
                description = "Dimension ID for Ganymede (Jupiter moon)";
              };
              dimensionIDHaumea = lib.mkOption {
                type = lib.types.int;
                default = 83;
                description = "Dimension ID for Haumea";
              };
              dimensionIDIo = lib.mkOption {
                type = lib.types.int;
                default = 36;
                description = "Dimension ID for Io (Jupiter moon)";
              };
              dimensionIDJupiter = lib.mkOption {
                type = lib.types.int;
                default = 71;
                description = "Dimension ID for Jupiter";
              };
              dimensionIDJupiterOrbit = lib.mkOption {
                type = lib.types.int;
                default = 72;
                description = "Dimension ID for Jupiter Space Station";
              };
              dimensionIDJupiterOrbitStatic = lib.mkOption {
                type = lib.types.int;
                default = 73;
                description = "Dimension ID for Static Jupiter Space Stations";
              };
              dimensionIDKuiperBelt = lib.mkOption {
                type = lib.types.int;
                default = 33;
                description = "Dimension ID for Kuiper Belt";
              };
              dimensionIDMakemake = lib.mkOption {
                type = lib.types.int;
                default = 25;
                description = "Dimension ID for Makemake";
              };
              dimensionIDMarsOrbit = lib.mkOption {
                type = lib.types.int;
                default = 34;
                description = "Dimension ID for Mars Space Station";
              };
              dimensionIDMarsOrbitStatic = lib.mkOption {
                type = lib.types.int;
                default = 80;
                description = "Dimension ID for Static Mars Space Stations";
              };
              dimensionIDMercury = lib.mkOption {
                type = lib.types.int;
                default = 37;
                description = "Dimension ID for Mercury";
              };
              dimensionIDMiranda = lib.mkOption {
                type = lib.types.int;
                default = 86;
                description = "Dimension ID for Miranda (Uranus moon)";
              };
              dimensionIDNeptune = lib.mkOption {
                type = lib.types.int;
                default = 74;
                description = "Dimension ID for Neptune";
              };
              dimensionIDNeptuneOrbit = lib.mkOption {
                type = lib.types.int;
                default = 75;
                description = "Dimension ID for Neptune Space Station";
              };
              dimensionIDNeptuneOrbitStatic = lib.mkOption {
                type = lib.types.int;
                default = 76;
                description = "Dimension ID for Static Neptune Space Stations";
              };
              dimensionIDOberon = lib.mkOption {
                type = lib.types.int;
                default = 46;
                description = "Dimension ID for Oberon (Uranus moon)";
              };
              dimensionIDPhobos = lib.mkOption {
                type = lib.types.int;
                default = 38;
                description = "Dimension ID for Phobos (Mars moon)";
              };
              dimensionIDPluto = lib.mkOption {
                type = lib.types.int;
                default = 49;
                description = "Dimension ID for Pluto";
              };
              dimensionIDProteus = lib.mkOption {
                type = lib.types.int;
                default = 47;
                description = "Dimension ID for Proteus (Neptune moon)";
              };
              dimensionIDSaturn = lib.mkOption {
                type = lib.types.int;
                default = 77;
                description = "Dimension ID for Saturn";
              };
              dimensionIDSaturnOrbit = lib.mkOption {
                type = lib.types.int;
                default = 78;
                description = "Dimension ID for Saturn Space Station";
              };
              dimensionIDSaturnOrbitStatic = lib.mkOption {
                type = lib.types.int;
                default = 79;
                description = "Dimension ID for Static Saturn Space Stations";
              };
              dimensionIDTCetiE = lib.mkOption {
                type = lib.types.int;
                default = 85;
                description = "Dimension ID for T Ceti E";
              };
              dimensionIDTitan = lib.mkOption {
                type = lib.types.int;
                default = 44;
                description = "Dimension ID for Titan (Saturn moon)";
              };
              dimensionIDTriton = lib.mkOption {
                type = lib.types.int;
                default = 48;
                description = "Dimension ID for Triton (Neptune moon)";
              };
              dimensionIDUranus = lib.mkOption {
                type = lib.types.int;
                default = 51;
                description = "Dimension ID for Uranus";
              };
              dimensionIDUranusOrbit = lib.mkOption {
                type = lib.types.int;
                default = 52;
                description = "Dimension ID for Uranus Space Station";
              };
              dimensionIDUranusOrbitStatic = lib.mkOption {
                type = lib.types.int;
                default = 53;
                description = "Dimension ID for Static Uranus Space Stations";
              };
              dimensionIDVegaB = lib.mkOption {
                type = lib.types.int;
                default = 84;
                description = "Dimension ID for Vega B";
              };
              dimensionIDVenus = lib.mkOption {
                type = lib.types.int;
                default = 39;
                description = "Dimension ID for Venus";
              };
              dimensionIDVenusOrbit = lib.mkOption {
                type = lib.types.int;
                default = 87;
                description = "Dimension ID for Venus Space Station";
              };
              dimensionIDVenusOrbitStatic = lib.mkOption {
                type = lib.types.int;
                default = 88;
                description = "Dimension ID for Static Venus Space Stations";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableMercury = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Mercury";
              };
              enableVenus = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Venus";
              };
              enableCeres = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Ceres";
              };
              enablePluto = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Pluto";
              };
              enableHaumea = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Haumea";
              };
              enableMakemake = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Makemake";
              };
              enablePhobos = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Phobos (Mars Moon)";
              };
              enableDeimos = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Deimos (Mars Moon)";
              };
              enableEuropa = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Europa (Jupiter Moon)";
              };
              enableIo = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Io (Jupiter Moon)";
              };
              enableGanymede = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Ganymede (Jupiter Moon)";
              };
              enableCallisto = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Callisto (Jupiter Moon)";
              };
              enableEnceladus = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Enceladus (Saturn Moon)";
              };
              enableTitan = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Titan (Saturn Moon)";
              };
              enableMiranda = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Miranda (Uranus Moon)";
              };
              enableOberon = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Oberon (Uranus Moon)";
              };
              enableProteus = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Proteus (Neptune Moon)";
              };
              enableTriton = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Triton (Neptune Moon)";
              };
              enableMarsSS = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Mars Space Station";
              };
              enableVenusSS = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Venus Space Station";
              };
              enableJupiterSS = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Jupiter Space Station";
              };
              enableSaturnSS = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Saturn Space Station";
              };
              enableUranusSS = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Uranus Space Station";
              };
              enableNeptuneSS = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Neptune Space Station";
              };
              enableUnreachable = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Unreachable Planets/Moons";
              };
              enableACentauriBb = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Alpha Centauri Bb";
              };
              enableBarnardaC = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Barnarda C (Habitable Planet)";
              };
              enableBarnardaE = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Barnarda E";
              };
              enableBarnardaF = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Barnarda F";
              };
              enableVegaB = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Vega B";
              };
              enableTCetiE = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable/Disable Tau Ceti E";
              };
            };
          };
        };
      };
    };
  };
  schematics_conf = lib.mkOption {
    description = "schematics_conf configuration (./config/GalaxySpace/schematics.conf)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/GalaxySpace/schematics.conf";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
        schematic = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              idSchematicRocketT4 = lib.mkOption {
                type = lib.types.int;
                default = 6;
                description = "Schematic ID for Tier 4 Rocket, must be unique.";
              };
              idSchematicRocketT5 = lib.mkOption {
                type = lib.types.int;
                default = 7;
                description = "Schematic ID for Tier 5 Rocket, must be unique.";
              };
              idSchematicRocketT6 = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "Schematic ID for Tier 6 Rocket, must be unique.";
              };
              idSchematicRocketT7 = lib.mkOption {
                type = lib.types.int;
                default = 9;
                description = "Schematic ID for Tier 7 Rocket, must be unique.";
              };
              idSchematicRocketT8 = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Schematic ID for Tier 8 Rocket, must be unique.";
              };
            };
          };
        };
      };
    };
  };
}
