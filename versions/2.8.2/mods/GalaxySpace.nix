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
      general = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "Advanced Recipes Rocket" = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable advanced recipes rocket (Tier 1-8).";
          };
          baseBossDamage = lib.mkOption {
            type = lib.types.float;
            default = 100.0;
            description = "How much damage the player can deal at most to Evolved Crystal Boss, Evolved Blaze Boss and Evolved Ghast Boss (These bosses are supposed to be beaten by their own fireballs!)";
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
          coefficientSolarPanel = lib.mkOption {
            type = lib.types.int;
            default = 10;
            description = "Gybrid Solar Panel power factor";
          };
          coefficientSolarWindPanel = lib.mkOption {
            type = lib.types.int;
            default = 3;
            description = "Solar Wind Panel power factor";
          };
          crystalBossInvisibilityDuration = lib.mkOption {
            type = lib.types.int;
            default = 60;
            description = "How long the Crystal Boss can make itself invisible";
          };
          crystalBossInvisibilityInterval = lib.mkOption {
            type = lib.types.int;
            default = 100;
            description = "Every x ticks, the Crystal Boss tries to make itself invisible";
          };
          crystalBossInvisibilityProbability = lib.mkOption {
            type = lib.types.float;
            default = 0.5;
            description = "How high the probability is, that the Crystal Boss will make itself invisible";
          };
          enableACentauri = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableBarnarda = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableCapes = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Fetching Donator Capes";
          };
          enableCheckVersion = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enable/Disable Check Version.";
          };
          enableNewMenu = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enable/Disable new Main Menu.";
          };
          enableTCeti = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          enableVega = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          idSolarRadiation = lib.mkOption {
            type = lib.types.int;
            default = 125;
            description = "ID Potion 'Solar Radiation'";
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
            default = false;
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
          enableCallisto = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Callisto (Jupiter Moon)";
          };
          enableCeres = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Ceres";
          };
          enableDeimos = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Deimos (Mars Moon)";
          };
          enableEnceladus = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Enceladus (Saturn Moon)";
          };
          enableEuropa = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Europa (Jupiter Moon)";
          };
          enableGanymede = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Ganymede (Jupiter Moon)";
          };
          enableHaumea = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Haumea";
          };
          enableIo = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Io (Jupiter Moon)";
          };
          enableJupiterSS = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Jupiter Space Station";
          };
          enableMakemake = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Makemake";
          };
          enableMarsSS = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Mars Space Station";
          };
          enableMercury = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Mercury";
          };
          enableMiranda = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Miranda (Uranus Moon)";
          };
          enableNeptuneSS = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Neptune Space Station";
          };
          enableOberon = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Oberon (Uranus Moon)";
          };
          enablePhobos = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Phobos (Mars Moon)";
          };
          enablePluto = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Pluto";
          };
          enableProteus = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Proteus (Neptune Moon)";
          };
          enableSaturnSS = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Saturn Space Station";
          };
          enableTCetiE = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Tau Ceti E";
          };
          enableTitan = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Titan (Saturn Moon)";
          };
          enableTriton = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Triton (Neptune Moon)";
          };
          enableUnreachable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Unreachable Planets/Moons";
          };
          enableUranusSS = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Uranus Space Station";
          };
          enableVegaB = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Vega B";
          };
          enableVenus = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Venus";
          };
          enableVenusSS = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable/Disable Venus Space Station";
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
