{lib, ...}: {
  AWWayofTime = lib.mkOption {
    description = "AWWayofTime configuration (./config/AWWayofTime.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/AWWayofTime.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "alchemy potion blacklist" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Absorption = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Blindness = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Boost = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Deafness = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Drowning = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Fire Resistance" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Flight = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Health Boost" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Instant Health" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Invisibility = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Jump Boost" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mining Speed" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Move Speed" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Night Vision" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Planar Binding" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Poison = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Reciprocation = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Regeneration = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Resistance = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Saturation = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Slowness = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Soul Fray" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Soul Harden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Strength = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Water Breathing" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Weakness = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        "altar blocks" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              fifthTierBeacons = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "minecraft:beacon" "etfuturum:beacon" "chisel:beacon:*" ];
              };
              fourthTierCaps = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "AWWayofTime:largeBloodStoneBrick" ];
              };
              fourthTierPillars = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "dreamcraft:tile.BloodyVoid:0" ];
              };
              sixthTierCaps = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "AWWayofTime:blockCrystal" ];
              };
              sixthTierPillars = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "dreamcraft:tile.BloodyIchorium:0" ];
              };
              thirdTierCaps = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "minecraft:glowstone" "BloodArsenal:blood_infused_glowstone" "Botania:seaLamp" "chisel:glowstone:*" "etfuturum:sea_lantern" "etfuturum:shroomlight" "ExtraUtilities:color_lightgem:*" ];
              };
              thirdTierPillars = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "dreamcraft:tile.BloodyThaumium:0" ];
              };
            };
          };
        };
        clientsettings = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              AlchemyHUDxOffset = lib.mkOption {
                type = lib.types.int;
                default = 50;
              };
              AlchemyHUDyOffset = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              "Display Ritual Animation" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              LPHUDxOffset = lib.mkOption {
                type = lib.types.int;
                default = 12;
              };
              LPHUDyOffset = lib.mkOption {
                type = lib.types.int;
                default = 75;
              };
            };
          };
        };
        "demon configs" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Building Grid Delay" = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              "Demon Hoard Chance" = lib.mkOption {
                type = lib.types.str;
                default = "0.800000011920929";
              };
              "Demon Hoard Delay" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Demon House Chance" = lib.mkOption {
                type = lib.types.str;
                default = "0.6000000238418579";
              };
              "Demon Portal Chance" = lib.mkOption {
                type = lib.types.str;
                default = "0.5";
              };
              "Demon Road Chance" = lib.mkOption {
                type = lib.types.str;
                default = "0.30000001192092896";
              };
              IsDemonRitualCreativeOnly = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Portal Tick Rate" = lib.mkOption {
                type = lib.types.str;
                default = "0.10000000149011612";
              };
              "Road Grid Delay" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              canRoadGoDown = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              createBridgeInAirIfObstructed = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              demonGridSpaceLimit = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              demonHoardLimit = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              "dimension blacklist for the demon portal activation" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 0 ];
              };
              tunnelIfObstructed = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        "dungeon loot chances" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              averageLengtheningCatalyst = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              averagePowerCatalyst = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              greaterLengtheningCatalyst = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              greaterPowerCatalyst = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              mundaneLengtheningCatalyst = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              mundanePowerCatalyst = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              standardBindingAgent = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
            };
          };
        };
        "energy items" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Energy Bazooka LP per activation" = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              "Energy Bazooka LP per shot" = lib.mkOption {
                type = lib.types.int;
                default = 2000;
              };
              "Energy Bazooka Tier II LP per activation" = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              "Energy Bazooka Tier II LP per shot" = lib.mkOption {
                type = lib.types.int;
                default = 100000;
              };
              "Energy Bazooka Tier II damage" = lib.mkOption {
                type = lib.types.int;
                default = 500;
              };
              "Energy Bazooka Tier II maximum delay" = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              "Energy Bazooka Tier II maximum delay after (re-)activation" = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              "Energy Bazooka Tier II secondary damage" = lib.mkOption {
                type = lib.types.int;
                default = 750;
              };
              "Energy Bazooka Tier III LP per activation" = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              "Energy Bazooka Tier III LP per shot" = lib.mkOption {
                type = lib.types.int;
                default = 200000;
              };
              "Energy Bazooka Tier III damage" = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
              "Energy Bazooka Tier III maximum delay" = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              "Energy Bazooka Tier III maximum delay after (re-)activation" = lib.mkOption {
                type = lib.types.int;
                default = 250;
              };
              "Energy Bazooka Tier III secondary damage" = lib.mkOption {
                type = lib.types.int;
                default = 1500;
              };
              "Energy Bazooka damage" = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              "Energy Bazooka maximum delay" = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              "Energy Bazooka maximum delay after (re-)activation" = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              "Energy Bazooka secondary damage" = lib.mkOption {
                type = lib.types.int;
                default = 250;
              };
              "Energy Blast LP per activation" = lib.mkOption {
                type = lib.types.int;
                default = 50;
              };
              "Energy Blast LP per shot" = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              "Energy Blast Tier II LP per activation" = lib.mkOption {
                type = lib.types.int;
                default = 50;
              };
              "Energy Blast Tier II LP per shot" = lib.mkOption {
                type = lib.types.int;
                default = 2000;
              };
              "Energy Blast Tier II damage" = lib.mkOption {
                type = lib.types.int;
                default = 80;
              };
              "Energy Blast Tier II maximum delay" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "Energy Blast Tier II maximum delay after (re-)activation" = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              "Energy Blast Tier III LP per activation" = lib.mkOption {
                type = lib.types.int;
                default = 50;
              };
              "Energy Blast Tier III LP per shot" = lib.mkOption {
                type = lib.types.int;
                default = 2000;
              };
              "Energy Blast Tier III damage" = lib.mkOption {
                type = lib.types.int;
                default = 120;
              };
              "Energy Blast Tier III maximum delay" = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              "Energy Blast Tier III maximum delay after (re-)activation" = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              "Energy Blast damage" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Energy Blast maximum delay" = lib.mkOption {
                type = lib.types.int;
                default = 15;
              };
              "Energy Blast maximum delay after (re-)activation" = lib.mkOption {
                type = lib.types.int;
                default = 50;
              };
            };
          };
        };
        "lp costs" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Air Sigil" = lib.mkOption {
                type = lib.types.int;
                default = 75;
              };
              "Aura of Expulsion" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 1000000 1000 ];
              };
              "Ballad of Alchemy" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 20000 10 ];
              };
              "Blood of the New Moon" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 10000 0 ];
              };
              "Call of the Zephyr" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 25000 5 ];
              };
              "Convocation of the Damned" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 15000000 0 ];
              };
              "Cry of the Eternal Soul" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 2000000 0 ];
              };
              "Dome of Suppression" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 10000 2 ];
              };
              "Duet of the Fused Souls" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 15000000 5000 ];
              };
              "Focus of the Ellipsoid" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 25000 0 ];
              };
              "Gaia's Transformation" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 1000000 0 ];
              };
              "Harvest Goddess Sigil" = lib.mkOption {
                type = lib.types.int;
                default = 600;
              };
              "Interdiction Ritual" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 1000 1 ];
              };
              "Lava Sigil" = lib.mkOption {
                type = lib.types.int;
                default = 2000;
              };
              "Mark of the Falling Tower" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 100000 0 ];
              };
              "Orchestra of the Phantom Hands" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 10000 0 ];
              };
              "Reap of the Harvest Moon" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 20000 20 ];
              };
              "Requiem of the Satiated Stomach" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 100000 100 ];
              };
              "Reverence of the Condor" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 1000000 0 ];
              };
              "Rhythm of the Beating Anvil" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 15000 10 ];
              };
              "Ritual of Binding" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 5000 0 ];
              };
              "Ritual of Containment" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 2000 1 ];
              };
              "Ritual of Magnetism" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 5000 50 ];
              };
              "Ritual of Regeneration" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 25000 20 ];
              };
              "Ritual of Speed" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 1000 5 ];
              };
              "Ritual of Unbinding" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 30000 0 ];
              };
              "Ritual of the Crusher" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 2500 7 ];
              };
              "Ritual of the Feathered Earth" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 100000 0 ];
              };
              "Ritual of the Feathered Knife" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 50000 20 ];
              };
              "Ritual of the Full Spring" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 500 25 ];
              };
              "Ritual of the Green Grove" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 1000 20 ];
              };
              "Ritual of the High Jump" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 1000 5 ];
              };
              "Ritual of the Shepherd" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 10000 2 ];
              };
              "Serenade of the Nether" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 10000 500 ];
              };
              "Sigil of Compression" = lib.mkOption {
                type = lib.types.int;
                default = 250;
              };
              "Sigil of Elemental Affinity" = lib.mkOption {
                type = lib.types.int;
                default = 300;
              };
              "Sigil of Ender Severance" = lib.mkOption {
                type = lib.types.int;
                default = 300;
              };
              "Sigil of Haste" = lib.mkOption {
                type = lib.types.int;
                default = 300;
              };
              "Sigil of Magnetism" = lib.mkOption {
                type = lib.types.int;
                default = 75;
              };
              "Sigil of Suppression" = lib.mkOption {
                type = lib.types.int;
                default = 500;
              };
              "Sigil of the Blood Lamp" = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              "Sigil of the Fast Miner" = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              "Sigil of the Green Grove" = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              "Sigil of the Phantom Bridge" = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              "Sigil of the Whirlwind" = lib.mkOption {
                type = lib.types.int;
                default = 350;
              };
              "Song of Evaporation" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 20000 0 ];
              };
              "Symmetry of the Omega" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 15000000 0 ];
              };
              "Veil of Evil" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 150000 20 ];
              };
              "Void Sigil" = lib.mkOption {
                type = lib.types.int;
                default = 50;
              };
              "Ward of Sacrosanctity" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 150000 15 ];
              };
              "Water Sigil" = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              "Well of Suffering" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ 50000 2 ];
              };
              "[Weak Ritual] Night" = lib.mkOption {
                type = lib.types.int;
                default = 5000;
              };
              "[Weak Ritual] Resistance" = lib.mkOption {
                type = lib.types.int;
                default = 5000;
              };
              "[Weak Ritual] Thunderstorm" = lib.mkOption {
                type = lib.types.int;
                default = 5000;
              };
              "[Weak Ritual] Zombie" = lib.mkOption {
                type = lib.types.int;
                default = 5000;
              };
            };
          };
        };
        meteor = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              defaultMeteorBlock = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Defaults to minecraft:stone:0 if no block is provided or the provided block cannot be found. [default: ]";
              };
              defaultMeteorCost = lib.mkOption {
                type = lib.types.int;
                default = 1000000;
                description = "[range: 0 ~ 2147483647, default: 1000000]";
              };
              doMeteorsDestroyBlocks = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              maxChance = lib.mkOption {
                type = lib.types.int;
                default = 1000;
              };
            };
          };
        };
        orecrushing = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              allowedOres = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "iron" "gold" "copper" "tin" "lead" "silver" "osmium" ];
              };
            };
          };
        };
        "potion id" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Amphibian = lib.mkOption {
                type = lib.types.int;
                default = 115;
              };
              Boost = lib.mkOption {
                type = lib.types.int;
                default = 101;
              };
              Deaf = lib.mkOption {
                type = lib.types.int;
                default = 113;
              };
              DemonCloak = lib.mkOption {
                type = lib.types.int;
                default = 114;
              };
              Drowning = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              FeatherFall = lib.mkOption {
                type = lib.types.int;
                default = 98;
              };
              FireFuse = lib.mkOption {
                type = lib.types.int;
                default = 109;
              };
              FlameCloak = lib.mkOption {
                type = lib.types.int;
                default = 106;
              };
              Flight = lib.mkOption {
                type = lib.types.int;
                default = 104;
              };
              HeavyHeart = lib.mkOption {
                type = lib.types.int;
                default = 108;
              };
              IceCloak = lib.mkOption {
                type = lib.types.int;
                default = 107;
              };
              Inhibit = lib.mkOption {
                type = lib.types.int;
                default = 103;
              };
              PlanarBinding = lib.mkOption {
                type = lib.types.int;
                default = 110;
              };
              ProjProt = lib.mkOption {
                type = lib.types.int;
                default = 102;
              };
              Reciprocation = lib.mkOption {
                type = lib.types.int;
                default = 105;
              };
              SoulFray = lib.mkOption {
                type = lib.types.int;
                default = 111;
              };
              SoulHarden = lib.mkOption {
                type = lib.types.int;
                default = 112;
              };
            };
          };
        };
        "ritual blacklist" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Aura of Expulsion" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ballad of Alchemy" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Birth of the Bastion" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Call of the Zephyr" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Convocation of the Damned" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Cry of the Eternal Soul" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Dome of Supression" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Duet of the Fused Souls" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Focus of the Ellipsoid" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Interdiction Ritual" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Mark of the Falling Tower" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Orchestra of the Phantom Hands" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Reap of the Harvest Moon" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Requiem of the Satiated Stomach" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Reverence of the Condor" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Rhythm of the Beating Anvil" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Ritual of Binding" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ritual of Containment" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ritual of Gaia's Transformation" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ritual of Magnetism" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ritual of Regeneration" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ritual of Speed" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ritual of Unbinding" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ritual of the Crusher" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ritual of the Feathered Earth" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ritual of the Feathered Knife" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ritual of the Full Spring" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ritual of the Green Grove" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ritual of the High Jump" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ritual of the Shepherd" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Serenade of the Nether" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Song of Evaporation" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Symmetry of the Omega" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Veil of Evil" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ward of Sacrosanctity" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Well of Suffering" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              weak = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Night = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    Resistance = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    Thunderstorm = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    Zombie = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                  };
                };
              };
            };
          };
        };
        "rune overrides" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              fifthTier = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "AWWayofTime:AlchemicalWizardrybloodRune:0" "AWWayofTime:speedRune:0" "AWWayofTime:efficiencyRune:0" "AWWayofTime:runeOfSacrifice:0" "AWWayofTime:runeOfSelfSacrifice:0" "AWWayofTime:AlchemicalWizardrybloodRune:1" "AWWayofTime:AlchemicalWizardrybloodRune:2" "AWWayofTime:AlchemicalWizardrybloodRune:3" "AWWayofTime:AlchemicalWizardrybloodRune:4" "AWWayofTime:AlchemicalWizardrybloodRune:5" "AWWayofTime:AlchemicalWizardrybloodRune:6" ];
              };
              fourthTier = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "AWWayofTime:AlchemicalWizardrybloodRune:0" "AWWayofTime:speedRune:0" "AWWayofTime:efficiencyRune:0" "AWWayofTime:runeOfSacrifice:0" "AWWayofTime:runeOfSelfSacrifice:0" "AWWayofTime:AlchemicalWizardrybloodRune:1" "AWWayofTime:AlchemicalWizardrybloodRune:2" "AWWayofTime:AlchemicalWizardrybloodRune:3" "AWWayofTime:AlchemicalWizardrybloodRune:4" "AWWayofTime:AlchemicalWizardrybloodRune:5" "AWWayofTime:AlchemicalWizardrybloodRune:6" ];
              };
              secondTier = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "AWWayofTime:AlchemicalWizardrybloodRune:0" "AWWayofTime:speedRune:0" "AWWayofTime:efficiencyRune:0" "AWWayofTime:runeOfSacrifice:0" "AWWayofTime:runeOfSelfSacrifice:0" "AWWayofTime:AlchemicalWizardrybloodRune:1" "AWWayofTime:AlchemicalWizardrybloodRune:2" "AWWayofTime:AlchemicalWizardrybloodRune:3" "AWWayofTime:AlchemicalWizardrybloodRune:4" "AWWayofTime:AlchemicalWizardrybloodRune:5" "AWWayofTime:AlchemicalWizardrybloodRune:6" ];
              };
              sixthTier = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "AWWayofTime:AlchemicalWizardrybloodRune:0" "AWWayofTime:speedRune:0" "AWWayofTime:efficiencyRune:0" "AWWayofTime:runeOfSacrifice:0" "AWWayofTime:runeOfSelfSacrifice:0" "AWWayofTime:AlchemicalWizardrybloodRune:1" "AWWayofTime:AlchemicalWizardrybloodRune:2" "AWWayofTime:AlchemicalWizardrybloodRune:3" "AWWayofTime:AlchemicalWizardrybloodRune:4" "AWWayofTime:AlchemicalWizardrybloodRune:5" "AWWayofTime:AlchemicalWizardrybloodRune:6" ];
              };
              thirdTier = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "AWWayofTime:AlchemicalWizardrybloodRune:0" "AWWayofTime:speedRune:0" "AWWayofTime:efficiencyRune:0" "AWWayofTime:runeOfSacrifice:0" "AWWayofTime:runeOfSelfSacrifice:0" "AWWayofTime:AlchemicalWizardrybloodRune:1" "AWWayofTime:AlchemicalWizardrybloodRune:2" "AWWayofTime:AlchemicalWizardrybloodRune:3" "AWWayofTime:AlchemicalWizardrybloodRune:4" "AWWayofTime:AlchemicalWizardrybloodRune:5" "AWWayofTime:AlchemicalWizardrybloodRune:6" ];
              };
            };
          };
        };
        sacrifice = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "LP per (self-)sacrifice with incense" = lib.mkOption {
                type = lib.types.str;
                default = "150.0";
              };
              "LP per sacrifice" = lib.mkOption {
                type = lib.types.int;
                default = 600;
              };
              "LP per sacrifice with Well of Suffering ritual" = lib.mkOption {
                type = lib.types.int;
                default = 25;
              };
              "LP per self-sacrifice" = lib.mkOption {
                type = lib.types.int;
                default = 125;
              };
              "LP per self-sacrifice (when Soul Fray potion is active)" = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              "LP per self-sacrifice with Ritual of Feathered Knife" = lib.mkOption {
                type = lib.types.int;
                default = 125;
              };
              "custom values" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "AWWayofTime.AirElemental" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.BileDemon" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.BoulderFist" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.EarthElemental" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.FallenAngel" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.FireElemental" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.HolyElemental" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.IceDemon" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.LowerGuardian" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.MinorDemonGrunt" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.MinorDemonGruntEarth" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.MinorDemonGruntFire" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.MinorDemonGruntGuardian" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.MinorDemonGruntGuardianEarth" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.MinorDemonGruntGuardianFire" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.MinorDemonGruntGuardianIce" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.MinorDemonGruntGuardianWind" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.MinorDemonGruntIce" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.MinorDemonGruntWind" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.Shade" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.ShadeElemental" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.SmallEarthGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.WaterElemental" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "AWWayofTime.WingedFireDemon" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "Automagy.WispNether" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    Bat = lib.mkOption {
                      type = lib.types.int;
                      default = 100;
                    };
                    "BiomesOPlenty.Bird" = lib.mkOption {
                      type = lib.types.int;
                      default = 100;
                    };
                    "BiomesOPlenty.Glob" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "BiomesOPlenty.JungleSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "BiomesOPlenty.Phantom" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "BiomesOPlenty.Pixie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "BiomesOPlenty.Rosester" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "BiomesOPlenty.Wasp" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    Blaze = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "BloodUtils.royal" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Botania.botania:doppleganger" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Botania.botania:pinkWither" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Botania.botania:pixie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "BuildCraft|Robotics.bcRobot" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    CaveSpider = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    Chicken = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    Cow = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    Creeper = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "DraconicEvolution.ChaosCrystal" = lib.mkOption {
                      type = lib.types.int;
                      default = 2000;
                    };
                    "DraconicEvolution.ChaosGuardian" = lib.mkOption {
                      type = lib.types.int;
                      default = 50000;
                    };
                    "DraconicEvolution.EnderDragon" = lib.mkOption {
                      type = lib.types.int;
                      default = 20000;
                    };
                    "EMT.archer" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    EnderDragon = lib.mkOption {
                      type = lib.types.int;
                      default = 15000;
                    };
                    Enderman = lib.mkOption {
                      type = lib.types.int;
                      default = 200;
                    };
                    EntityHorse = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    FakePlayerEntity = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "Forestry.butterflyGE" = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                    "GalacticraftCore.AlienVillager" = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    "GalacticraftCore.Crawler" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "GalacticraftCore.EvolvedBlaze" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "GalacticraftCore.EvolvedBossBlaze" = lib.mkOption {
                      type = lib.types.int;
                      default = 5000;
                    };
                    "GalacticraftCore.EvolvedBossCrab" = lib.mkOption {
                      type = lib.types.int;
                      default = 5000;
                    };
                    "GalacticraftCore.EvolvedBossCrystallBrain" = lib.mkOption {
                      type = lib.types.int;
                      default = 5000;
                    };
                    "GalacticraftCore.EvolvedBossGhast" = lib.mkOption {
                      type = lib.types.int;
                      default = 5000;
                    };
                    "GalacticraftCore.EvolvedBossSlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 5000;
                    };
                    "GalacticraftCore.EvolvedBossWolf" = lib.mkOption {
                      type = lib.types.int;
                      default = 5000;
                    };
                    "GalacticraftCore.EvolvedColdBlaze" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "GalacticraftCore.EvolvedCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "GalacticraftCore.EvolvedCrystalBoss" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "GalacticraftCore.EvolvedEnderman" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "GalacticraftCore.EvolvedFireCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "GalacticraftCore.EvolvedFireSkeleton" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "GalacticraftCore.EvolvedFireSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "GalacticraftCore.EvolvedGiantSnail" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "GalacticraftCore.EvolvedGuardian" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "GalacticraftCore.EvolvedSkeleton" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "GalacticraftCore.EvolvedSkeletonBoss" = lib.mkOption {
                      type = lib.types.int;
                      default = 5000;
                    };
                    "GalacticraftCore.EvolvedSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "GalacticraftCore.EvolvedZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "GalacticraftCore.Tentacles" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "GalacticraftMars.CreeperBoss" = lib.mkOption {
                      type = lib.types.int;
                      default = 5000;
                    };
                    "GalacticraftMars.Slimeling" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "GalacticraftMars.Sludgeling" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    Ghast = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    Giant = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "HardcoreEnderExpansion.AngryEnderman" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "HardcoreEnderExpansion.BabyEnderman" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "HardcoreEnderExpansion.Dragon" = lib.mkOption {
                      type = lib.types.int;
                      default = 20000;
                    };
                    "HardcoreEnderExpansion.EnderDemon" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "HardcoreEnderExpansion.EnderEye" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "HardcoreEnderExpansion.EnderGuardian" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "HardcoreEnderExpansion.Endermage" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "HardcoreEnderExpansion.FireFiend" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "HardcoreEnderExpansion.FireGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "HardcoreEnderExpansion.ForestGhost" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "HardcoreEnderExpansion.HauntedMiner" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "HardcoreEnderExpansion.HomelandEnderman" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "HardcoreEnderExpansion.InfestedBat" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "HardcoreEnderExpansion.Louse" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "HardcoreEnderExpansion.ParalyzedEnderman" = lib.mkOption {
                      type = lib.types.int;
                      default = 200;
                    };
                    "HardcoreEnderExpansion.ScorchedLens" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "HardcoreEnderExpansion.VampireBat" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "LavaMonsters.LavaMonster" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    LavaSlime = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    MushroomCow = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "Natura.FlameSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Natura.FlameSpiderBaby" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "Natura.Imp" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "Natura.NitroCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "OpenBlocks.Luggage" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "OpenBlocks.MiniMe" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    Ozelot = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    Pig = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    PigZombie = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "RandomThings.spirit" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Sanguimancy.EntityChickenMinion" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "Sanguimancy.EntityPlayerPointer" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    Sheep = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    Silverfish = lib.mkOption {
                      type = lib.types.int;
                      default = 100;
                    };
                    Skeleton = lib.mkOption {
                      type = lib.types.int;
                      default = 100;
                    };
                    Slime = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    SnowMan = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.ArmorCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.BabyCaveSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.BabyGhast" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.BabySpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.BlackberrySlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    "SpecialMobs.BlindingEnderman" = lib.mkOption {
                      type = lib.types.int;
                      default = 200;
                    };
                    "SpecialMobs.BlindingSilverfish" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.BlueberrySlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    "SpecialMobs.BrutishPigZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.BrutishSkeleton" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.BrutishZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.CaramelSlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    "SpecialMobs.CinderBlaze" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.ConflagrationBlaze" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.CursedEnderman" = lib.mkOption {
                      type = lib.types.int;
                      default = 200;
                    };
                    "SpecialMobs.DarkCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.DeathCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.DesertSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.DirtCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.DominationWitch" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.DoomCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.DrowningCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.EmberBlaze" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.EnderCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.FaintGhast" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.FighterGhast" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.FireCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.FireSkeleton" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.FireZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.FishingPigZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.FishingSilverfish" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.FishingZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.FlyingCaveSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.FlyingSilverfish" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.FlyingSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.GatlingSkeleton" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.GhostSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.GiantPigZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.GiantSkeleton" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.GiantSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.GiantZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.GrapeSlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    "SpecialMobs.GravelCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.GravityCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.HellfireBlaze" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.HungryPigZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.HungrySpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.HungryZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.IcyEnderman" = lib.mkOption {
                      type = lib.types.int;
                      default = 200;
                    };
                    "SpecialMobs.InfernoBlaze" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.JoltBlaze" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.JumpingCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.KingGhast" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.LavaMonster" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.LemonSlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    "SpecialMobs.LightningCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.LightningEnderman" = lib.mkOption {
                      type = lib.types.int;
                      default = 200;
                    };
                    "SpecialMobs.MiniCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.MiniEnderman" = lib.mkOption {
                      type = lib.types.int;
                      default = 200;
                    };
                    "SpecialMobs.MiniGhast" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.MirageEnderman" = lib.mkOption {
                      type = lib.types.int;
                      default = 200;
                    };
                    "SpecialMobs.MotherCaveSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.MotherSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.NinjaSkeleton" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.PaleSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.PlaguePigZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.PlagueZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.PoisonSilverfish" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.PoisonSkeleton" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.PoisonSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.QueenGhast" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.RageWitch" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.ShadowsWitch" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.SmallSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.SmolderBlaze" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.SniperSkeleton" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.SpecialBlaze" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.SpecialCaveSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.SpecialCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.SpecialEnderman" = lib.mkOption {
                      type = lib.types.int;
                      default = 200;
                    };
                    "SpecialMobs.SpecialGhast" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.SpecialPigZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.SpecialSilverfish" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.SpecialSkeleton" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.SpecialSlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    "SpecialMobs.SpecialSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.SpecialWitch" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.SpecialZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.SpitfireSkeleton" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.SplittingCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.StrawberrySlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    "SpecialMobs.ThiefEnderman" = lib.mkOption {
                      type = lib.types.int;
                      default = 200;
                    };
                    "SpecialMobs.ThiefSkeleton" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.ToughCaveSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.ToughSilverfish" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.ToughSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.UndeadWitch" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.UnholyGhast" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.VampirePigZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.WatermelonSlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    "SpecialMobs.WebCaveSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.WebSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.WildfireBlaze" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.WildsWitch" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.WindWitch" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.WitchCaveSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "SpecialMobs.WitchSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    Spider = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    Squid = lib.mkOption {
                      type = lib.types.int;
                      default = 100;
                    };
                    "TConstruct.Crystal" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TConstruct.EdibleSlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TConstruct.KingSlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.BrainyZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.CultistCleric" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.CultistKnight" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.CultistLeader" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.CultistPortal" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.EldritchCrab" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.EldritchGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.EldritchGuardian" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.EldritchWarden" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.Firebat" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.GiantBrainyZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.Golem" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.InhabitedZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.MindSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.Pech" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.TaintSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.TaintSpore" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.TaintSwarm" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.TaintSwarmer" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.Taintacle" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.TaintacleGiant" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.TaintacleTiny" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.TaintedChicken" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.TaintedCow" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.TaintedCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.TaintedPig" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.TaintedSheep" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.TaintedVillager" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.ThaumSlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.TravelingTrunk" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "Thaumcraft.Wisp" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "ThaumicExploration.TaintacleMinion" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "ThaumicHorizons.ChocolateCow" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.ChromaticSheep" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.Endersteed" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.Familiar" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.GoldChicken" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.GolemTH" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "ThaumicHorizons.Gravekeeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.GuardianPanther" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.HorseSkeleton" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.HorseZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.LostSoul" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "ThaumicHorizons.LunarWolf" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.MeatSlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    "ThaumicHorizons.MedSlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    "ThaumicHorizons.MercurialSlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    "ThaumicHorizons.NetherHound" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.NightmareTH" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.OrePig" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.ScholarChicken" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.Seawolf" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.SelfShearingSheep" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.Sheeder" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "ThaumicHorizons.TaintEaterPig" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "ThaumicHorizons.VoltSlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    "TwilightForest.Adherent" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Apocalypse Cube" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "TwilightForest.Armored Giant" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Bighorn Sheep" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "TwilightForest.Block&Chain Goblin" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Death Tome" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Fire Beetle" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Firefly" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Forest Bunny" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Forest Raven" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "TwilightForest.Forest Squirrel" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Giant Miner" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Glacier Penguin" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "TwilightForest.Harbinger Cube" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Hedge Spider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Helmet Crab" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Hostile Wolf" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "TwilightForest.Hydra" = lib.mkOption {
                      type = lib.types.int;
                      default = 10000;
                    };
                    "TwilightForest.HydraHead" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Ice Crystal" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.King Spider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Knight Phantom" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Lich Minion" = lib.mkOption {
                      type = lib.types.int;
                      default = 2500;
                    };
                    "TwilightForest.Lower Goblin Knight" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Loyal Zombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "TwilightForest.Maze Slime" = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    "TwilightForest.Mini Ghast" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Minoshroom" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Minotaur" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Mist Wolf" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "TwilightForest.Mosquito Swarm" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Naga" = lib.mkOption {
                      type = lib.types.int;
                      default = 5000;
                    };
                    "TwilightForest.Pinch Beetle" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Questing Ram" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "TwilightForest.Redcap" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Redcap Sapper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Redscale Broodling" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.RovingCube" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Skeleton Druid" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Slime Beetle" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Snow Queen" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.SnowGuardian" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Stable Ice Core" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Swarm Spider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Tiny Bird" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "TwilightForest.Tower Boss" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Tower Ghast" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Tower Golem" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Tower Termite" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Troll" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Twilight Kobold" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Twilight Lich" = lib.mkOption {
                      type = lib.types.int;
                      default = 7500;
                    };
                    "TwilightForest.Twilight Wraith" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Unstable Ice Core" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Upper Goblin Knight" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Wild Boar" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "TwilightForest.Wild Deer" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "TwilightForest.WinterWolf" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "TwilightForest.Yeti" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "TwilightForest.Yeti Boss" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "UtilityMobs.AnvilGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.ArmorColossus" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.ArmorGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.BoundSoul" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.BrickTurret" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.ChestEnderGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.ChestGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.ChestTrappedGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.FireTurret" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.FireballTurret" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.FurnaceGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.GatlingTurret" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.GhastTurret" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.GildedGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.JukeboxGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.KillerTurret" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.LanternGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.MelonGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.ObsidianColossus" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.ObsidianGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.ObsidianTurret" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.Scarecrow" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.ShotgunTurret" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.SniperTurret" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.SnowTurret" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.SteamGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.StoneColossus" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.StoneGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.StoneLargeGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.StoneTurret" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.UMIronGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.UMSnowGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.VolleyTurret" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    "UtilityMobs.WorkbenchGolem" = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    Villager = lib.mkOption {
                      type = lib.types.int;
                      default = 1000;
                    };
                    VillagerGolem = lib.mkOption {
                      type = lib.types.int;
                      default = 1500;
                    };
                    "WarpTheory.creeperFake" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "WarpTheory.creeperPassive" = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                    "WarpTheory.doppelganger" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "WarpTheory.phantom" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "WarpTheory.taintSheepSafe" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    Witch = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    WitherBoss = lib.mkOption {
                      type = lib.types.int;
                      default = 2500;
                    };
                    Wolf = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    Zombie = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "adventurebackpack.rideableSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    alienBug = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    alienVillagerAR = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "aquacreeper.aquaCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 100;
                    };
                    batKing = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    bigChickenFriendly = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "chisel.snowman" = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                    };
                    "computronics.swarm" = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                    };
                    constructStaballoy = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "enderzoo.ConcussionCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "enderzoo.DireSlime" = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                    };
                    "enderzoo.DireWolf" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "enderzoo.Enderminy" = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                    };
                    "enderzoo.FallenKnight" = lib.mkOption {
                      type = lib.types.int;
                      default = 750;
                    };
                    "enderzoo.FallenMount" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "enderzoo.WitherCat" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "enderzoo.WitherWitch" = lib.mkOption {
                      type = lib.types.int;
                      default = 750;
                    };
                    "etfuturum.brown_mooshroom" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "etfuturum.ender_dragon" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "etfuturum.endermite" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "etfuturum.fox" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "etfuturum.husk" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "etfuturum.rabbit" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "etfuturum.shulker" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "etfuturum.snow_golem" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "etfuturum.stray" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "etfuturum.villager_zombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "etfuturum.wooden_armorstand" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "gadomancy.FakePlayerEntity" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "lootgames.LootGamesChessBishop" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "lootgames.LootGamesChessKing" = lib.mkOption {
                      type = lib.types.int;
                      default = 2000;
                    };
                    "lootgames.LootGamesChessKnight" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "lootgames.LootGamesChessPawn" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "lootgames.LootGamesChessQueen" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "lootgames.LootGamesChessRook" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "miscutils.AusBoar" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "miscutils.AusDingo" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "miscutils.AusOctopus" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "miscutils.AusSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "miscutils.batKing" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "miscutils.bigChickenFriendly" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "miscutils.constructStaballoy" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "miscutils.sickBlaze" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    osirisBoss = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    porcodon = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    robotVillager = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    sentryRobot = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    sickBlaze = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.attackbat" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.babayaga" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.banshee" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.cat" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "witchery.corpse" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.covenwitch" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "witchery.darkmark" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.death" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.deathhorse" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "witchery.demon" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.ent" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.eye" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.familiar" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "witchery.follower" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "witchery.goblin" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.goblingulg" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.goblinmog" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.hellhound" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.hornedHuntsman" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.illusionCreeper" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.illusionSpider" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.illusionZombie" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.imp" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "witchery.leonard" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.lilith" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.lordoftorment" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.lostsoul" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "witchery.louse" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.mandrake" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.mindrake" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "witchery.mirrorface" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.nightmare" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.owl" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "witchery.poltergeist" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.reflection" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.spectre" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.spirit" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "witchery.toad" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "witchery.treefyd" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.vampire" = lib.mkOption {
                      type = lib.types.int;
                      default = 3000;
                    };
                    "witchery.villageguard" = lib.mkOption {
                      type = lib.types.int;
                      default = 4000;
                    };
                    "witchery.werevillager" = lib.mkOption {
                      type = lib.types.int;
                      default = 2000;
                    };
                    "witchery.wingedmonkey" = lib.mkOption {
                      type = lib.types.int;
                      default = 250;
                    };
                    "witchery.witchhunter" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                    "witchery.wolfman" = lib.mkOption {
                      type = lib.types.int;
                      default = 500;
                    };
                  };
                };
              };
            };
          };
        };
        "teleposer blacklist" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Blacklist = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "minecraft:bedrock" "minecraft:end_portal" "minecraft:end_portal_frame" "HardcoreEnderExpansion:transport_beacon" "Thaumcraft:blockPortalEldritch" "Thaumcraft:blockEldritchNothing" "ThaumicHorizons:vortexTH" "appliedenergistics2:tile.BlockMatrixFrame" "avaritiaddons:CompressedChest" "avaritiaddons:InfinityChest" "gregtech:gt.blockmachines" ];
                description = "modid:blockname:meta";
              };
            };
          };
        };
        wellofsufferingblacklist = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "AWWayofTime.AirElemental" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.BileDemon" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.BoulderFist" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.EarthElemental" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.FallenAngel" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.FireElemental" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.HolyElemental" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.IceDemon" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.LowerGuardian" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.MinorDemonGrunt" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.MinorDemonGruntEarth" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.MinorDemonGruntFire" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.MinorDemonGruntGuardian" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.MinorDemonGruntGuardianEarth" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.MinorDemonGruntGuardianFire" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.MinorDemonGruntGuardianIce" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.MinorDemonGruntGuardianWind" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.MinorDemonGruntIce" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.MinorDemonGruntWind" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.Shade" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.ShadeElemental" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.SmallEarthGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.WaterElemental" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "AWWayofTime.WingedFireDemon" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              AlienVillager = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Automagy.WispNether" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Bat = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "BiomesOPlenty.Bird" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "BiomesOPlenty.Glob" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "BiomesOPlenty.JungleSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "BiomesOPlenty.Phantom" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "BiomesOPlenty.Pixie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "BiomesOPlenty.Rosester" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "BiomesOPlenty.Wasp" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Blaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "BloodUtils.royal" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Botania.botania:doppleganger" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Botania.botania:pinkWither" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Botania.botania:pixie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "BuildCraft|Robotics.bcRobot" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              CaveSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Chicken = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Cow = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Creeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              CreeperBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "DraconicEvolution.ChaosCrystal" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "DraconicEvolution.ChaosGuardian" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "DraconicEvolution.EnderDragon" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "EMT.archer" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "EMT.entityArcher" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EnderDragon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Enderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EntityHorse = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedBossBlaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedBossCrab = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedBossCrystallBrain = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedBossGhast = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedBossSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedBossWolf = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedColdBlaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedEnderman = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedFireCreeper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedFireSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedFireSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedGiantSnail = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedGuardian = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedSkeletonBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedSpider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EvolvedZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              FakePlayerEntity = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Forestry.butterflyGE" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.AlienVillager" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.Crawler" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedBlaze" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedBossBlaze" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedBossCrab" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedBossCrystallBrain" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedBossGhast" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedBossSlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedBossWolf" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedColdBlaze" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedCrystalBoss" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedEnderman" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedFireCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedFireSkeleton" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedFireSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedGiantSnail" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedGuardian" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedSkeleton" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedSkeletonBoss" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.EvolvedZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftCore.Tentacles" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftMars.CreeperBoss" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftMars.Slimeling" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "GalacticraftMars.Sludgeling" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Ghast = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Giant = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.AngryEnderman" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.BabyEnderman" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.Dragon" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.EnderDemon" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.EnderEye" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.EnderGuardian" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.Endermage" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.FireFiend" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.FireGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.ForestGhost" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.HauntedMiner" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.HomelandEnderman" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.InfestedBat" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.Louse" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.ParalyzedEnderman" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.ScorchedLens" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HardcoreEnderExpansion.VampireBat" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "LavaMonsters.LavaMonster" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              LavaSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              MushroomCow = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Natura.FlameSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Natura.FlameSpiderBaby" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Natura.Imp" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Natura.NitroCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "OpenBlocks.Luggage" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "OpenBlocks.MiniMe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Ozelot = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Pig = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              PigZombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "RandomThings.spirit" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Sanguimancy.EntityChickenMinion" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Sanguimancy.EntityPlayerPointer" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Sheep = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Silverfish = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Skeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Slime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Slimeling = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Sludgeling = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              SnowMan = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.ArmorCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.BabyCaveSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.BabyGhast" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.BabySpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.BlackberrySlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.BlindingEnderman" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.BlindingSilverfish" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.BlueberrySlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.BrutishPigZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.BrutishSkeleton" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.BrutishZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.CaramelSlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.CinderBlaze" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.ConflagrationBlaze" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.CursedEnderman" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.DarkCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.DeathCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.DesertSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.DirtCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.DominationWitch" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.DoomCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.DrowningCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.EmberBlaze" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.EnderCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.FaintGhast" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.FighterGhast" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.FireCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.FireSkeleton" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.FireZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.FishingPigZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.FishingSilverfish" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.FishingZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.FlyingCaveSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.FlyingSilverfish" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.FlyingSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.GatlingSkeleton" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.GhostSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.GiantPigZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.GiantSkeleton" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.GiantSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.GiantZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.GrapeSlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.GravelCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.GravityCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.HellfireBlaze" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.HungryPigZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.HungrySpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.HungryZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.IcyEnderman" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.InfernoBlaze" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.JoltBlaze" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.JumpingCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.KingGhast" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.LavaMonster" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.LemonSlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.LightningCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.LightningEnderman" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.MiniCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.MiniEnderman" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.MiniGhast" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.MirageEnderman" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.MotherCaveSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.MotherSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.NinjaSkeleton" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.PaleSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.PlaguePigZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.PlagueZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.PoisonSilverfish" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.PoisonSkeleton" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.PoisonSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.QueenGhast" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.RageWitch" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.ShadowsWitch" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SmallSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SmolderBlaze" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SniperSkeleton" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SpecialBlaze" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SpecialCaveSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SpecialCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SpecialEnderman" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SpecialGhast" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SpecialPigZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SpecialSilverfish" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SpecialSkeleton" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SpecialSlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SpecialSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SpecialWitch" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SpecialZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SpitfireSkeleton" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.SplittingCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.StrawberrySlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.ThiefEnderman" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.ThiefSkeleton" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.ToughCaveSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.ToughSilverfish" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.ToughSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.UndeadWitch" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.UnholyGhast" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.VampirePigZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.WatermelonSlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.WebCaveSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.WebSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.WildfireBlaze" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.WildsWitch" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.WindWitch" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.WitchCaveSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "SpecialMobs.WitchSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Spider = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Squid = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TConstruct.Crystal" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TConstruct.EdibleSlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TConstruct.KingSlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.BrainyZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.CultistCleric" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.CultistKnight" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.CultistLeader" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.CultistPortal" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.EldritchCrab" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.EldritchGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.EldritchGuardian" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.EldritchWarden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.Firebat" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.GiantBrainyZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.Golem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.InhabitedZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.MindSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.Pech" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.TaintSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.TaintSpore" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.TaintSwarm" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.TaintSwarmer" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.Taintacle" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.TaintacleGiant" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.TaintacleTiny" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.TaintedChicken" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.TaintedCow" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.TaintedCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.TaintedPig" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.TaintedSheep" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.TaintedVillager" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.ThaumSlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.TravelingTrunk" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Thaumcraft.Wisp" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicExploration.TaintacleMinion" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.ChocolateCow" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.ChromaticSheep" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.Endersteed" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.Familiar" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.GoldChicken" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.GolemTH" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.Gravekeeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.GuardianPanther" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.HorseSkeleton" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.HorseZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.LostSoul" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.LunarWolf" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.MeatSlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.MedSlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.MercurialSlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.NetherHound" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.NightmareTH" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.OrePig" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.ScholarChicken" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.Seawolf" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.SelfShearingSheep" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.Sheeder" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.TaintEaterPig" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ThaumicHorizons.VoltSlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Adherent" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Apocalypse Cube" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Armored Giant" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Bighorn Sheep" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Block&Chain Goblin" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Death Tome" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Fire Beetle" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Firefly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Forest Bunny" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Forest Raven" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Forest Squirrel" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Giant Miner" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Glacier Penguin" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Harbinger Cube" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Hedge Spider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Helmet Crab" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Hostile Wolf" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Hydra" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.HydraHead" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Ice Crystal" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.King Spider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Knight Phantom" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Lich Minion" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Lower Goblin Knight" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Loyal Zombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Maze Slime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Mini Ghast" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Minoshroom" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Minotaur" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Mist Wolf" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Mosquito Swarm" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Naga" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Pinch Beetle" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Questing Ram" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Redcap" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Redcap Sapper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Redscale Broodling" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.RovingCube" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Skeleton Druid" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Slime Beetle" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Snow Queen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.SnowGuardian" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Stable Ice Core" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Swarm Spider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Tiny Bird" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Tower Boss" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Tower Ghast" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Tower Golem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Tower Termite" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Troll" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Twilight Kobold" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Twilight Lich" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Twilight Wraith" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Unstable Ice Core" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Upper Goblin Knight" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Wild Boar" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Wild Deer" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.WinterWolf" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Yeti" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "TwilightForest.Yeti Boss" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.AnvilGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.ArmorColossus" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.ArmorGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.BoundSoul" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.BrickTurret" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.ChestEnderGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.ChestGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.ChestTrappedGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.FireTurret" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.FireballTurret" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.FurnaceGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.GatlingTurret" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.GhastTurret" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.GildedGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.JukeboxGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.KillerTurret" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.LanternGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.MelonGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.ObsidianColossus" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.ObsidianGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.ObsidianTurret" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.Scarecrow" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.ShotgunTurret" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.SniperTurret" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.SnowTurret" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.SteamGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.StoneColossus" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.StoneGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.StoneLargeGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.StoneTurret" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.UMIronGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.UMSnowGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.VolleyTurret" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "UtilityMobs.WorkbenchGolem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Villager = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              VillagerGolem = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "WarpTheory.creeperFake" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "WarpTheory.creeperPassive" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "WarpTheory.doppelganger" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "WarpTheory.phantom" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "WarpTheory.taintSheepSafe" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Witch = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              WitherBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Wolf = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Zombie = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "adventurebackpack.rideableSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              alienBug = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              alienVillagerAR = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "aquacreeper.aquaCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              batKing = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              bigChickenFriendly = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "chisel.snowman" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "computronics.swarm" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              constructStaballoy = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "enderzoo.ConcussionCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "enderzoo.DireSlime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "enderzoo.DireWolf" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "enderzoo.Enderminy" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "enderzoo.FallenKnight" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "enderzoo.FallenMount" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "enderzoo.WitherCat" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "enderzoo.WitherWitch" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "etfuturum.brown_mooshroom" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "etfuturum.ender_dragon" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "etfuturum.endermite" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "etfuturum.fox" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "etfuturum.husk" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "etfuturum.rabbit" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "etfuturum.shulker" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "etfuturum.snow_golem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "etfuturum.stray" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "etfuturum.villager_zombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "etfuturum.wooden_armorstand" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "gadomancy.FakePlayerEntity" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "lootgames.LootGamesChessBishop" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "lootgames.LootGamesChessKing" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "lootgames.LootGamesChessKnight" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "lootgames.LootGamesChessPawn" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "lootgames.LootGamesChessQueen" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "lootgames.LootGamesChessRook" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "miscutils.AusBoar" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "miscutils.AusDingo" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "miscutils.AusOctopus" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "miscutils.AusSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "miscutils.batKing" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "miscutils.bigChickenFriendly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "miscutils.constructStaballoy" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "miscutils.sickBlaze" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              osirisBoss = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              porcodon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              robotVillager = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              sentryRobot = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              sickBlaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.attackbat" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.babayaga" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.banshee" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.cat" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.corpse" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.covenwitch" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.darkmark" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.death" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.deathhorse" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.demon" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.ent" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.eye" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.familiar" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.follower" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.goblin" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.goblingulg" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.goblinmog" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.hellhound" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.hornedHuntsman" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.illusionCreeper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.illusionSpider" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.illusionZombie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.imp" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.leonard" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.lilith" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.lordoftorment" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.lostsoul" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.louse" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.mandrake" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.mindrake" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.mirrorface" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.nightmare" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.owl" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.poltergeist" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.reflection" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.spectre" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.spirit" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.toad" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.treefyd" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.vampire" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.villageguard" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.werevillager" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.wingedmonkey" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.witchhunter" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "witchery.wolfman" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              witherSkeleton = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        wimpysettings = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              IDontLikeFun = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              RespawnWithDebuff = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              UseFancyBoundArmour = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              allowPotionRepair = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              causeHungerChatMessage = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              causeHungerWithRegen = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              disableBoundToolsRightClick = lib.mkOption {
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
